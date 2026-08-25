#!/usr/bin/perl
use strict; use warnings;
use JSON::PP;

my $dir = 'C:\Users\Garo K\Desktop\AI\boka-steel-site';

sub slurp_raw {
  my ($path) = @_;
  local $/;
  open(my $fh, "<:raw", $path) or die "$path: $!";
  my $c = <$fh>;
  close $fh;
  return $c;
}
sub slurp_utf8 {
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
  } else {
    $out->{$prefix} = $node;
  }
  return $out;
}

my $content = decode_json(slurp_raw("$dir\\isla-content-v2.json"));
my %flat = %{ flatten($content, '', {}) };

my $html = slurp_utf8("$dir\\vera-template.html");

my $filled = 0;
for my $key (sort keys %flat) {
  my $val = $flat{$key};
  my $qkey = quotemeta($key);
  my $n = ($html =~ s/(data-copy="$qkey"[^>]*>)[^<]*/$1$val/);
  $filled += $n;
}

my %imgmap = (
  IMG_LOGO    => "assets\\avatar.b64",
  IMG_SIGNAGE => "assets\\steel_signage.b64",
  IMG_CHAIR   => "assets\\product1.b64",
  IMG_NEST    => "assets\\product2.b64",
  IMG_LIVING  => "assets\\product3.b64",
  IMG_GATE1   => "assets\\product4.b64",
  IMG_GATE2   => "assets\\product5.b64",
  IMG_SVC_POWDERCOATING => "assets\\svc_powdercoating.b64",
  IMG_SVC_WELDING       => "assets\\svc_welding.b64",
  IMG_SVC_LASERCUTTING  => "assets\\svc_lasercutting_real.b64",
  IMG_SVC_SANDBLASTING  => "assets\\svc_sandblasting.b64",
  IMG_WALLART_SCULPTURE     => "assets\\wallart_multicolor_sculpture.b64",
  IMG_WALLART_CLOCK         => "assets\\wallart_colorblock_clock.b64",
  IMG_WALLART_RIBBON_BLACK  => "assets\\wallart_ribbon_black.b64",
  IMG_WALLART_RIBBON_BRONZE => "assets\\wallart_ribbon_bronze.b64",
);
for my $token (keys %imgmap) {
  my $b64 = slurp_raw("$dir\\$imgmap{$token}");
  $html =~ s/\{\{$token\}\}/$b64/g;
}

open(my $out, ">:encoding(UTF-8)", "$dir\\live-preview.html") or die $!;
print $out $html;
close $out;

open(my $out2, ">:encoding(UTF-8)", "$dir\\index.html") or die $!;
print $out2 $html;
close $out2;

my $remaining_tokens = () = $html =~ /\{\{IMG_\w+\}\}/g;
my $remaining_copy = () = $html =~ /data-copy="[^"]+"\s*>\s*</g;
print "data-copy slots filled: $filled\n";
print "remaining image tokens: $remaining_tokens\n";
print "remaining empty data-copy slots: $remaining_copy\n";
