<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
<title>NovaMart — Everyday essentials, crafted for calmer living</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Fraunces:ital,opsz,wght@0,9..144,400..900;1,9..144,400..900&family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
  /* ============ DESIGN TOKENS ============ */
  :root {
    --bg:            #faf6f0;
    --surface:       #ffffff;
    --surface-warm:  #fffdfa;
    --surface-alt:   #f3ede3;
    --text:          #1b1a16;
    --text-muted:    #6d675b;
    --border:        #e8dfd1;
    --brand:         #1f4d3a;
    --brand-dark:    #143527;
    --brand-soft:    #e6efe9;
    --accent:        #c2410c;
    --accent-soft:   #fdeee6;
    --success:       #2d7a4f;
    --danger:        #b42318;

    /* ---- Title colours ---- */
    --title:            #0b1220;  /* deep navy */
    --title-accent:     #7c3aed;  /* violet accent */
    --title-muted:      #334155;  /* slate helper headings */
    --title-grad-start: #4f46e5;  /* indigo */
    --title-grad-end:   #06b6d4;  /* cyan */

    --radius-sm:     10px;
    --radius:        18px;
    --radius-lg:     26px;
    --shadow-sm:     0 1px 2px rgba(27,26,22,.05);
    --shadow-md:     0 14px 34px rgba(27,26,22,.09);
    --shadow-lg:     0 30px 70px rgba(27,26,22,.22);
    --ring:          0 0 0 3px rgba(31,77,58,.28);
    --ease:          cubic-bezier(.4,0,.2,1);
    --font-display:  'Fraunces', Georgia, 'Times New Roman', serif;
    --font-body:     'Inter', system-ui, -apple-system, 'Segoe UI', sans-serif;
  }

  /* ============ RESET ============ */
  * { margin:0; padding:0; box-sizing:border-box; }
  html { scroll-behavior:smooth; -webkit-text-size-adjust:100%; }
  body {
    font-family:var(--font-body);
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

  h1, h2, h3, .display {
    font-family:var(--font-display);
    font-weight:600;
    letter-spacing:-.02em;
    line-height:1.15;
  }

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
    display:inline-flex; align-items:center; justify-content:center; gap:9px;
    min-height:50px; padding:0 26px;
    border-radius:999px; font-weight:600; font-size:.95rem;
    letter-spacing:-.01em;
    transition:transform .15s var(--ease), background .2s var(--ease), box-shadow .2s var(--ease), border-color .2s var(--ease);
    white-space:nowrap;
  }
  .btn:active { transform:scale(.97); }
  .btn-primary {
    background:var(--brand); color:#fff;
    box-shadow:0 8px 22px rgba(31,77,58,.24);
  }
  .btn-primary:hover { background:var(--brand-dark); box-shadow:0 10px 26px rgba(31,77,58,.3); }
  .btn-ghost {
    background:transparent; color:var(--text);
    border:1.5px solid #d8cdbd;
  }
  .btn-ghost:hover { background:var(--surface); border-color:#c4b7a3; }

  /* ============ ANNOUNCEMENT BAR ============ */
  .announce {
    background:var(--brand);
    color:#f4efe6;
    font-size:.8rem; font-weight:500; letter-spacing:.01em;
    text-align:center;
    padding:9px 20px;
  }
  .announce i { margin-right:7px; color:#a7d4b8; }

  /* ============ HEADER ============ */
  .site-header {
    position:sticky; top:0; z-index:40;
    background:rgba(250,246,240,.86);
    backdrop-filter:saturate(180%) blur(16px);
    -webkit-backdrop-filter:saturate(180%) blur(16px);
    border-bottom:1px solid var(--border);
  }
  .header-inner {
    display:flex; align-items:center; flex-wrap:wrap;
    gap:12px 22px; padding-block:14px;
  }

  .brand { display:flex; align-items:center; gap:11px; flex-shrink:0; }
  .brand-mark {
    width:42px; height:42px; display:grid; place-items:center;
    border-radius:13px; color:#f4efe6; font-size:1rem;
    background:linear-gradient(140deg, #2a6349, #143527);
    box-shadow:0 6px 16px rgba(31,77,58,.28);
  }
  .brand-name {
    font-family:var(--font-display);
    font-size:1.32rem; font-weight:700; letter-spacing:-.03em;
    line-height:1;
    color:var(--title);
  }
  .brand-name span { color:var(--title-accent); font-style:italic; }

  .search-wrap { position:relative; flex:1 1 300px; min-width:0; }
  .search-wrap .search-icon {
    position:absolute; left:18px; top:50%; transform:translateY(-50%);
    color:var(--text-muted); font-size:.88rem; pointer-events:none;
  }
  .search-wrap input {
    width:100%; height:48px;
    padding:0 18px 0 46px;
    border-radius:999px;
    border:1.5px solid var(--border);
    background:var(--surface);
    transition:border-color .2s var(--ease), box-shadow .2s var(--ease);
  }
  .search-wrap input::placeholder { color:#a49c8d; }
  .search-wrap input:hover { border-color:#d9cfbe; }
  .search-wrap input:focus {
    border-color:var(--brand);
    outline:none;
    box-shadow:0 0 0 4px rgba(31,77,58,.12);
  }
  .search-wrap input::-webkit-search-cancel-button { cursor:pointer; }

  .header-actions { margin-left:auto; display:flex; align-items:center; gap:10px; }

  .cart-btn {
    position:relative; display:inline-flex; align-items:center; gap:9px;
    min-height:48px; padding:0 20px;
    border-radius:999px; font-weight:600; font-size:.92rem;
    background:var(--brand); color:#fff;
    box-shadow:0 6px 18px rgba(31,77,58,.22);
    transition:background .2s var(--ease), transform .15s var(--ease);
  }
  .cart-btn:hover { background:var(--brand-dark); }
  .cart-btn:active { transform:scale(.97); }

  .cart-count {
    display:grid; place-items:center;
    min-width:22px; height:22px; padding:0 6px;
    border-radius:999px; background:#f4efe6; color:var(--brand-dark);
    font-size:.73rem; font-weight:800; line-height:1;
  }
  .cart-count.pop { animation:pop .4s var(--ease); }
  @keyframes pop {
    0% { transform:scale(1); }
    40% { transform:scale(1.45); }
    100% { transform:scale(1); }
  }

  /* ============ HERO ============ */
  .hero {
    display:grid; grid-template-columns:1.05fr .95fr;
    gap:56px; align-items:center;
    padding-block:64px 56px;
  }
  .eyebrow {
    display:inline-flex; align-items:center; gap:8px;
    background:var(--accent-soft); color:var(--accent);
    font-size:.72rem; font-weight:700; letter-spacing:.12em; text-transform:uppercase;
    padding:8px 15px; border-radius:999px; margin-bottom:22px;
  }
  .hero h1 {
    font-size:clamp(2.1rem, 4.6vw, 3.5rem);
    line-height:1.06;
    font-weight:600;
    margin-bottom:20px;
    color:var(--title); /* fallback */
  }
  .hero h1 em {
    font-style:italic;
    color:var(--title-accent);
    font-weight:500;
  }
  .hero-sub {
    color:var(--text-muted);
    font-size:1.04rem;
    max-width:44ch;
    margin-bottom:30px;
  }
  .hero-cta { display:flex; flex-wrap:wrap; gap:12px; margin-bottom:34px; }

  .trust {
    display:flex; flex-wrap:wrap; gap:12px 26px;
    list-style:none; font-size:.85rem; color:var(--text-muted); font-weight:500;
  }
  .trust li { display:flex; align-items:center; gap:8px; }
  .trust i { color:var(--brand); font-size:.9rem; }

  .hero-art {
    display:grid; grid-template-columns:1fr 1fr; gap:16px;
    justify-self:center; width:100%; max-width:400px;
  }
  .hero-art .tile {
    aspect-ratio:1; display:grid; place-items:center;
    font-size:clamp(2.2rem, 5vw, 3.4rem);
    border-radius:var(--radius-lg);
    border:1px solid var(--border);
    box-shadow:var(--shadow-sm);
    transition:transform .4s var(--ease);
  }
  .hero-art .tile:nth-child(1) { background:linear-gradient(150deg,#fbe4d5,#fffdfa); transform:rotate(-5deg); }
  .hero-art .tile:nth-child(2) { background:linear-gradient(150deg,#e2ede4,#fffdfa); transform:rotate(4deg) translateY(16px); }
  .hero-art .tile:nth-child(3) { background:linear-gradient(150deg,#f6ecd8,#fffdfa); transform:rotate(4deg) translateY(-12px); }
  .hero-art .tile:nth-child(4) { background:linear-gradient(150deg,#f3e0e8,#fffdfa); transform:rotate(-4deg); }
  .hero-art:hover .tile { transform:rotate(0) translateY(0); }

  /* ============ VALUE STRIP ============ */
  .value-strip {
    border-block:1px solid var(--border);
    background:var(--surface-warm);
  }
  .value-inner {
    display:grid; grid-template-columns:repeat(4, 1fr);
    gap:20px; padding-block:26px;
  }
  .value-item {
    display:flex; align-items:center; gap:13px;
    font-size:.86rem; font-weight:500; color:var(--text-muted);
    padding-inline:8px;
  }
  .value-item + .value-item { border-left:1px solid var(--border); padding-left:22px; }
  .value-icon {
    width:40px; height:40px; flex-shrink:0;
    display:grid; place-items:center;
    border-radius:12px;
    background:var(--brand-soft); color:var(--brand);
    font-size:.95rem;
  }
  .value-item strong { display:block; color:var(--text); font-weight:700; font-size:.88rem; }

  /* ============ SHOP ============ */
  .shop { padding-block:56px 80px; scroll-margin-top:90px; }

  .section-head { margin-bottom:26px; }
  .section-head h2 {
    font-size:clamp(1.6rem, 3vw, 2.3rem);
    font-weight:600;
    margin-bottom:6px;
    color:var(--title); /* fallback */
  }
  .section-head .lead {
    color:var(--text-muted); font-size:.95rem; margin-bottom:22px;
  }

  /* ---- Gradient titles (progressive enhancement) ---- */
  @supports ((-webkit-background-clip:text) or (background-clip:text)) {
    .hero h1,
    .section-head h2 {
      background:linear-gradient(135deg, var(--title-grad-start), var(--title-grad-end));
      -webkit-background-clip:text;
      background-clip:text;
      color:transparent;
      -webkit-text-fill-color:transparent;
    }
    .hero h1 em {
      color:var(--title-accent);
      -webkit-text-fill-color:var(--title-accent);
    }
  }

  .toolbar {
    display:flex; flex-wrap:wrap; align-items:center;
    gap:16px; justify-content:space-between;
  }

  .chips {
    display:flex; gap:9px; overflow-x:auto; padding-bottom:4px;
    scrollbar-width:none; -ms-overflow-style:none;
    max-width:100%;
  }
  .chips::-webkit-scrollbar { display:none; }

  .chip {
    flex-shrink:0; min-height:42px; padding:0 19px;
    border-radius:999px; font-size:.86rem; font-weight:600;
    background:var(--surface); color:var(--text-muted);
    border:1.5px solid var(--border);
    transition:all .18s var(--ease);
  }
  .chip:hover { border-color:#cdc1ae; color:var(--text); }
  .chip[aria-pressed="true"] {
    background:var(--brand); border-color:var(--brand); color:#fff;
    box-shadow:0 4px 14px rgba(31,77,58,.22);
  }

  .sort { display:flex; align-items:center; gap:10px; flex-shrink:0; }
  .sort label { font-size:.84rem; font-weight:600; color:var(--text-muted); }
  .select-wrap { position:relative; }
  .select-wrap i {
    position:absolute; right:15px; top:50%; transform:translateY(-50%);
    font-size:.68rem; color:var(--text-muted); pointer-events:none;
  }
  .select-wrap select {
    appearance:none; -webkit-appearance:none;
    min-height:44px; padding:0 40px 0 16px;
    border-radius:999px; border:1.5px solid var(--border);
    background:var(--surface); font-size:.86rem; font-weight:600;
    cursor:pointer; transition:border-color .2s var(--ease);
  }
  .select-wrap select:hover { border-color:#cdc1ae; }

  .result-count {
    font-size:.84rem; color:var(--text-muted); font-weight:500;
    margin:22px 0 18px;
  }

  /* ---- Product grid ---- */
  .product-grid {
    display:grid;
    grid-template-columns:repeat(auto-fill, minmax(232px, 1fr));
    gap:22px;
  }

  .card {
    display:flex; flex-direction:column;
    background:var(--surface);
    border:1px solid var(--border);
    border-radius:var(--radius);
    overflow:hidden;
    box-shadow:var(--shadow-sm);
    transition:transform .25s var(--ease), box-shadow .25s var(--ease), border-color .25s var(--ease);
  }
  .card:hover {
    transform:translateY(-5px);
    box-shadow:var(--shadow-md);
    border-color:#dbd0be;
  }

  .card-media {
    position:relative;
    aspect-ratio:1 / 1;
    display:grid; place-items:center;
    font-size:3.4rem;
    border-bottom:1px solid var(--border);
    overflow:hidden;
  }
  .card-media > span[aria-hidden] {
    transition:transform .4s var(--ease);
  }
  .card:hover .card-media > span[aria-hidden] { transform:scale(1.12) rotate(-3deg); }

  .badge {
    position:absolute; top:13px; left:13px; z-index:1;
    background:rgba(27,26,22,.88); color:#f4efe6;
    font-size:.65rem; font-weight:700; letter-spacing:.09em; text-transform:uppercase;
    padding:6px 11px; border-radius:999px;
    backdrop-filter:blur(4px);
  }

  .card-body {
    display:flex; flex-direction:column; gap:7px;
    padding:17px 17px 18px; flex:1;
  }
  .card-cat {
    font-size:.67rem; font-weight:700; letter-spacing:.13em;
    text-transform:uppercase; color:var(--accent);
  }
  .card-title {
    font-family:var(--font-body);
    font-size:.96rem; font-weight:600; line-height:1.4;
    letter-spacing:-.01em;
    color:var(--title);
    display:-webkit-box; -webkit-line-clamp:2; -webkit-box-orient:vertical;
    overflow:hidden; min-height:2.7em;
  }
  .card-rating {
    display:flex; align-items:center; gap:6px;
    font-size:.8rem; font-weight:600; color:var(--text-muted);
  }
  .card-rating i { color:#d99a2b; font-size:.74rem; }
  .card-rating span { font-weight:500; color:#a49c8d; }

  .card-foot {
    display:flex; align-items:center; justify-content:space-between;
    gap:10px; margin-top:auto; padding-top:12px;
    border-top:1px dashed var(--border);
  }
  .price { font-size:1.05rem; font-weight:700; letter-spacing:-.02em; }
  .price del {
    font-size:.78rem; font-weight:500; color:#a49c8d;
    margin-left:7px;
  }

  .add-btn {
    display:inline-flex; align-items:center; justify-content:center; gap:7px;
    min-height:44px; min-width:44px; padding:0 17px;
    border-radius:999px; font-weight:600; font-size:.84rem;
    background:var(--brand-soft); color:var(--brand-dark);
    transition:background .18s var(--ease), color .18s var(--ease), transform .15s var(--ease);
  }
  .add-btn:hover { background:var(--brand); color:#fff; }
  .add-btn:active { transform:scale(.95); }
  .add-btn.added { background:var(--success); color:#fff; }

  /* ---- Empty state ---- */
  .empty {
    text-align:center; padding:70px 24px;
    background:var(--surface-warm);
    border:1.5px dashed var(--border);
    border-radius:var(--radius-lg);
  }
  .empty i { font-size:2.2rem; color:#cdc1ae; margin-bottom:16px; }
  .empty h3 { font-size:1.25rem; font-weight:600; margin-bottom:8px; color:var(--title); }
  .empty p { color:var(--text-muted); font-size:.92rem; margin-bottom:22px; }

  /* ============ CART DRAWER ============ */
  .overlay {
    position:fixed; inset:0; z-index:50;
    background:rgba(27,26,22,.42);
    backdrop-filter:blur(3px);
    opacity:0; visibility:hidden;
    transition:opacity .3s var(--ease), visibility .3s var(--ease);
  }
  .overlay.open { opacity:1; visibility:visible; }

  .drawer {
    position:fixed; top:0; right:0; z-index:60;
    height:100%; width:min(440px, 100%);
    display:flex; flex-direction:column;
    background:var(--surface-warm);
    box-shadow:var(--shadow-lg);
    transform:translateX(100%);
    transition:transform .34s var(--ease);
    visibility:hidden;
  }
  .drawer.open { transform:translateX(0); visibility:visible; }

  .drawer-head {
    display:flex; align-items:center; justify-content:space-between;
    gap:12px; padding:22px 22px 18px;
    border-bottom:1px solid var(--border);
  }
  .drawer-head h2 {
    font-size:1.35rem; font-weight:600; letter-spacing:-.02em;
    display:flex; align-items:center;
    color:var(--title);
  }
  .drawer-head .count-pill {
    font-family:var(--font-body);
    font-size:.72rem; font-weight:700; color:var(--brand-dark);
    background:var(--brand-soft); padding:4px 11px; border-radius:999px;
    margin-left:10px;
  }
  .icon-btn {
    width:44px; height:44px; display:grid; place-items:center;
    border-radius:50%; color:var(--text-muted); font-size:1rem;
    transition:background .18s var(--ease), color .18s var(--ease);
  }
  .icon-btn:hover { background:var(--surface-alt); color:var(--text); }

  .ship-progress { padding:16px 22px; border-bottom:1px solid var(--border); }
  .ship-progress p {
    font-size:.8rem; font-weight:600; color:var(--text-muted); margin-bottom:10px;
  }
  .ship-progress p strong { color:var(--brand); font-weight:700; }
  .bar {
    height:7px; border-radius:999px; background:var(--surface-alt); overflow:hidden;
  }
  .bar span {
    display:block; height:100%; width:0;
    border-radius:999px;
    background:linear-gradient(90deg, #2a6349, #c2410c);
    transition:width .45s var(--ease);
  }

  .drawer-body { flex:1; overflow-y:auto; overscroll-behavior:contain; }

  .cart-item {
    display:grid; grid-template-columns:auto 1fr auto;
    gap:14px; align-items:center;
    padding:17px 22px; border-bottom:1px solid var(--border);
  }
  .ci-media {
    width:66px; height:66px; flex-shrink:0;
    display:grid; place-items:center; font-size:1.7rem;
    border-radius:16px; border:1px solid var(--border);
  }
  .ci-info { min-width:0; }
  .ci-name {
    font-size:.89rem; font-weight:600; line-height:1.35;
    margin-bottom:3px;
    display:-webkit-box; -webkit-line-clamp:2; -webkit-box-orient:vertical; overflow:hidden;
  }
  .ci-price { font-size:.79rem; color:var(--text-muted); font-weight:500; margin-bottom:10px; }

  .ci-actions { display:flex; align-items:center; gap:12px; flex-wrap:wrap; }

  .stepper {
    display:inline-flex; align-items:center;
    border:1.5px solid var(--border); border-radius:999px;
    overflow:hidden; background:var(--surface);
  }
  .stepper button {
    width:33px; height:33px; display:grid; place-items:center;
    color:var(--text-muted); font-size:.68rem;
    transition:background .15s var(--ease), color .15s var(--ease);
  }
  .stepper button:hover { background:var(--brand-soft); color:var(--brand-dark); }
  .stepper button:disabled { opacity:.32; cursor:not-allowed; }
  .stepper .qty {
    min-width:30px; text-align:center;
    font-size:.84rem; font-weight:700;
  }

  .ci-remove {
    font-size:.76rem; font-weight:600; color:var(--text-muted);
    display:inline-flex; align-items:center; gap:5px;
    padding:6px 4px; border-radius:6px;
    transition:color .15s var(--ease);
  }
  .ci-remove:hover { color:var(--danger); }

  .ci-total { font-size:.92rem; font-weight:700; white-space:nowrap; }

  .cart-empty { text-align:center; padding:70px 30px; }
  .cart-empty .emoji { font-size:2.6rem; margin-bottom:16px; }
  .cart-empty h3 { font-size:1.2rem; font-weight:600; margin-bottom:8px; color:var(--title); }
  .cart-empty p { color:var(--text-muted); font-size:.9rem; margin-bottom:24px; }

  .drawer-foot {
    padding:20px 22px 22px; border-top:1px solid var(--border);
    background:var(--surface-warm);
  }
  .totals-row {
    display:flex; justify-content:space-between; align-items:baseline;
    margin-bottom:6px;
  }
  .totals-row .label { font-size:.88rem; color:var(--text-muted); font-weight:600; }
  .totals-row .value {
    font-family:var(--font-display);
    font-size:1.5rem; font-weight:600; letter-spacing:-.02em;
  }
  .totals-note { font-size:.76rem; color:var(--text-muted); margin-bottom:18px; }
  .checkout-btn {
    width:100%; min-height:54px;
    border-radius:999px; font-weight:600; font-size:.98rem;
    background:var(--brand); color:#fff;
    display:flex; align-items:center; justify-content:center; gap:9px;
    transition:background .2s var(--ease), transform .15s var(--ease);
    box-shadow:0 10px 26px rgba(31,77,58,.26);
  }
  .checkout-btn:hover:not(:disabled) { background:var(--brand-dark); }
  .checkout-btn:active:not(:disabled) { transform:scale(.98); }
  .checkout-btn:disabled {
    background:var(--surface-alt); color:#a49c8d;
    box-shadow:none; cursor:not-allowed;
  }

  /* ============ TOAST ============ */
  .toast {
    position:fixed; left:50%; bottom:28px; z-index:90;
    display:flex; align-items:center; gap:10px;
    padding:14px 24px; border-radius:999px;
    background:var(--brand); color:#f4efe6;
    font-size:.88rem; font-weight:600;
    box-shadow:var(--shadow-lg);
    transform:translate(-50%, 150%);
    opacity:0; pointer-events:none;
    transition:transform .38s var(--ease), opacity .38s var(--ease);
    max-width:calc(100vw - 40px);
  }
  .toast.show { transform:translate(-50%, 0); opacity:1; }
  .toast i { color:#a7d4b8; }

  /* ============ FOOTER ============ */
  .site-footer {
    background:var(--brand-dark);
    color:#e8e2d6;
    padding-block:56px 32px;
  }
  .footer-grid {
    display:grid; grid-template-columns:1.5fr 1fr 1fr 1fr;
    gap:36px; margin-bottom:40px;
  }
  .site-footer .brand-name { color:#fff; }
  .site-footer .brand-name span { color:#e9a887; }
  .site-footer .brand-mark {
    background:linear-gradient(140deg, #3d7a5e, #1f4d3a);
    box-shadow:none;
  }
  .footer-about p {
    font-size:.9rem; color:rgba(232,226,214,.72);
    max-width:34ch; margin-top:16px;
  }
  .footer-grid h4 {
    font-family:var(--font-body);
    font-size:.74rem; font-weight:700; letter-spacing:.14em;
    text-transform:uppercase;
    /* light tone kept for contrast on the dark footer */
    color:rgba(232,226,214,.55);
    margin-bottom:16px;
  }
  .footer-grid ul { list-style:none; display:grid; gap:11px; }
  .footer-grid a {
    font-size:.89rem; font-weight:500; color:rgba(232,226,214,.82);
    transition:color .18s var(--ease);
  }
  .footer-grid a:hover { color:#fff; }
  .footer-bottom {
    border-top:1px solid rgba(232,226,214,.14); padding-top:24px;
    display:flex; flex-wrap:wrap; gap:12px;
    justify-content:space-between; align-items:center;
    font-size:.81rem; color:rgba(232,226,214,.6); font-weight:500;
  }
  .footer-bottom strong { color:#e9a887; }

  /* ============ RESPONSIVE ============ */
  @media (max-width: 960px) {
    .hero { grid-template-columns:1fr; gap:44px; padding-block:48px; }
    .hero-art { order:-1; max-width:290px; }
    .value-inner { grid-template-columns:1fr 1fr; gap:22px 20px; }
    .value-item:nth-child(3) { border-left:none; padding-left:8px; }
    .footer-grid { grid-template-columns:1fr 1fr; }
  }

  @media (max-width: 720px) {
    .search-wrap { order:3; flex-basis:100%; }
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
    .card-title { font-size:.87rem; }
    .add-btn { padding:0 13px; }
    .add-btn span { display:none; }
    .value-inner { grid-template-columns:1fr; }
    .value-item + .value-item { border-left:none; padding-left:8px; }
    .footer-grid { grid-template-columns:1fr; gap:28px; }
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

<!-- ================= ANNOUNCEMENT ================= -->
<div class="announce">
  <i class="fa-solid fa-truck-fast" aria-hidden="true"></i>
  Free 2‑day shipping on orders over $75 — no code needed
</div>

<!-- ================= HEADER ================= -->
<header class="site-header">
  <div class="container header-inner">
    <a class="brand" href="#" aria-label="NovaMart home">
      <span class="brand-mark" aria-hidden="true"><i class="fa-solid fa-seedling"></i></span>
      <span class="brand-name">Nova<span>Mart</span></span>
    </a>

    <div class="search-wrap">
      <label class="sr-only" for="search">Search products</label>
      <i class="fa-solid fa-magnifying-glass search-icon" aria-hidden="true"></i>
      <input id="search" type="search" placeholder="Search the edit — products, brands, categories…" autocomplete="off" />
    </div>

    <div class="header-actions">
      <button class="cart-btn" id="cartBtn" aria-haspopup="dialog" aria-controls="cartDrawer">
        <i class="fa-solid fa-basket-shopping" aria-hidden="true"></i>
        <span class="cart-label">Basket</span>
        <span class="cart-count" id="cartCount" aria-hidden="true">0</span>
      </button>
    </div>
  </div>
</header>

<main id="main">

  <!-- ================= HERO ================= -->
  <section class="hero container">
    <div class="hero-copy">
      <p class="eyebrow"><i class="fa-solid fa-leaf" aria-hidden="true"></i> New season · curated edit</p>
      <h1>Everyday essentials,<br>crafted for <em>calmer living</em>.</h1>
      <p class="hero-sub">
        A small, considered collection of tech and home goods — chosen for how they feel,
        not just how they look. Honest prices, gentle shipping, easy returns.
      </p>
      <div class="hero-cta">
        <a class="btn btn-primary" href="#shop">Explore the collection</a>
        <a class="btn btn-ghost" href="#shop">See this week's picks</a>
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

  <!-- ================= VALUE STRIP ================= -->
  <section class="value-strip" aria-label="Why shop with us">
    <div class="container value-inner">
      <div class="value-item">
        <span class="value-icon" aria-hidden="true"><i class="fa-solid fa-truck-fast"></i></span>
        <div><strong>Fast, free delivery</strong>On orders over $75</div>
      </div>
      <div class="value-item">
        <span class="value-icon" aria-hidden="true"><i class="fa-solid fa-rotate-left"></i></span>
        <div><strong>30‑day returns</strong>No questions asked</div>
      </div>
      <div class="value-item">
        <span class="value-icon" aria-hidden="true"><i class="fa-solid fa-shield-halved"></i></span>
        <div><strong>Secure checkout</strong>Encrypted payments</div>
      </div>
      <div class="value-item">
        <span class="value-icon" aria-hidden="true"><i class="fa-solid fa-headset"></i></span>
        <div><strong>Real human support</strong>7 days a week</div>
      </div>
    </div>
  </section>

  <!-- ================= SHOP ================= -->
  <section class="shop container" id="shop" aria-labelledby="shopTitle">
    <div class="section-head">
      <h2 id="shopTitle">Browse the edit</h2>
      <p class="lead">Hand‑picked pieces for work, home and everything in between.</p>

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
          <span class="brand-mark" aria-hidden="true"><i class="fa-solid fa-seedling"></i></span>
          <span class="brand-name">Nova<span>Mart</span></span>
        </a>
        <p>Everyday essentials and smart tech, picked by people who actually use them.</p>
      </div>

      <div>
        <h4>Shop</h4>
        <ul>
          <li><a href="#shop">New arrivals</a></li>
          <li><a href="#shop">Best sellers</a></li>
          <li><a href="#shop">This week's deals</a></li>
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
      Your basket <span class="count-pill" id="cartPill">0</span>
    </h2>
    <button class="icon-btn" id="closeCart" type="button" aria-label="Close basket">
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
  <span id="toastText">Added to basket</span>
</div>
<p class="sr-only" aria-live="polite" id="srStatus"></p>

<script>
(function () {
  'use strict';

  /* ---------------- DATA ---------------- */
  const PRODUCTS = [
    { id:1,  name:'Aurora Wireless Headphones',  category:'Audio',       price:129, old:179, rating:4.8, reviews:1240, emoji:'🎧', tile:'#fbe4d5', badge:'Best seller' },
    { id:2,  name:'Pulse Smart Watch Series 5',  category:'Wearables',   price:199, old:249, rating:4.6, reviews:864,  emoji:'⌚', tile:'#e2ede4', badge:null },
    { id:3,  name:'Halo Warm Desk Lamp',         category:'Home',        price:59,  old:null,rating:4.7, reviews:412,  emoji:'💡', tile:'#f6ecd8', badge:'New' },
    { id:4,  name:'Nomad Leather Backpack',      category:'Accessories', price:89,  old:110, rating:4.5, reviews:508,  emoji:'🎒', tile:'#e8e2d6', badge:null },
    { id:5,  name:'Echo Mini Bluetooth Speaker', category:'Audio',       price:49,  old:null,rating:4.4, reviews:2103, emoji:'🔊', tile:'#e3eaec', badge:null },
    { id:6,  name:'Stride Running Shoes',        category:'Fitness',     price:119, old:null,rating:4.9, reviews:1876, emoji:'👟', tile:'#f3e0e8', badge:'Top rated' },
    { id:7,  name:'Vertex Mechanical Keyboard',  category:'Accessories', price:149, old:null,rating:4.7, reviews:934,  emoji:'⌨️', tile:'#e9e6f0', badge:null },
    { id:8,  name:'Terra Ceramic Mug Set',       category:'Home',        price:34,  old:null,rating:4.3, reviews:287,  emoji:'☕', tile:'#f5e6e0', badge:null },
    { id:9,  name:'Flux Fitness Tracker Band',   category:'Wearables',   price:79,  old:99,  rating:4.2, reviews:641,  emoji:'📿', tile:'#e2eef0', badge:null },
    { id:10, name:'Aero Non‑Slip Yoga Mat',      category:'Fitness',     price:45,  old:null,rating:4.6, reviews:753,  emoji:'🧘', tile:'#e7ede4', badge:null }
  ];

  const FREE_SHIPPING_THRESHOLD = 75;
  const STORAGE_KEY = 'novamart.cart.v2';

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
                    aria-label="Add ${p.name} to basket">
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
    showToast(`${product.name} added to basket`);
    srStatus.textContent = `${product.name} added to basket. ${cartQuantity()} items in basket.`;
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
          <div class="emoji" aria-hidden="true">🧺</div>
          <h3>Your basket is empty</h3>
          <p>Browse the edit and add something you love.</p>
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
