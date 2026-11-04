<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
<title>NovaMart — Shop smarter, every day</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
  /* ============ DESIGN TOKENS ============ */
  :root {
    --bg:            #f6f7fb;
    --surface:       #ffffff;
    --surface-alt:   #f1f3f9;
    --text:          #0f172a;
    --text-muted:    #5b6478;
    --border:        #e3e7f0;
    --brand:         #4f46e5;
    --brand-dark:    #4338ca;
    --brand-soft:    #eef0ff;
    --success:       #0f9d58;
    --danger:        #d92d20;
    --radius-sm:     10px;
    --radius:        16px;
    --radius-lg:     24px;
    --shadow-sm:     0 1px 2px rgba(15,23,42,.06);
    --shadow-md:     0 10px 28px rgba(15,23,42,.09);
    --shadow-lg:     0 28px 60px rgba(15,23,42,.20);
    --ring:          0 0 0 3px rgba(79,70,229,.35);
    --ease:          cubic-bezier(.4,0,.2,1);
  }

  /* ============ RESET ============ */
  * { margin:0; padding:0; box-sizing:border-box; }
  html { scroll-behavior:smooth; -webkit-text-size-adjust:100%; }
  body {
    font-family:'Plus Jakarta Sans', system-ui, -apple-system, 'Segoe UI', sans-serif;
    background:var(--bg);
    color:var(--text);
    line-height:1.55;
    -webkit-font-smoothing:antialiased;
  }
  img { max-width:100%; display:block; }
  button, input, select { font:inherit; color:inherit; }
  button { cursor:pointer; background:none; border:none; }
  a { color:inherit; text-decoration:none; }
  [hidden] { display:none !important; }

  :focus-visible {
    outline:none;
    box-shadow:var(--ring);
    border-radius:var(--radius-sm);
  }

  .sr-only {
    position:absolute; width:1px; height:1px;
    padding:0; margin:-1px; overflow:hidden;
    clip:rect(0 0 0 0); white-space:nowrap; border:0;
  }

  .skip-link {
    position:absolute; left:16px; top:-60px; z-index:100;
    background:var(--brand); color:#fff; padding:12px 20px;
    border-radius:0 0 var(--radius-sm) var(--radius-sm);
    font-weight:600; transition:top .2s var(--ease);
  }
  .skip-link:focus { top:0; }

  .container { width:min(1200px, 100%); margin-inline:auto; padding-inline:20px; }

  /* ============ BUTTONS ============ */
  .btn {
    display:inline-flex; align-items:center; justify-content:center; gap:8px;
    min-height:48px; padding:0 24px;
    border-radius:999px; font-weight:700; font-size:.95rem;
    transition:transform .15s var(--ease), background .2s var(--ease), box-shadow .2s var(--ease);
    white-space:nowrap;
  }
  .btn:active { transform:scale(.97); }
  .btn-primary { background:var(--brand); color:#fff; box-shadow:0 6px 18px rgba(79,70,229,.28); }
  .btn-primary:hover { background:var(--brand-dark); }
  .btn-ghost { background:var(--surface); color:var(--text); border:1.5px solid var(--border); }
  .btn-ghost:hover { border-color:#c9cfe0; background:var(--surface-alt); }

  /* ============ HEADER ============ */
  .site-header {
    position:sticky; top:0; z-index:40;
    background:rgba(255,255,255,.88);
    backdrop-filter:saturate(180%) blur(14px);
    -webkit-backdrop-filter:saturate(180%) blur(14px);
    border-bottom:1px solid var(--border);
  }
  .header-inner {
    display:flex; align-items:center; flex-wrap:wrap;
    gap:12px 20px; padding-block:12px;
  }

  .brand { display:flex; align-items:center; gap:10px; flex-shrink:0; }
  .brand-mark {
    width:40px; height:40px; display:grid; place-items:center;
    border-radius:12px; color:#fff; font-size:1.05rem;
    background:linear-gradient(135deg, #6366f1, #4338ca);
    box-shadow:0 6px 16px rgba(79,70,229,.32);
  }
  .brand-name { font-size:1.2rem; font-weight:800; letter-spacing:-.02em; }
  .brand-name span { color:var(--brand); }

  .search-wrap {
    position:relative; flex:1 1 320px; min-width:0;
  }
  .search-wrap .search-icon {
    position:absolute; left:18px; top:50%; transform:translateY(-50%);
    color:var(--text-muted); font-size:.9rem; pointer-events:none;
  }
  .search-wrap input {
    width:100%; height:48px;
    padding:0 18px 0 46px;
    border-radius:999px;
    border:1.5px solid var(--border);
    background:var(--surface-alt);
    transition:border-color .2s var(--ease), background .2s var(--ease);
  }
  .search-wrap input::placeholder { color:#98a1b5; }
  .search-wrap input:hover { border-color:#cfd5e4; }
  .search-wrap input:focus {
    background:var(--surface);
    border-color:var(--brand);
    outline:none;
    box-shadow:0 0 0 4px rgba(79,70,229,.14);
  }
  .search-wrap input::-webkit-search-cancel-button { cursor:pointer; }

  .header-actions { margin-left:auto; display:flex; align-items:center; gap:10px; }

  .cart-btn {
    position:relative; display:inline-flex; align-items:center; gap:9px;
    min-height:48px; padding:0 20px;
    border-radius:999px; font-weight:700; font-size:.95rem;
    background:var(--brand); color:#fff;
    box-shadow:0 6px 18px rgba(79,70,229,.28);
    transition:background .2s var(--ease), transform .15s var(--ease);
  }
  .cart-btn:hover { background:var(--brand-dark); }
  .cart-btn:active { transform:scale(.97); }

  .cart-count {
    display:grid; place-items:center;
    min-width:22px; height:22px; padding:0 6px;
    border-radius:999px; background:#fff; color:var(--brand);
    font-size:.75rem; font-weight:800; line-height:1;
  }
  .cart-count.pop { animation:pop .4s var(--ease); }
  @keyframes pop {
    0% { transform:scale(1); }
    40% { transform:scale(1.4); }
    100% { transform:scale(1); }
  }

  /* ============ HERO ============ */
  .hero {
    display:grid; grid-template-columns:1.15fr .85fr;
    gap:48px; align-items:center;
    padding-block:56px;
  }
  .eyebrow {
    display:inline-flex; align-items:center; gap:8px;
    background:var(--brand-soft); color:var(--brand-dark);
    font-size:.78rem; font-weight:800; letter-spacing:.06em; text-transform:uppercase;
    padding:7px 14px; border-radius:999px; margin-bottom:18px;
  }
  .hero h1 {
    font-size:clamp(1.9rem, 4.2vw, 3rem);
    line-height:1.14; letter-spacing:-.03em; font-weight:800;
    margin-bottom:16px;
  }
  .hero-sub { color:var(--text-muted); font-size:1.02rem; max-width:46ch; margin-bottom:26px; }
  .hero-cta { display:flex; flex-wrap:wrap; gap:12px; margin-bottom:28px; }

  .trust {
    display:flex; flex-wrap:wrap; gap:10px 22px;
    list-style:none; font-size:.85rem; color:var(--text-muted); font-weight:600;
  }
  .trust li { display:flex; align-items:center; gap:7px; }
  .trust i { color:var(--success); }

  .hero-art {
    display:grid; grid-template-columns:1fr 1fr; gap:14px;
    justify-self:center; width:100%; max-width:360px;
  }
  .hero-art .tile {
    aspect-ratio:1; display:grid; place-items:center;
    font-size:clamp(2rem, 5vw, 3rem);
    border-radius:var(--radius-lg);
    background:var(--surface);
    border:1px solid var(--border);
    box-shadow:var(--shadow-sm);
    transition:transform .3s var(--ease);
  }
  .hero-art .tile:nth-child(1) { background:linear-gradient(150deg,#eef2ff,#fff); transform:rotate(-4deg); }
  .hero-art .tile:nth-child(2) { background:linear-gradient(150deg,#fff1f2,#fff); transform:rotate(3deg) translateY(14px); }
  .hero-art .tile:nth-child(3) { background:linear-gradient(150deg,#ecfdf5,#fff); transform:rotate(3deg) translateY(-10px); }
  .hero-art .tile:nth-child(4) { background:linear-gradient(150deg,#fffbeb,#fff); transform:rotate(-4deg); }
  .hero-art:hover .tile { transform:rotate(0) translateY(0); }

  /* ============ SHOP ============ */
  .shop { padding-block:16px 72px; scroll-margin-top:90px; }

  .section-head { margin-bottom:22px; }
  .section-head h2 {
    font-size:clamp(1.35rem, 2.4vw, 1.75rem);
    letter-spacing:-.02em; font-weight:800; margin-bottom:16px;
  }

  .toolbar {
    display:flex; flex-wrap:wrap; align-items:center;
    gap:14px; justify-content:space-between;
  }

  .chips {
    display:flex; gap:8px; overflow-x:auto; padding-bottom:4px;
    scrollbar-width:none; -ms-overflow-style:none;
    max-width:100%;
  }
  .chips::-webkit-scrollbar { display:none; }

  .chip {
    flex-shrink:0; min-height:42px; padding:0 18px;
    border-radius:999px; font-size:.88rem; font-weight:700;
    background:var(--surface); color:var(--text-muted);
    border:1.5px solid var(--border);
    transition:all .18s var(--ease);
  }
  .chip:hover { border-color:#c9cfe0; color:var(--text); }
  .chip[aria-pressed="true"] {
    background:var(--brand); border-color:var(--brand); color:#fff;
    box-shadow:0 4px 14px rgba(79,70,229,.26);
  }

  .sort { display:flex; align-items:center; gap:10px; flex-shrink:0; }
  .sort label { font-size:.85rem; font-weight:700; color:var(--text-muted); }
  .select-wrap { position:relative; }
  .select-wrap i {
    position:absolute; right:15px; top:50%; transform:translateY(-50%);
    font-size:.72rem; color:var(--text-muted); pointer-events:none;
  }
  .select-wrap select {
    appearance:none; -webkit-appearance:none;
    min-height:44px; padding:0 40px 0 16px;
    border-radius:12px; border:1.5px solid var(--border);
    background:var(--surface); font-size:.88rem; font-weight:700;
    cursor:pointer; transition:border-color .2s var(--ease);
  }
  .select-wrap select:hover { border-color:#c9cfe0; }

  .result-count {
    font-size:.85rem; color:var(--text-muted); font-weight:600;
    margin:18px 0 16px;
  }

  /* ---- Product grid ---- */
  .product-grid {
    display:grid;
    grid-template-columns:repeat(auto-fill, minmax(228px, 1fr));
    gap:20px;
  }

  .card {
    display:flex; flex-direction:column;
    background:var(--surface);
    border:1px solid var(--border);
    border-radius:var(--radius);
    overflow:hidden;
    box-shadow:var(--shadow-sm);
    transition:transform .22s var(--ease), box-shadow .22s var(--ease), border-color .22s var(--ease);
  }
  .card:hover {
    transform:translateY(-4px);
    box-shadow:var(--shadow-md);
    border-color:#d6dcf0;
  }

  .card-media {
    position:relative;
    aspect-ratio:4 / 3;
    display:grid; place-items:center;
    font-size:3.2rem;
    border-bottom:1px solid var(--border);
  }
  .badge {
    position:absolute; top:12px; left:12px;
    background:rgba(15,23,42,.86); color:#fff;
    font-size:.68rem; font-weight:800; letter-spacing:.05em; text-transform:uppercase;
    padding:5px 10px; border-radius:999px;
    backdrop-filter:blur(4px);
  }

  .card-body {
    display:flex; flex-direction:column; gap:7px;
    padding:16px; flex:1;
  }
  .card-cat {
    font-size:.72rem; font-weight:800; letter-spacing:.08em;
    text-transform:uppercase; color:var(--brand);
  }
  .card-title {
    font-size:.98rem; font-weight:700; line-height:1.35;
    letter-spacing:-.01em;
    display:-webkit-box; -webkit-line-clamp:2; -webkit-box-orient:vertical;
    overflow:hidden; min-height:2.7em;
  }
  .card-rating {
    display:flex; align-items:center; gap:6px;
    font-size:.82rem; font-weight:700; color:var(--text-muted);
  }
  .card-rating i { color:#f5a623; font-size:.78rem; }
  .card-rating span { font-weight:600; color:#98a1b5; }

  .card-foot {
    display:flex; align-items:center; justify-content:space-between;
    gap:10px; margin-top:auto; padding-top:8px;
  }
  .price { font-size:1.02rem; font-weight:800; letter-spacing:-.02em; }
  .price del {
    font-size:.8rem; font-weight:600; color:#98a1b5;
    margin-left:6px;
  }

  .add-btn {
    display:inline-flex; align-items:center; justify-content:center; gap:7px;
    min-height:44px; min-width:44px; padding:0 16px;
    border-radius:12px; font-weight:800; font-size:.85rem;
    background:var(--brand-soft); color:var(--brand-dark);
    transition:background .18s var(--ease), color .18s var(--ease), transform .15s var(--ease);
  }
  .add-btn:hover { background:var(--brand); color:#fff; }
  .add-btn:active { transform:scale(.95); }
  .add-btn.added { background:var(--success); color:#fff; }

  /* ---- Empty state ---- */
  .empty {
    text-align:center; padding:64px 24px;
    background:var(--surface);
    border:1.5px dashed var(--border);
    border-radius:var(--radius-lg);
  }
  .empty i { font-size:2.4rem; color:#c3cadb; margin-bottom:16px; }
  .empty h3 { font-size:1.1rem; font-weight:800; margin-bottom:6px; }
  .empty p { color:var(--text-muted); font-size:.92rem; margin-bottom:20px; }

  /* ============ CART DRAWER ============ */
  .overlay {
    position:fixed; inset:0; z-index:50;
    background:rgba(15,23,42,.45);
    backdrop-filter:blur(2px);
    opacity:0; visibility:hidden;
    transition:opacity .3s var(--ease), visibility .3s var(--ease);
  }
  .overlay.open { opacity:1; visibility:visible; }

  .drawer {
    position:fixed; top:0; right:0; z-index:60;
    height:100%; width:min(430px, 100%);
    display:flex; flex-direction:column;
    background:var(--surface);
    box-shadow:var(--shadow-lg);
    transform:translateX(100%);
    transition:transform .32s var(--ease);
    visibility:hidden;
  }
  .drawer.open { transform:translateX(0); visibility:visible; }

  .drawer-head {
    display:flex; align-items:center; justify-content:space-between;
    gap:12px; padding:20px; border-bottom:1px solid var(--border);
  }
  .drawer-head h2 { font-size:1.1rem; font-weight:800; letter-spacing:-.02em; }
  .drawer-head .count-pill {
    font-size:.78rem; font-weight:800; color:var(--brand-dark);
    background:var(--brand-soft); padding:3px 10px; border-radius:999px;
    margin-left:8px;
  }
  .icon-btn {
    width:44px; height:44px; display:grid; place-items:center;
    border-radius:12px; color:var(--text-muted); font-size:1.05rem;
    transition:background .18s var(--ease), color .18s var(--ease);
  }
  .icon-btn:hover { background:var(--surface-alt); color:var(--text); }

  .ship-progress { padding:16px 20px; border-bottom:1px solid var(--border); }
  .ship-progress p {
    font-size:.82rem; font-weight:700; color:var(--text-muted); margin-bottom:9px;
  }
  .ship-progress p strong { color:var(--success); }
  .bar {
    height:8px; border-radius:999px; background:var(--surface-alt); overflow:hidden;
  }
  .bar span {
    display:block; height:100%; width:0;
    border-radius:999px;
    background:linear-gradient(90deg, #6366f1, #0f9d58);
    transition:width .4s var(--ease);
  }

  .drawer-body { flex:1; overflow-y:auto; overscroll-behavior:contain; }

  .cart-item {
    display:grid; grid-template-columns:auto 1fr auto;
    gap:14px; align-items:center;
    padding:16px 20px; border-bottom:1px solid var(--border);
  }
  .ci-media {
    width:64px; height:64px; flex-shrink:0;
    display:grid; place-items:center; font-size:1.7rem;
    border-radius:14px; border:1px solid var(--border);
  }
  .ci-info { min-width:0; }
  .ci-name {
    font-size:.9rem; font-weight:700; line-height:1.3;
    margin-bottom:3px;
    display:-webkit-box; -webkit-line-clamp:2; -webkit-box-orient:vertical; overflow:hidden;
  }
  .ci-price { font-size:.82rem; color:var(--text-muted); font-weight:600; margin-bottom:9px; }

  .ci-actions { display:flex; align-items:center; gap:12px; flex-wrap:wrap; }

  .stepper {
    display:inline-flex; align-items:center;
    border:1.5px solid var(--border); border-radius:999px;
    overflow:hidden; background:var(--surface);
  }
  .stepper button {
    width:34px; height:34px; display:grid; place-items:center;
    color:var(--text-muted); font-size:.72rem;
    transition:background .15s var(--ease), color .15s var(--ease);
  }
  .stepper button:hover { background:var(--brand-soft); color:var(--brand-dark); }
  .stepper button:disabled { opacity:.35; cursor:not-allowed; }
  .stepper .qty {
    min-width:30px; text-align:center;
    font-size:.86rem; font-weight:800;
  }

  .ci-remove {
    font-size:.78rem; font-weight:700; color:var(--text-muted);
    display:inline-flex; align-items:center; gap:5px;
    padding:6px 4px; border-radius:6px;
    transition:color .15s var(--ease);
  }
  .ci-remove:hover { color:var(--danger); }

  .ci-total { font-size:.92rem; font-weight:800; white-space:nowrap; }

  .cart-empty { text-align:center; padding:64px 28px; }
  .cart-empty .emoji { font-size:2.6rem; margin-bottom:14px; }
  .cart-empty h3 { font-size:1.05rem; font-weight:800; margin-bottom:6px; }
  .cart-empty p { color:var(--text-muted); font-size:.9rem; margin-bottom:22px; }

  .drawer-foot {
    padding:20px; border-top:1px solid var(--border);
    background:var(--surface);
  }
  .totals-row {
    display:flex; justify-content:space-between; align-items:baseline;
    margin-bottom:6px;
  }
  .totals-row .label { font-size:.9rem; color:var(--text-muted); font-weight:700; }
  .totals-row .value { font-size:1.3rem; font-weight:800; letter-spacing:-.02em; }
  .totals-note {
    font-size:.78rem; color:var(--text-muted); margin-bottom:16px;
  }
  .checkout-btn {
    width:100%; min-height:52px;
    border-radius:14px; font-weight:800; font-size:1rem;
    background:var(--brand); color:#fff;
    display:flex; align-items:center; justify-content:center; gap:9px;
    transition:background .2s var(--ease), transform .15s var(--ease);
    box-shadow:0 8px 22px rgba(79,70,229,.3);
  }
  .checkout-btn:hover:not(:disabled) { background:var(--brand-dark); }
  .checkout-btn:active:not(:disabled) { transform:scale(.98); }
  .checkout-btn:disabled {
    background:var(--surface-alt); color:#a4adc0;
    box-shadow:none; cursor:not-allowed;
  }

  /* ============ TOAST ============ */
  .toast {
    position:fixed; left:50%; bottom:28px; z-index:90;
    display:flex; align-items:center; gap:10px;
    padding:14px 22px; border-radius:14px;
    background:#0f172a; color:#fff;
    font-size:.9rem; font-weight:700;
    box-shadow:var(--shadow-lg);
    transform:translate(-50%, 140%);
    opacity:0; pointer-events:none;
    transition:transform .35s var(--ease), opacity .35s var(--ease);
    max-width:calc(100vw - 40px);
  }
  .toast.show { transform:translate(-50%, 0); opacity:1; }
  .toast i { color:#4ade80; }

  /* ============ FOOTER ============ */
  .site-footer {
    background:var(--surface);
    border-top:1px solid var(--border);
    padding-block:40px 32px;
  }
  .footer-grid {
    display:grid; grid-template-columns:1.4fr 1fr 1fr 1fr;
    gap:32px; margin-bottom:32px;
  }
  .footer-grid h4 {
    font-size:.78rem; font-weight:800; letter-spacing:.09em;
    text-transform:uppercase; color:var(--text-muted); margin-bottom:14px;
  }
  .footer-grid ul { list-style:none; display:grid; gap:10px; }
  .footer-grid a { font-size:.9rem; font-weight:600; color:var(--text-muted); }
  .footer-grid a:hover { color:var(--brand); }
  .footer-about p {
    font-size:.9rem; color:var(--text-muted); max-width:34ch; margin-top:12px;
  }
  .footer-bottom {
    border-top:1px solid var(--border); padding-top:22px;
    display:flex; flex-wrap:wrap; gap:12px;
    justify-content:space-between; align-items:center;
    font-size:.82rem; color:var(--text-muted); font-weight:600;
  }

  /* ============ RESPONSIVE ============ */
  @media (max-width: 900px) {
    .hero { grid-template-columns:1fr; gap:36px; padding-block:40px; }
    .hero-art { order:-1; max-width:260px; }
    .footer-grid { grid-template-columns:1fr 1fr; }
  }

  @media (max-width: 720px) {
    .search-wrap { order:3; flex-basis:100%; }
    .header-actions { margin-left:auto; }
    .cart-label { display:none; }
    .cart-btn { padding:0 16px; }
    .toolbar { flex-direction:column; align-items:stretch; }
    .sort { justify-content:space-between; }
    .select-wrap { flex:1; }
    .select-wrap select { width:100%; }
  }

  @media (max-width: 560px) {
    .container { padding-inline:16px; }
    .product-grid { grid-template-columns:repeat(auto-fill, minmax(158px, 1fr)); gap:14px; }
    .card-media { font-size:2.4rem; }
    .card-body { padding:13px; gap:6px; }
    .card-title { font-size:.9rem; }
    .add-btn { padding:0 12px; }
    .add-btn span { display:none; }
    .footer-grid { grid-template-columns:1fr; gap:26px; }
    .hero-cta .btn { width:100%; }
  }

  @media (prefers-reduced-motion: reduce) {
    *, *::before, *::after {
      animation-duration:.01ms !important;
      transition-duration:.01ms !important;
      scroll-behavior:auto !important;
    }
  }
</style>
</head>

<body>
<a class="skip-link" href="#main">Skip to main content</a>

<!-- ================= HEADER ================= -->
<header class="site-header">
  <div class="container header-inner">
    <a class="brand" href="#" aria-label="NovaMart home">
      <span class="brand-mark" aria-hidden="true"><i class="fa-solid fa-bag-shopping"></i></span>
      <span class="brand-name">Nova<span>Mart</span></span>
    </a>

    <div class="search-wrap">
      <label class="sr-only" for="search">Search products</label>
      <i class="fa-solid fa-magnifying-glass search-icon" aria-hidden="true"></i>
      <input id="search" type="search" placeholder="Search products, brands and more…" autocomplete="off" />
    </div>

    <div class="header-actions">
      <button class="cart-btn" id="cartBtn" aria-haspopup="dialog" aria-controls="cartDrawer">
        <i class="fa-solid fa-cart-shopping" aria-hidden="true"></i>
        <span class="cart-label">Cart</span>
        <span class="cart-count" id="cartCount" aria-hidden="true">0</span>
      </button>
    </div>
  </div>
</header>

<main id="main">

  <!-- ================= HERO ================= -->
  <section class="hero container">
    <div class="hero-copy">
      <p class="eyebrow"><i class="fa-solid fa-bolt" aria-hidden="true"></i> Summer drop · up to 40% off</p>
      <h1>Everyday tech &amp; essentials,<br>curated for you.</h1>
      <p class="hero-sub">
        Thoughtfully chosen products, honest prices and a checkout that takes seconds.
        Free 2‑day shipping over $75.
      </p>
      <div class="hero-cta">
        <a class="btn btn-primary" href="#shop">Shop the collection</a>
        <a class="btn btn-ghost" href="#shop">View today's deals</a>
      </div>
      <ul class="trust">
        <li><i class="fa-solid fa-truck-fast" aria-hidden="true"></i> Free shipping $75+</li>
        <li><i class="fa-solid fa-rotate-left" aria-hidden="true"></i> 30‑day returns</li>
        <li><i class="fa-solid fa-shield-halved" aria-hidden="true"></i> Secure checkout</li>
      </ul>
    </div>

    <div class="hero-art" aria-hidden="true">
      <div class="tile">🎧</div>
      <div class="tile">⌚</div>
      <div class="tile">👟</div>
      <div class="tile">💡</div>
    </div>
  </section>

  <!-- ================= SHOP ================= -->
  <section class="shop container" id="shop" aria-labelledby="shopTitle">
    <div class="section-head">
      <h2 id="shopTitle">Browse products</h2>

      <div class="toolbar">
        <div class="chips" role="group" aria-label="Filter by category">
          <button class="chip" type="button" data-cat="All" aria-pressed="true">All</button>
          <button class="chip" type="button" data-cat="Audio" aria-pressed="false">Audio</button>
          <button class="chip" type="button" data-cat="Wearables" aria-pressed="false">Wearables</button>
          <button class="chip" type="button" data-cat="Home" aria-pressed="false">Home</button>
          <button class="chip" type="button" data-cat="Accessories" aria-pressed="false">Accessories</button>
          <button class="chip" type="button" data-cat="Fitness" aria-pressed="false">Fitness</button>
        </div>

        <div class="sort">
          <label for="sort">Sort by</label>
          <div class="select-wrap">
            <select id="sort">
              <option value="featured">Featured</option>
              <option value="price-asc">Price: low to high</option>
              <option value="price-desc">Price: high to low</option>
              <option value="rating">Top rated</option>
            </select>
            <i class="fa-solid fa-chevron-down" aria-hidden="true"></i>
          </div>
        </div>
      </div>
    </div>

    <p class="result-count" id="resultCount" role="status"></p>

    <div class="product-grid" id="productGrid"></div>

    <div class="empty" id="emptyState" hidden>
      <i class="fa-solid fa-magnifying-glass" aria-hidden="true"></i>
      <h3>No products found</h3>
      <p>Try a different search term or clear your filters.</p>
      <button class="btn btn-primary" type="button" id="resetFilters">Clear filters</button>
    </div>
  </section>

</main>

<!-- ================= FOOTER ================= -->
<footer class="site-footer">
  <div class="container">
    <div class="footer-grid">
      <div class="footer-about">
        <a class="brand" href="#" aria-label="NovaMart home">
          <span class="brand-mark" aria-hidden="true"><i class="fa-solid fa-bag-shopping"></i></span>
          <span class="brand-name">Nova<span>Mart</span></span>
        </a>
        <p>Everyday essentials and smart tech, picked by people who actually use them.</p>
      </div>

      <div>
        <h4>Shop</h4>
        <ul>
          <li><a href="#shop">New arrivals</a></li>
          <li><a href="#shop">Best sellers</a></li>
          <li><a href="#shop">Deals</a></li>
        </ul>
      </div>

      <div>
        <h4>Support</h4>
        <ul>
          <li><a href="#shop">Shipping &amp; delivery</a></li>
          <li><a href="#shop">Returns</a></li>
          <li><a href="#shop">Contact us</a></li>
        </ul>
      </div>

      <div>
        <h4>Company</h4>
        <ul>
          <li><a href="#shop">About</a></li>
          <li><a href="#shop">Careers</a></li>
          <li><a href="#shop">Privacy</a></li>
        </ul>
      </div>
    </div>

    <div class="footer-bottom">
      <p>© 2024 NovaMart. All rights reserved.</p>
      <p>Need help? <a href="#shop"><strong>Chat with us</strong></a></p>
    </div>
  </div>
</footer>

<!-- ================= CART DRAWER ================= -->
<div class="overlay" id="overlay" hidden></div>

<aside class="drawer" id="cartDrawer" role="dialog" aria-modal="true" aria-labelledby="cartTitle" aria-hidden="true">
  <div class="drawer-head">
    <h2 id="cartTitle">
      Your cart <span class="count-pill" id="cartPill">0</span>
    </h2>
    <button class="icon-btn" id="closeCart" type="button" aria-label="Close cart">
      <i class="fa-solid fa-xmark" aria-hidden="true"></i>
    </button>
  </div>

  <div class="ship-progress" id="shipProgress">
    <p id="shipText">Add <strong>$75.00</strong> more for free shipping</p>
    <div class="bar"><span id="shipBar"></span></div>
  </div>

  <div class="drawer-body" id="cartBody"></div>

  <div class="drawer-foot" id="cartFoot">
    <div class="totals-row">
      <span class="label">Subtotal</span>
      <span class="value" id="subtotal">$0.00</span>
    </div>
    <p class="totals-note">Taxes and shipping calculated at checkout.</p>
    <button class="checkout-btn" id="checkoutBtn" type="button" disabled>
      <i class="fa-solid fa-lock" aria-hidden="true"></i> Secure checkout
    </button>
  </div>
</aside>

<!-- ================= TOAST + LIVE REGION ================= -->
<div class="toast" id="toast" role="status" aria-live="polite">
  <i class="fa-solid fa-circle-check" aria-hidden="true"></i>
  <span id="toastText">Added to cart</span>
</div>
<p class="sr-only" aria-live="polite" id="srStatus"></p>

<script>
(function () {
  'use strict';

  /* ---------------- DATA ---------------- */
  const PRODUCTS = [
    { id:1,  name:'Aurora Wireless Headphones',  category:'Audio',       price:129, old:179, rating:4.8, reviews:1240, emoji:'🎧', tile:'#eef2ff', badge:'Best seller' },
    { id:2,  name:'Pulse Smart Watch Series 5',  category:'Wearables',   price:199, old:249, rating:4.6, reviews:864,  emoji:'⌚', tile:'#fdf2f8', badge:null },
    { id:3,  name:'Halo Warm Desk Lamp',         category:'Home',        price:59,  old:null,rating:4.7, reviews:412,  emoji:'💡', tile:'#fffbeb', badge:'New' },
    { id:4,  name:'Nomad Leather Backpack',      category:'Accessories', price:89,  old:110, rating:4.5, reviews:508,  emoji:'🎒', tile:'#f0fdf4', badge:null },
    { id:5,  name:'Echo Mini Bluetooth Speaker', category:'Audio',       price:49,  old:null,rating:4.4, reviews:2103, emoji:'🔊', tile:'#eff6ff', badge:null },
    { id:6,  name:'Stride Running Shoes',        category:'Fitness',     price:119, old:null,rating:4.9, reviews:1876, emoji:'👟', tile:'#fff1f2', badge:'Top rated' },
    { id:7,  name:'Vertex Mechanical Keyboard',  category:'Accessories', price:149, old:null,rating:4.7, reviews:934,  emoji:'⌨️', tile:'#f5f3ff', badge:null },
    { id:8,  name:'Terra Ceramic Mug Set',       category:'Home',        price:34,  old:null,rating:4.3, reviews:287,  emoji:'☕', tile:'#fef2f2', badge:null },
    { id:9,  name:'Flux Fitness Tracker Band',   category:'Wearables',   price:79,  old:99,  rating:4.2, reviews:641,  emoji:'📿', tile:'#ecfeff', badge:null },
    { id:10, name:'Aero Non‑Slip Yoga Mat',      category:'Fitness',     price:45,  old:null,rating:4.6, reviews:753,  emoji:'🧘', tile:'#f0fdfa', badge:null }
  ];

  const FREE_SHIPPING_THRESHOLD = 75;
  const STORAGE_KEY = 'novamart.cart.v1';

  /* ---------------- ELEMENTS ---------------- */
  const $  = (sel, root = document) => root.querySelector(sel);
  const $$ = (sel, root = document) => Array.from(root.querySelectorAll(sel));

  const grid        = $('#productGrid');
  const emptyState  = $('#emptyState');
  const resultCount = $('#resultCount');
  const searchInput = $('#search');
  const sortSelect  = $('#sort');
  const chips       = $$('.chip');

  const cartBtn     = $('#cartBtn');
  const cartCountEl = $('#cartCount');
  const cartPill    = $('#cartPill');
  const drawer      = $('#cartDrawer');
  const overlay     = $('#overlay');
  const closeCart   = $('#closeCart');
  const cartBody    = $('#cartBody');
  const cartFoot    = $('#cartFoot');
  const subtotalEl  = $('#subtotal');
  const checkoutBtn = $('#checkoutBtn');
  const shipText    = $('#shipText');
  const shipBar     = $('#shipBar');
  const shipWrap    = $('#shipProgress');

  const toast       = $('#toast');
  const toastText   = $('#toastText');
  const srStatus    = $('#srStatus');

  /* ---------------- STATE ---------------- */
  const state = { query:'', category:'All', sort:'featured' };
  let cart = loadCart();
  let lastFocused = null;

  /* ---------------- HELPERS ---------------- */
  const money = n => '$' + Number(n).toFixed(2);
  const findProduct = id => PRODUCTS.find(p => p.id === id);

  function loadCart() {
    try {
      const raw = localStorage.getItem(STORAGE_KEY);
      const parsed = raw ? JSON.parse(raw) : [];
      return Array.isArray(parsed)
        ? parsed.filter(item => item && findProduct(item.id) && item.qty > 0)
        : [];
    } catch (e) { return []; }
  }

  function saveCart() {
    try { localStorage.setItem(STORAGE_KEY, JSON.stringify(cart)); } catch (e) {}
  }

  let toastTimer;
  function showToast(message) {
    toastText.textContent = message;
    toast.classList.add('show');
    clearTimeout(toastTimer);
    toastTimer = setTimeout(() => toast.classList.remove('show'), 2200);
  }

  /* ---------------- PRODUCT RENDERING ---------------- */
  function getVisibleProducts() {
    let list = PRODUCTS.filter(p =>
      state.category === 'All' || p.category === state.category
    );

    const q = state.query.trim().toLowerCase();
    if (q) {
      list = list.filter(p =>
        (p.name + ' ' + p.category).toLowerCase().includes(q)
      );
    }

    if (state.sort === 'price-asc')  list = [...list].sort((a, b) => a.price - b.price);
    if (state.sort === 'price-desc') list = [...list].sort((a, b) => b.price - a.price);
    if (state.sort === 'rating')     list = [...list].sort((a, b) => b.rating - a.rating);

    return list;
  }

  function productCard(p) {
    const oldPrice = p.old ? `<del>${money(p.old)}</del>` : '';
    const badge    = p.badge ? `<span class="badge">${p.badge}</span>` : '';

    return `
      <article class="card">
        <div class="card-media" style="background:linear-gradient(150deg, ${p.tile}, #ffffff)">
          ${badge}
          <span aria-hidden="true">${p.emoji}</span>
        </div>
        <div class="card-body">
          <p class="card-cat">${p.category}</p>
          <h3 class="card-title">${p.name}</h3>
          <p class="card-rating">
            <i class="fa-solid fa-star" aria-hidden="true"></i>
            ${p.rating.toFixed(1)}
            <span>(${p.reviews.toLocaleString()})</span>
          </p>
          <div class="card-foot">
            <p class="price">${money(p.price)}${oldPrice}</p>
            <button class="add-btn" type="button" data-add="${p.id}"
                    aria-label="Add ${p.name} to cart">
              <i class="fa-solid fa-plus" aria-hidden="true"></i><span>Add</span>
            </button>
          </div>
        </div>
      </article>
    `;
  }

  function renderProducts() {
    const list = getVisibleProducts();

    grid.innerHTML = list.map(productCard).join('');
    grid.hidden = list.length === 0;
    emptyState.hidden = list.length !== 0;

    resultCount.textContent = list.length === 0
      ? 'No products match your filters'
      : `Showing ${list.length} product${list.length === 1 ? '' : 's'}`;
  }

  /* ---------------- CART LOGIC ---------------- */
  function cartQuantity() {
    return cart.reduce((sum, item) => sum + item.qty, 0);
  }

  function cartSubtotal() {
    return cart.reduce((sum, item) => sum + findProduct(item.id).price * item.qty, 0);
  }

  function addToCart(id) {
    const product = findProduct(id);
    if (!product) return;

    const existing = cart.find(item => item.id === id);
    if (existing) existing.qty += 1;
    else cart.push({ id, qty: 1 });

    saveCart();
    renderCart();
    animateCartCount();
    showToast(`${product.name} added to cart`);
    srStatus.textContent = `${product.name} added to cart. ${cartQuantity()} items in cart.`;
  }

  function changeQty(id, delta) {
    const item = cart.find(i => i.id === id);
    if (!item) return;

    item.qty += delta;
    if (item.qty <= 0) cart = cart.filter(i => i.id !== id);

    saveCart();
    renderCart();
  }

  function removeItem(id) {
    const product = findProduct(id);
    cart = cart.filter(i => i.id !== id);
    saveCart();
    renderCart();
    showToast(`${product ? product.name : 'Item'} removed`);
  }

  function animateCartCount() {
    cartCountEl.classList.remove('pop');
    void cartCountEl.offsetWidth;
    cartCountEl.classList.add('pop');
  }

  function renderCart() {
    const qty = cartQuantity();
    const subtotal = cartSubtotal();

    cartCountEl.textContent = qty;
    cartCountEl.hidden = qty === 0;
    cartPill.textContent = qty;

    if (qty === 0) {
      shipWrap.hidden = true;
    } else {
      shipWrap.hidden = false;
      const remaining = Math.max(0, FREE_SHIPPING_THRESHOLD - subtotal);
      const pct = Math.min(100, (subtotal / FREE_SHIPPING_THRESHOLD) * 100);
      shipBar.style.width = pct + '%';
      shipText.innerHTML = remaining > 0
        ? `Add <strong>${money(remaining)}</strong> more for free shipping`
        : `<strong>🎉 You've unlocked free shipping!</strong>`;
    }

    if (cart.length === 0) {
      cartBody.innerHTML = `
        <div class="cart-empty">
          <div class="emoji" aria-hidden="true">🛒</div>
          <h3>Your cart is empty</h3>
          <p>Browse our collection and add something you love.</p>
          <button class="btn btn-primary" type="button" id="keepShopping">Start shopping</button>
        </div>
      `;
      const keepShopping = $('#keepShopping');
      if (keepShopping) keepShopping.addEventListener('click', closeDrawer);
    } else {
      cartBody.innerHTML = cart.map(item => {
        const p = findProduct(item.id);
        return `
          <div class="cart-item" data-id="${p.id}">
            <div class="ci-media" style="background:linear-gradient(150deg, ${p.tile}, #fff)" aria-hidden="true">
              ${p.emoji}
            </div>
            <div class="ci-info">
              <p class="ci-name">${p.name}</p>
              <p class="ci-price">${money(p.price)} each</p>
              <div class="ci-actions">
                <div class="stepper">
                  <button type="button" data-dec="${p.id}"
                          aria-label="Decrease quantity of ${p.name}"
                          ${item.qty <= 1 ? 'disabled' : ''}>
                    <i class="fa-solid fa-minus" aria-hidden="true"></i>
                  </button>
                  <span class="qty" aria-label="Quantity">${item.qty}</span>
                  <button type="button" data-inc="${p.id}"
                          aria-label="Increase quantity of ${p.name}">
                    <i class="fa-solid fa-plus" aria-hidden="true"></i>
                  </button>
                </div>
                <button type="button" class="ci-remove" data-remove="${p.id}">
                  <i class="fa-solid fa-trash-can" aria-hidden="true"></i> Remove
                </button>
              </div>
            </div>
            <p class="ci-total">${money(p.price * item.qty)}</p>
          </div>
        `;
      }).join('');
    }

    subtotalEl.textContent = money(subtotal);
    checkoutBtn.disabled = cart.length === 0;
  }

  /* ---------------- DRAWER ---------------- */
  function openDrawer() {
    lastFocused = document.activeElement;
    overlay.hidden = false;
    requestAnimationFrame(() => overlay.classList.add('open'));
    drawer.classList.add('open');
    drawer.setAttribute('aria-hidden', 'false');
    document.body.style.overflow = 'hidden';
    closeCart.focus();
  }

  function closeDrawer() {
    overlay.classList.remove('open');
    drawer.classList.remove('open');
    drawer.setAttribute('aria-hidden', 'true');
    document.body.style.overflow = '';
    setTimeout(() => { overlay.hidden = true; }, 320);
    if (lastFocused) lastFocused.focus();
  }

  /* ---------------- EVENTS ---------------- */
  let searchTimer;
  searchInput.addEventListener('input', e => {
    const value = e.target.value;
    clearTimeout(searchTimer);
    searchTimer = setTimeout(() => {
      state.query = value;
      renderProducts();
    }, 140);
  });

  chips.forEach(chip => {
    chip.addEventListener('click', () => {
      state.category = chip.dataset.cat;
      chips.forEach(c => c.setAttribute('aria-pressed', String(c === chip)));
      renderProducts();
    });
  });

  sortSelect.addEventListener('change', e => {
    state.sort = e.target.value;
    renderProducts();
  });

  $('#resetFilters').addEventListener('click', () => {
    state.query = '';
    state.category = 'All';
    state.sort = 'featured';
    searchInput.value = '';
    sortSelect.value = 'featured';
    chips.forEach(c => c.setAttribute('aria-pressed', String(c.dataset.cat === 'All')));
    renderProducts();
    searchInput.focus();
  });

  grid.addEventListener('click', e => {
    const btn = e.target.closest('[data-add]');
    if (!btn) return;

    addToCart(Number(btn.dataset.add));

    btn.classList.add('added');
    btn.innerHTML = '<i class="fa-solid fa-check" aria-hidden="true"></i><span>Added</span>';
    setTimeout(() => {
      btn.classList.remove('added');
      btn.innerHTML = '<i class="fa-solid fa-plus" aria-hidden="true"></i><span>Add</span>';
    }, 1200);
  });

  cartBody.addEventListener('click', e => {
    const inc = e.target.closest('[data-inc]');
    const dec = e.target.closest('[data-dec]');
    const rem = e.target.closest('[data-remove]');

    if (inc) changeQty(Number(inc.dataset.inc), 1);
    if (dec) changeQty(Number(dec.dataset.dec), -1);
    if (rem) removeItem(Number(rem.dataset.remove));
  });

  cartBtn.addEventListener('click', openDrawer);
  closeCart.addEventListener('click', closeDrawer);
  overlay.addEventListener('click', closeDrawer);

  document.addEventListener('keydown', e => {
    if (e.key === 'Escape' && drawer.classList.contains('open')) closeDrawer();
  });

  drawer.addEventListener('keydown', e => {
    if (e.key !== 'Tab') return;
    const focusable = $$(
      'button:not(:disabled), [href], input, select, textarea, [tabindex]:not([tabindex="-1"])',
      drawer
    ).filter(el => el.offsetParent !== null);
    if (!focusable.length) return;

    const first = focusable[0];
    const last = focusable[focusable.length - 1];

    if (e.shiftKey && document.activeElement === first) {
      e.preventDefault();
      last.focus();
    } else if (!e.shiftKey && document.activeElement === last) {
      e.preventDefault();
      first.focus();
    }
  });

  checkoutBtn.addEventListener('click', () => {
    showToast('Checkout is a demo in this preview 🙂');
  });

  /* ---------------- INIT ---------------- */
  renderProducts();
  renderCart();
})();
</script>
</body>
</html>
