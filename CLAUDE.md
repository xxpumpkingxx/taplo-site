# Taplo Site — Claude Code Instructions

## What this is
Landing page for Taplo, a digital loyalty platform for cafes in Bali.
Hosted on Vercel, auto-deploys from this GitHub repo on every push to main.

## Architecture
- index.html — Consumer homepage (get your pass, how it works, venues)
- cafes.html — Merchant subpage (benefits, dashboard preview, contact)
- favicon.svg — Logo icon (concentric circles)
- vercel.json — Routing config
- deploy.sh — Run after every edit to push live

## Design system
- Headline font: DM Serif Display (serif)
- Body font: Plus Jakarta Sans (sans)
- Primary: #005235, Container: #1B6B4A (forest green)
- Accent/Secondary: #AB3500 (burnt orange)
- Surface: #FDF9F3 (coconut cream canvas)
- Text: #1A1A2E (charcoal, never pure black)
- Tailwind CDN with custom config in each HTML file
- Grain texture overlay at 3% opacity (SVG noise filter)
- No borders on cards — use background color shifts only
- Buttons: rounded-full with primary bg
- Cards: rounded-[2rem] with border-outline-variant/10
- Material Symbols Outlined for icons

## Workflow rules
- After EVERY file edit, run: ./deploy.sh "short description"
- Do NOT ask for confirmation before deploying
- Do NOT ask "would you like me to..." — just do it
- Keep design system consistent across all pages
- All pages need: same nav, footer, grain overlay, Tailwind config, favicon link
- Consumer site = index.html, merchant site = cafes.html

## Brand voice
- Friendly and clear, not corporate
- A well-traveled friend who knows the best cafes
- Works for 22-year-old nomads AND 65-year-old retirees
- Never say "leverage", "synergy", "ecosystem", or "disrupt"
