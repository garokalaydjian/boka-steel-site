# BOKA Steel — Website Brief

Shared source of truth for this build. Read this in full before starting. This is a real client job, not a demo — ground everything in the facts below, no invented claims.

## Company facts (do not alter)
- Name: BOKA Steel
- Location: Industrial City, Baouchrieh, Lebanon
- Phone / WhatsApp: +961 79 364 052 (wa.me link format: `https://wa.me/96179364052`)
- Instagram: @Boka_Steel (1,018 followers)
- What they do: custom steel fabrication — laser cutting, powder coating, welding, and custom steel work. Delivery all over Lebanon.
- Real product line seen in their Instagram: X-base steel dining/coffee tables with interchangeable tops (wood/glass/marble — see `assets/steel_signage.jpg`), designer upholstered chairs with black steel/wood frames, nesting coffee tables, and architectural laser-cut steel gates with brass hardware and Greek-key trim patterns.

## Brand assets (already downloaded, real — use these, do not invent placeholder photography)
All in `assets/`, each with a matching `.b64` file containing a single-line base64 string of that exact image for inlining as `data:image/jpeg;base64,...`:
- `avatar.jpg` — BOKA Steel logo badge (dark hexagon, steel beam + welding spark, "BOKA STEEL" wordmark)
- `steel_signage.jpg` — real product card showing Wood/Glass/Marble top options on their X-base table — great for the "choose a top material" concept and for the Order hub
- `product1.jpg` — upholstered armchair, black steel/wood frame
- `product2.jpg` — nesting coffee tables, black steel with circular tops
- `product3.jpg` — coffee table in a styled living room
- `product4.jpg` — ornate laser-cut steel gate, brass handles, Greek-key trim (great for Laser Cutting + Gates)
- `product5.jpg` — architectural vertical-slat steel gate on a residential building (great for Laser Cutting + Gates + Welding)

## Photo assignment — CORRECTED 2026-08-24 (client caught a real mistake: product glamour shots had been placed under Services, e.g. a chair photo under "Powder Coating." Services need real PROCESS photos, not finished-product photos.)

**Services — real process photos, now found and downloaded, tokens ready to use:**
- `assets/svc_powdercoating.jpg` / `{{IMG_SVC_POWDERCOATING}}` — real still from a BOKA Steel Instagram reel: a spray gun electrostatically applying powder coat to a round tabletop in the booth, visible powder cloud. Use for Powder Coating hero/gallery. Real reel: `https://www.instagram.com/boka_steel/reel/DUYAZQxjWQh/`
- `assets/svc_welding.jpg` / `{{IMG_SVC_WELDING}}` — real still: a welder in a BOKA STEEL branded shirt, mid-weld, sparks flying, welding helmet on. Use for Welding hero/gallery. Real reel: `https://www.instagram.com/boka_steel/reel/DUX_rMeDZBg/`
- `assets/svc_lasercutting.jpg` / `{{IMG_SVC_LASERCUTTING}}` — still from the client-confirmed Laser Cutting reel (a talking-head service intro clip — use as the hero image, it's confirmed real/correct content even though the frame itself isn't an action shot). Real reel: `https://www.instagram.com/boka_steel/reel/DUYAAwFDS61/`
- **Sandblasting: still no real photo available** — none of the publicly accessible Instagram content shows it. Keep the illustrated line-art process graphic here for now (per the original plan below) rather than reusing an unrelated photo. Ask the client for one when they can.

Do NOT use `{{IMG_CHAIR}}`, `{{IMG_NEST}}`, `{{IMG_LIVING}}`, `{{IMG_GATE1}}`, `{{IMG_GATE2}}`, or `{{IMG_SIGNAGE}}` anywhere in the Services section — those are finished PRODUCT photos, they belong only in the Order/Customized-Item catalogue (see below), never as service illustrations, even though the products shown were technically made using that service. This was the mistake to fix.

**Order/Customized-Item catalogue — the existing product tokens are correctly used here as generic representative photos** (client confirmed placeholder products are fine "just to test the website," real per-product photos come later): `{{IMG_SIGNAGE}}`/`{{IMG_CHAIR}}` → Tables/Chairs, `{{IMG_NEST}}`/`{{IMG_LIVING}}` → Tables, `{{IMG_GATE1}}`/`{{IMG_GATE2}}` → Gates. No changes needed to this part.

