# TAPLO — Complete Project Context

## Brand
- **Name:** Taplo
- **Tagline:** Tap. Earn. Connect.
- **Domain:** taplo.org
- **What it is:** Digital loyalty platform for Bali's independent cafes. Replaces paper stamp cards with Apple Wallet / Google Wallet passes.
- **What it is NOT:** A payment company, a dating app, or a stored-value wallet.

## Design System (from Stitch "Editorial Naturalist")

### Colors
| Token | Hex | Usage |
|---|---|---|
| primary | #005235 | Deep green, CTAs, key actions |
| primary-container | #1B6B4A | Forest green, nav logo, card accents |
| secondary | #AB3500 | Burnt orange, accent labels, highlights |
| secondary-fixed | #FFDBD0 | Light peach, badge backgrounds |
| on-secondary-fixed | #390C00 | Dark text on peach badges |
| surface | #FDF9F3 | Coconut cream, main background |
| surface-container-low | #F7F3ED | Slightly darker cream, section bgs |
| surface-container | #F1EDE7 | Card backgrounds |
| surface-container-high | #EBE8E2 | Hover states, input fields |
| surface-container-highest | #E6E2DC | Emphasized cards, CTA sections |
| surface-container-lowest | #FFFFFF | White cards on cream bg |
| on-surface | #1C1C18 | Primary text (near-black, never pure black) |
| on-surface-variant | #3F4943 | Secondary text, descriptions |
| on-primary | #FFFFFF | White text on green buttons |
| on-primary-container | #9CE9BF | Light green text on dark green |
| outline | #6F7A72 | Muted icons, tertiary text |
| outline-variant | #BFC9C0 | Borders at 10-20% opacity only |
| charcoal | #1A1A2E | Headlines, never use pure black |

### Typography
- **Headlines:** DM Serif Display (serif)
- **Body/UI:** Plus Jakarta Sans (sans)
- **Monospace:** JetBrains Mono (for codes/IDs)
- Load via: `https://fonts.googleapis.com/css2?family=DM+Serif+Display:ital@0;1&family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap`

### Icons
- Google Material Symbols Outlined
- Use filled variant for emphasis: `style="font-variation-settings:'FILL' 1"`

