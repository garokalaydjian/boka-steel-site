#!/usr/bin/perl
use strict; use warnings;
use JSON::PP;

my $dir = 'C:\Users\Garo K\Desktop\AI\boka-steel-site';

sub slurp {
  my ($path) = @_;
  local $/;
  open(my $fh, "<:encoding(UTF-8)", $path) or die "$path: $!";
  my $c = <$fh>;
  close $fh;
  return $c;
}

sub flatten {
  my ($node, $prefix, $out) = @_;
  if (ref($node) eq 'HASH') {
    for my $k (sort keys %$node) {
      flatten($node->{$k}, $prefix eq '' ? $k : "$prefix.$k", $out);
    }
  } elsif (ref($node) eq 'ARRAY') {
    my $i = 1;
    for my $v (@$node) {
      flatten($v, "$prefix\[$i]", $out);
      $i++;
    }
  } else {
    $out->{$prefix} = $node;
  }
  return $out;
}

sub slurp_raw {
  my ($path) = @_;
  local $/;
  open(my $fh, "<:raw", $path) or die "$path: $!";
  my $c = <$fh>;
  close $fh;
  return $c;
}

my $v1 = decode_json(slurp_raw("$dir\\isla-content.json"));
my $v2 = decode_json(slurp_raw("$dir\\isla-content-v2.json"));
my %flat1 = %{ flatten($v1, '', {}) };
my %flat2 = %{ flatten($v2, '', {}) };

my $html = slurp("$dir\\index.html");

my $changed = 0; my $unchanged = 0; my @warnings;
for my $key (sort keys %flat2) {
  next unless exists $flat1{$key};
  my $old = $flat1{$key};
  my $new = $flat2{$key};
  next if $old eq $new;
  my $count = () = $html =~ /\Q$old\E/g;
  if ($count == 0) {
    push @warnings, "NOT FOUND in index.html: $key";
    next;
  }
  if ($count > 1) {
    push @warnings, "AMBIGUOUS ($count matches) for: $key";
  }
  $html =~ s/\Q$old\E/$new/g;
  $changed++;
}

open(my $out, ">:encoding(UTF-8)", "$dir\\index.html") or die $!;
print $out $html;
close $out;

print "keys changed+applied: $changed\n";
print "warnings: " . scalar(@warnings) . "\n";
print "$_\n" for @warnings;
