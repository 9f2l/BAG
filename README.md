# BAG: Freelancer Starter Kit store (English + Arabic)

A low-cost, hands-off digital product store aimed at freelancers in Qatar and the GCC.

- `site/index.html`: bilingual (English / Arabic, RTL) landing page with a free hourly-rate calculator (QAR, SAR, AED, KWD, OMR, BHD, USD) and a buy button.
- `product/en`, `product/ar`: the templates customers receive (proposal, contract, onboarding checklist, invoice).
- `dist/freelancer-starter-kit.zip`: the zip you upload as the product. Rebuild with `./build.ps1`.
- `promo/`: content plans for promotion.
- `assets/`: cover and thumbnail images for the product page.

## Go live

1. **Payments.** You need a payment platform that can pay out to your country. Gumroad did not accept a Qatar bank account. Check Lemon Squeezy or a GCC gateway (MyFatoorah, Tap) and confirm what each requires.
2. **Buy link.** Replace `BUY_LINK_PLACEHOLDER` in `site/index.html` (appears twice) with your product URL.
3. **Publish.** GitHub Pages deploys `site/` through `.github/workflows/pages.yml` (needs a public repo on a free account).
4. **Traffic.** No visitors means no sales. See `promo/`.

## Legal note

Qatar introduced an e-commerce licensing rule in 2026 for commercial online selling. Check with the Ministry of Commerce and Industry whether and when it applies to you before taking payments. The contract template is general, not legal advice.