### Design Rules
1. **No borders on cards** — use background color shifts (surface-container-lowest on surface)
2. **Grain texture overlay** at 3% opacity on every page (SVG noise filter, position:fixed, pointer-events:none, z-index:9999)
3. **Buttons:** rounded-full (pill shape), primary bg, on-primary text
4. **Cards:** rounded-[2rem], border-outline-variant/10
5. **Never use pure black** — use charcoal #1A1A2E
6. **Section labels:** uppercase, letter-spacing: widest, text-xs, font-bold, secondary color
7. **Glass nav:** bg-[#fdf9f3]/80 backdrop-blur-lg
8. **Shadows:** Use ambient shadows (shadow-xl, shadow-primary/20), not hard borders
9. **Using Tailwind CDN** with custom color config in script tag

### Grain Overlay (include on every page)
```css
.grain-overlay {
  position: fixed;
  top: 0; left: 0;
  width: 100%; height: 100%;
  pointer-events: none;
  z-index: 9999;
  opacity: 0.03;
  background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 200 200' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='noiseFilter'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.65' numOctaves='3' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23noiseFilter)'/%3E%3C/svg%3E");
}
```

### Tailwind Config (include in every HTML page)
```javascript
tailwind.config = {
  darkMode: "class",
  theme: {
    extend: {
      colors: {
        "tertiary-container": "#5d5c73",
        "on-secondary": "#ffffff",
        "secondary": "#ab3500",
        "surface-container-high": "#ebe8e2",
        "surface-container-highest": "#e6e2dc",
        "surface-container": "#f1ede7",
        "outline": "#6f7a72",
        "on-primary-fixed": "#002113",
        "on-background": "#1c1c18",
        "surface-container-low": "#f7f3ed",
        "primary-fixed": "#a6f3c9",
        "on-surface-variant": "#3f4943",
        "primary-container": "#1b6b4a",
        "secondary-container": "#fe6a34",
        "on-surface": "#1c1c18",
        "surface-container-lowest": "#ffffff",
        "surface": "#fdf9f3",
        "surface-bright": "#fdf9f3",
        "outline-variant": "#bfc9c0",
        "on-secondary-container": "#5d1900",
        "surface-tint": "#1b6b4a",
        "primary": "#005235",
        "on-primary": "#ffffff",
        "secondary-fixed": "#ffdbd0",
        "on-secondary-fixed": "#390c00",
        "on-primary-container": "#9ce9bf",
        "background": "#fdf9f3",
        "error": "#ba1a1a",
      },
      fontFamily: {
        "headline": ["DM Serif Display"],
        "body": ["Plus Jakarta Sans"],
      },
      borderRadius: {"DEFAULT": "0.25rem", "lg": "0.5rem", "xl": "0.75rem", "full": "9999px"},
    },
  },
}
```

## Logo
- **Wordmark:** "taplo" in lowercase DM Serif Display, forest green (#1B6B4A)
- **Icon mark:** Concentric ripple circles (the "o" in taplo) — represents NFC tap / coffee cup from above
- **App icon:** Concentric circles on forest green (#1B6B4A) rounded square
- **Favicon:** SVG with concentric circles on green (already at /favicon.svg)
- **Contexts:** white on green, green on cream, green on white, white on charcoal

## Site Architecture
- **/** (index.html) — Consumer homepage
  - Hero: "Never lose a free coffee again." + "Get Your Free Pass" CTA
  - How It Works: Scan QR → Pass saves to Wallet → Free coffee on autopilot
  - Venues: Coffee Shops, Brunch Spots, Coworking Cafes
  - Coming Soon: "Send someone a coffee."
  - Final CTA: "Add to Apple Wallet"
- **/cafes.html** — Merchant page (linked from "For Cafes →" in nav)
  - Hero: "Turn first-timers into regulars."
  - 6 benefit cards: Analytics, Instant Onboarding, Win-back Notifications, Zero Hardware, More Repeat Visits, You Set the Rules
  - Dashboard mockup preview
  - Contact: WhatsApp + email CTAs
  - NO pricing anywhere
- **/favicon.svg** — Logo icon
- **/vercel.json** — Routing config
- **/deploy.sh** — Run after every edit to push live

## Future Pages to Build
- **/about** — Mission, the team, why Bali
- **/privacy** — Privacy policy (needed for App Store, PDP Law compliance)
- **/terms** — Terms of service
- **/merchants/onboarding** — Step-by-step merchant sign-up flow

## Copy Guidelines
- Consumer-first language. "You" = the coffee drinker, not the cafe owner.
- Friendly, clear, not corporate. A well-traveled friend who knows the best spots.
- Works for 22-year-old digital nomads AND 65-year-old retirees.
- Never say: "leverage", "synergy", "ecosystem", "disrupt", "revolutionary"
- Use Bahasa naturally where it fits: "Terima kasih!", "Selamat pagi"
- Every CTA should be action-oriented: "Get Your Free Pass", not "Learn More"

## Business Context (for copy decisions)

### What Taplo does
1. Consumer scans QR at cafe counter
2. Taplo pass installs in Apple Wallet / Google Wallet (no app download)
3. Each visit, barista scans customer's pass QR code
4. After X visits (e.g. 5), free reward unlocks automatically
5. Pass updates in real-time showing progress

### Phasing (what exists when)
- **Phase 1 (now):** Loyalty only. QR-based check-in. Merchant dashboard. No payments.
- **Phase 2 (later):** iOS app. "Send a Coffee" gifting via licensed payment partner (Xendit/Midtrans). Push notifications.
- **Phase 3 (much later):** Community features. Venue discovery. Coffee invitations. Events.

### What Taplo is NOT
- NOT a payment company (never holds customer money)
- NOT a dating app (community features are venue-centric, not profile-centric)
- NOT an e-money issuer (rewards funded by merchants, not Taplo balances)

### Target market
- Independent cafes in Canggu, Berawa, Pererenan, Seminyak, Ubud
- Consumers: digital nomads, expats, local Balinese, tourists
- Currently launching in Canggu first

### Merchant value prop
- See who comes back (analytics)
- Customers join in 3 seconds (no app download)
- Win-back notifications (push to lock screen)
- Zero hardware needed (use existing phone/tablet)
- You set the rules (configurable rewards)
- Free during launch period

## Workflow Rules
- After EVERY file edit, run: ./deploy.sh "short description"
- Do NOT ask for confirmation before deploying
- Do NOT ask "would you like me to..." — just do it
- Keep design system consistent across all pages
- All pages need: same nav, footer, grain overlay, Tailwind config, favicon link
- Consumer site = index.html, merchant site = cafes.html