**Wall Art — real reference designs found on @creartivelb (a Lebanese steel decor/customization studio), tokens ready:**
- `assets/wallart_ribbon_black.jpg` / `{{IMG_WALLART_RIBBON}}` — a sculptural folded-ribbon wall piece, matte black
- `assets/wallart_colorblock_clock.jpg` / `{{IMG_WALLART_COLORBLOCK}}` — a Mondrian-style geometric wall clock made of distinct colored steel blocks — an excellent real example of the "multiple pieces, each independently colored" concept the Wall Art configurator itself offers
- `assets/wallart_multicolor_sculpture.jpg` / `{{IMG_WALLART_SCULPTURE}}` — a bold multi-piece, multi-color abstract wall sculpture
- `assets/wallart_ribbon_bronze.jpg` / `{{IMG_WALLART_BRONZE}}` — the same ribbon form as the black one, in a bronze/copper finish, showing the same design in a different colorway
Use these as the design-picker photos and/or gallery examples for the Wall Art category — they're reference/inspiration photos from a different real steel-decor studio, not BOKA's own work, so caption them honestly (e.g. "reference designs" / "inspiration") rather than implying BOKA made them, unless the client says otherwise.

No real photography exists yet for the sandblasting *process* (the workshop floor) — represent it with clean line-art/illustrated process graphics (CSS/SVG), clearly a designed illustration, not a fake stock photo. Never source or fabricate photos claiming to be real workshop photos.

## Design system (REVISED per client feedback 2026-08-24 — supersedes any earlier dark/black+gold version)
Client explicitly rejected the black-and-gold dark scheme: "colors are very bad black and gold make it off white and something premium luxury and easy for the eye." New direction: light, warm off-white ground, refined brass/gold used only as an accent (not a base color), dark warm-charcoal ink for text. Still single-theme (this is the deliberate brand world, not a light/dark toggle) — paint background and all colors explicitly.

- `--ground: #f5f2ea` (warm ivory/off-white — the dominant surface)
- `--surface: #ffffff` (card backgrounds, lifted above ground)
- `--surface-2: #ece7db` (deeper warm neutral for footer/section breaks)
- `--line: #e2dccb` (hairline borders/dividers)
- `--ink: #211d15` (warm near-black — headings and body text; text is dark-on-light, only the *background* scheme changed)
- `--muted: #6b6455` (secondary/caption text)
- `--brass: #a67c2e` (accent only — buttons, links, active states, swatch borders; matches the logo's gold ring and the gates' brass hardware, deepened so it holds contrast on a light ground)
- `--brass-deep: #7c5c1f` (hover/pressed brass)
- `--accent-ink: #ffffff` (text on filled brass buttons)

Do not reach for the generic "warm cream + serif + terracotta" AI-default look — keep the industrial character: condensed display face (not serif), brass/gold (not terracotta), plenty of whitespace so it reads premium/easy-on-the-eye rather than busy.

Type: Google Fonts only (`https://fonts.googleapis.com/css2?family=Big+Shoulders+Display:wght@600;700;800&family=IBM+Plex+Sans:wght@400;500;600&family=IBM+Plex+Mono:wght@400;500&display=swap`)
- Display/headings: **Big Shoulders Display** (condensed industrial face — steel-beam character, fits the brand, not a generic default)
- Body: **IBM Plex Sans**
- Utility/labels/specs/dimensions: **IBM Plex Mono** (uppercase, letter-spaced — used for material/color chip labels, dimension inputs, nav eyebrows)

Layout: photography-led lookbook feel, not a generic e-commerce grid. Real photos get room to breathe. Avoid: purple/blue gradients, emoji as section markers, `rounded-lg` everywhere, generic centered hero.

## Site structure (do not change this concept — it is final)

**Home** — first thing a visitor sees is exactly two large choices, nothing else competing for attention: **Services We Offer** and **Order Your Customized Item**. Logo — use the REAL logo badge downloaded from their Instagram at `assets/avatar.jpg` / `{{IMG_LOGO}}` (dark hexagon, steel beam + welding spark, "BOKA STEEL" wordmark) in the actual logo placement, not a text substitute. Contact strip in header or footer with FOUR elements, each with its own small icon placed BEFORE the text (client-specified 2026-08-24, confirmed again with explicit icon placement 2026-08-24):
1. **WhatsApp icon**, then the phone number, as an actual WhatsApp button (not plain text) — linking to `https://wa.me/96179364052`
2. **Instagram icon**, then the @ handle — linking to `https://www.instagram.com/boka_steel`
3. **Location-pin icon**, then the address ("Industrial City, Baouchrieh, Lebanon") — with a Google Maps link right next to it, the client's real map link: `https://maps.app.goo.gl/aa7C5P9eMqEZszqe7`
4. **Delivery/truck icon**, then "Delivery all over Lebanon"

Build these as small inline SVG icons (line-art, matching the brand's illustrated icon style already used for the service icons) — not emoji, not an external icon font/CDN (CSP blocks external scripts).

**1. Services We Offer** → grid of 4 services → each opens a detail page with: hero image, explanation, process/details, example gallery (use real photos where they fit — gates for laser cutting/welding, furniture for finishing quality), and a **Request a Quotation** button.
- Powder Coating
- Welding
- Laser Cutting
- Sandblasting

**2. Order Your Customized Item** — interactive catalogue, THREE levels deep (revised 2026-08-25 per client — not flat category→3 designs anymore): **Main Category → Subcategory → Design → Configurator**. Full taxonomy (9 main categories, defined as the `CATALOGUE` JS object in `vera-template.html`, source of truth — don't hand-duplicate this list elsewhere, read it from the code):

- **Tables**: Dining Tables, Coffee Tables, Console Tables, Side Tables
- **Seating**: Dining Chairs, Armchairs, Bar Stools, Benches
- **Bars**: Bar Tables, Bar Counters
- **Gates**: Driveway Gates, Pedestrian Gates
- **Doors**: Entrance Doors, Interior Doors
- **Beds**: Bed Frames, Headboards
- **Storage & Dividers**: Closets & Wardrobes, Shelving Units, Room Separators
- **Wall Art & Decor**: Geometric Wall Art, Custom Portraits, Pet Portraits, Clocks
- **Railings**: Staircase Railings, Balcony Railings

Each subcategory has 3 named design options (also in `CATALOGUE`). Screens: `#screen-order` (9 main categories, rendered by `renderMainCategories()`) → `#screen-subcategory` (that category's subcategories, `renderSubcategories()`) → `#screen-category` (that subcategory's 3 designs, `renderDesigns()`) → `#screen-configurator`. Nav uses event delegation (`document.addEventListener('click', ...)` checking `.closest('[data-nav-target]')`), NOT a static NodeList captured at load — this matters because all three grids are JS-rendered after page load, so a pre-captured static list would miss them. Preserve this pattern when wiring the configurator; don't revert to static nav wiring.

Configurator, once a design is chosen:
- Quantity (add/remove items, e.g. "Table 1", "Table 2", each configured independently)
- Per item: dimensions (width/length/height as relevant to the product), **frame/body color** (RAL swatches, see below), and for Tables/Bars only: **top material** — Steel / Wood / Glass / Ceramic / Marble, each visually distinct in the live preview
- **Live preview updates instantly** on every change — size, material, and color — built as a real parametric CSS 3D preview (not static photos), so it works for *any* combination the customer picks. Include a drag-to-rotate control so they can view it from different angles.
- Wall Art is a special case: a design is made of multiple individual pieces (e.g. 6). The customer picks a color **per piece**, and the live preview shows all pieces together, updating the instant any one piece's color changes.
- Every configurator ends in **Request a Quotation**, which auto-compiles everything picked (design, quantity, every item's full spec) into a summary — the customer should never have to retype their selections. Two ways to send it: a **Send via WhatsApp** button that opens `https://wa.me/96179364052?text=<the encoded summary>`, and a simple name/phone field before sending.

RAL color palette (starter set only — label it clearly as a starter palette, the client will supply their full RAL chart later):
- RAL 9005 Jet Black `#0a0a0a`
- RAL 9010 Pure White `#f2f1ec`
- RAL 7016 Anthracite Grey `#383e42`
- RAL 8017 Chocolate Brown `#442f29`
- RAL 3020 Traffic Red `#c1121c`
- RAL 6005 Moss Green `#0f4c3a`
- Brushed Gold (custom, matches brand brass) `#c9a227`
- Bronze (custom) `#7c5a35`

Top materials (Tables/Bars only) — represent each as a distinct CSS treatment (gradient/texture), not a flat color: Steel (brushed grey), Wood/Walnut (grain), Glass/Smoked (translucent dark with a highlight streak), Ceramic (pale fleck), Marble (veined).

Build the configurator engine generically (a data-driven product-type config, not six copy-pasted implementations) so more categories/options can be added later without a rewrite.

## Your specific task
See the separate task you were given by the manager — this brief is shared context, not your assignment. Work only in `C:\Users\Garo K\Desktop\AI\boka-steel-site\`.
