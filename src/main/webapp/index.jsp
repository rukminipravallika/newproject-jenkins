<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>NovaMart — Modern E‑Commerce Experience</title>
    <!-- Google Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-primary: #ffffff;
            --bg-secondary: #f8fafc;
            --surface: #ffffff;
            --text-primary: #0f172a;
            --text-secondary: #475569;
            --border-light: #e2e8f0;
            --accent: #3b82f6;
            --accent-dark: #2563eb;
            --accent-glow: rgba(59,130,246,0.2);
            --card-shadow: 0 20px 35px -12px rgba(0,0,0,0.05), 0 1px 2px rgba(0,0,0,0.02);
            --gradient-hero: linear-gradient(135deg, #0f172a 0%, #1e293b 100%);
            --success: #10b981;
            --danger: #ef4444;
            --radius-sm: 12px;
            --radius-md: 20px;
            --radius-full: 9999px;
            --transition: all 0.25s cubic-bezier(0.2, 0, 0, 1);
        }

        body.dark {
            --bg-primary: #0f172a;
            --bg-secondary: #1e293b;
            --surface: #1e293b;
            --text-primary: #f1f5f9;
            --text-secondary: #cbd5e1;
            --border-light: #334155;
            --card-shadow: 0 20px 35px -12px rgba(0,0,0,0.4);
        }

        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
            background: var(--bg-primary);
            color: var(--text-primary);
            transition: var(--transition);
            scroll-behavior: smooth;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 32px;
        }

        /* header modern glass */
        .glass-header {
            position: sticky;
            top: 0;
            z-index: 100;
            backdrop-filter: blur(12px);
            background: rgba(var(--bg-primary-rgb, 255,255,255), 0.75);
            border-bottom: 1px solid var(--border-light);
            background: color-mix(in srgb, var(--bg-primary) 85%, transparent);
        }
        body.dark .glass-header {
            background: color-mix(in srgb, #0f172a 90%, transparent);
        }

        .header-flex {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 16px 0;
        }

        .logo {
            font-size: 26px;
            font-weight: 800;
            background: linear-gradient(135deg, var(--accent), #8b5cf6);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }

        .nav-links {
            display: flex;
            gap: 28px;
            align-items: center;
        }

        .nav-link {
            font-weight: 600;
            transition: var(--transition);
            color: var(--text-secondary);
        }
        .nav-link:hover, .nav-link.active { color: var(--accent); }

        .search-bar {
            background: var(--bg-secondary);
            border-radius: var(--radius-full);
            padding: 8px 20px;
            display: flex;
            align-items: center;
            gap: 12px;
            border: 1px solid var(--border-light);
            transition: var(--transition);
            min-width: 260px;
        }
        .search-bar:focus-within { box-shadow: 0 0 0 3px var(--accent-glow); border-color: var(--accent); }
        .search-bar input {
            background: transparent;
            border: none;
            outline: none;
            font-size: 0.9rem;
            width: 100%;
            color: var(--text-primary);
        }

        .action-icons {
            display: flex;
            gap: 16px;
            align-items: center;
        }
        .icon-circle {
            background: var(--bg-secondary);
            width: 42px;
            height: 42px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border-radius: var(--radius-full);
            transition: var(--transition);
            cursor: pointer;
            border: 1px solid var(--border-light);
            color: var(--text-primary);
        }
        .icon-circle:hover { background: var(--accent); color: white; transform: translateY(-2px); }
        .cart-badge {
            position: relative;
        }
        .cart-count-badge {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--accent);
            color: white;
            font-size: 11px;
            font-weight: 800;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* hero section new */
        .hero-modern {
            background: var(--gradient-hero);
            border-radius: 0 0 48px 48px;
            margin-bottom: 40px;
            padding: 80px 0;
            position: relative;
            overflow: hidden;
        }
        .hero-modern::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: radial-gradient(circle at 20% 30%, rgba(59,130,246,0.15), transparent 70%);
        }
        .hero-content {
            position: relative;
            z-index: 2;
            text-align: center;
            color: white;
        }
        .hero-badge {
            background: rgba(255,255,255,0.2);
            backdrop-filter: blur(4px);
            display: inline-block;
            padding: 6px 18px;
            border-radius: 40px;
            font-size: 0.8rem;
            font-weight: 600;
            margin-bottom: 20px;
        }
        .hero-content h1 {
            font-size: 56px;
            font-weight: 800;
            letter-spacing: -0.02em;
            margin-bottom: 20px;
        }
        .hero-buttons {
            display: flex;
            gap: 16px;
            justify-content: center;
            margin-top: 32px;
        }
        .btn-primary {
            background: var(--accent);
            color: white;
            padding: 12px 32px;
            border-radius: var(--radius-full);
            font-weight: 700;
            border: none;
            cursor: pointer;
            transition: var(--transition);
        }
        .btn-primary:hover { background: var(--accent-dark); transform: scale(1.02); box-shadow: 0 10px 20px -5px rgba(59,130,246,0.4);}
        .btn-outline-light {
            background: transparent;
            border: 1.5px solid rgba(255,255,255,0.5);
            color: white;
            padding: 12px 32px;
            border-radius: var(--radius-full);
            font-weight: 600;
            transition: var(--transition);
            cursor: pointer;
        }

        /* category cards modern */
        .section-header {
            text-align: center;
            margin-bottom: 48px;
        }
        .section-header h2 {
            font-size: 32px;
            font-weight: 800;
        }
        .category-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 24px;
            margin-bottom: 64px;
        }
        .category-card {
            background: var(--surface);
            border-radius: var(--radius-md);
            padding: 28px 16px;
            text-align: center;
            transition: var(--transition);
            border: 1px solid var(--border-light);
            cursor: pointer;
            backdrop-filter: blur(4px);
        }
        .category-card:hover {
            transform: translateY(-8px);
            border-color: var(--accent);
            box-shadow: var(--card-shadow);
        }
        .category-icon {
            font-size: 40px;
            color: var(--accent);
            margin-bottom: 16px;
        }

        /* product grid - premium style */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 32px;
            margin-bottom: 60px;
        }
        .product-card {
            background: var(--surface);
            border-radius: var(--radius-md);
            overflow: hidden;
            transition: var(--transition);
            border: 1px solid var(--border-light);
            position: relative;
        }
        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--card-shadow);
        }
        .product-img {
            width: 100%;
            height: 260px;
            object-fit: cover;
            transition: transform 0.4s ease;
        }
        .product-card:hover .product-img { transform: scale(1.03); }
        .product-info {
            padding: 20px;
        }
        .product-title {
            font-weight: 700;
            font-size: 1.1rem;
            margin-bottom: 8px;
        }
        .price-tag {
            font-weight: 800;
            font-size: 1.3rem;
            color: var(--accent);
        }
        .old-price-tag {
            font-size: 0.85rem;
            text-decoration: line-through;
            color: var(--text-secondary);
            margin-left: 8px;
        }
        .product-actions {
            display: flex;
            gap: 12px;
            margin-top: 16px;
        }
        .btn-add {
            flex: 1;
            background: var(--bg-secondary);
            border: 1px solid var(--border-light);
            padding: 10px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
            color: var(--text-primary);
        }
        .btn-add:hover { background: var(--accent); color: white; border-color: var(--accent); }

        /* flash sale section premium */
        .flash-sale {
            background: linear-gradient(110deg, var(--surface) 0%, var(--bg-secondary) 100%);
            border-radius: 48px;
            padding: 48px;
            margin: 48px 0;
            border: 1px solid var(--border-light);
        }
        .sale-flex {
            display: flex;
            flex-wrap: wrap;
            gap: 40px;
            align-items: center;
        }
        .sale-image {
            flex: 1;
            border-radius: 32px;
            overflow: hidden;
            max-height: 320px;
        }
        .sale-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .sale-content {
            flex: 1;
        }
        .timer-group {
            display: flex;
            gap: 16px;
            margin: 24px 0;
        }
        .time-card {
            background: var(--bg-primary);
            padding: 12px 18px;
            border-radius: 20px;
            text-align: center;
            min-width: 70px;
            box-shadow: 0 5px 12px rgba(0,0,0,0.05);
        }
        .time-number {
            font-size: 32px;
            font-weight: 800;
            color: var(--accent);
        }

        /* testimonials carousel style */
        .testimonial-scroll {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding: 12px 4px 24px;
            scrollbar-width: thin;
        }
        .testimonial-card {
            min-width: 320px;
            background: var(--surface);
            border-radius: 28px;
            padding: 28px;
            border: 1px solid var(--border-light);
        }

        /* newsletter modern */
        .newsletter-modern {
            background: linear-gradient(120deg, var(--accent) 0%, #8b5cf6 100%);
            border-radius: 48px;
            padding: 56px 32px;
            text-align: center;
            color: white;
        }
        .newsletter-form {
            display: flex;
            justify-content: center;
            gap: 12px;
            flex-wrap: wrap;
            margin-top: 24px;
        }
        .newsletter-form input {
            padding: 14px 24px;
            border-radius: 60px;
            border: none;
            width: 300px;
            background: rgba(255,255,255,0.95);
            font-size: 1rem;
        }

        /* footer new */
        .footer-modern {
            margin-top: 60px;
            padding: 48px 0 32px;
            border-top: 1px solid var(--border-light);
        }


        /* User-friendly improvements */
        a { text-decoration: none; }
        button, input { font: inherit; }
        button:focus-visible, a:focus-visible, input:focus-visible {
            outline: 3px solid var(--accent-glow);
            outline-offset: 3px;
        }
        .nav-link { text-decoration: none; }
        .section-header p { margin-top: 8px; }
        .category-card[aria-pressed="true"] {
            border-color: var(--accent);
            background: color-mix(in srgb, var(--accent) 8%, var(--surface));
        }
        .product-card { display: flex; flex-direction: column; }
        .product-info { display: flex; flex-direction: column; flex: 1; }
        .product-actions { margin-top: auto; padding-top: 16px; }
        .product-img { background: var(--bg-secondary); }
        .empty-state {
            grid-column: 1 / -1;
            padding: 44px 20px;
            text-align: center;
            background: var(--bg-secondary);
            border: 1px dashed var(--border-light);
            border-radius: var(--radius-md);
            color: var(--text-secondary);
        }
        .search-wrap { position: relative; }
        .search-clear {
            color: var(--text-secondary);
            padding: 6px;
            border-radius: 50%;
        }
        .search-clear:hover { color: var(--accent); }
        .icon-circle[aria-label] { flex: 0 0 auto; }
        .mobile-menu-btn { display: none; }
        .mobile-nav {
            display: none;
            padding: 0 0 16px;
            gap: 10px;
            flex-wrap: wrap;
        }
        .mobile-nav.open { display: flex; }
        .mobile-nav a {
            padding: 10px 14px;
            border-radius: 12px;
            background: var(--bg-secondary);
            color: var(--text-primary);
            font-weight: 600;
        }
        .cart-panel {
            position: fixed;
            inset: 0 0 0 auto;
            width: min(420px, 100%);
            background: var(--surface);
            color: var(--text-primary);
            z-index: 300;
            box-shadow: -16px 0 50px rgba(15,23,42,.18);
            padding: 24px;
            transform: translateX(105%);
            transition: transform .25s ease;
            overflow-y: auto;
        }
        .cart-panel.open { transform: translateX(0); }
        .cart-overlay {
            position: fixed; inset: 0; z-index: 299;
            background: rgba(15,23,42,.45); display: none;
        }
        .cart-overlay.open { display: block; }
        .cart-line {
            display: flex; justify-content: space-between; gap: 12px;
            padding: 14px 0; border-bottom: 1px solid var(--border-light);
        }
        .cart-line button { color: var(--danger); font-weight: 700; }
        .wishlist-btn.active { color: #e11d48; border-color: #e11d48; }
        .product-actions .wishlist-btn { flex: 0 0 46px; }
        .toast-message {
            position: fixed; bottom: 24px; left: 50%; transform: translateX(-50%);
            z-index: 500; background: var(--text-primary); color: var(--bg-primary);
            padding: 12px 20px; border-radius: 14px; box-shadow: var(--card-shadow);
            max-width: calc(100% - 32px); text-align: center;
        }
        .newsletter-modern p { margin-top: 8px; }
        .newsletter-form input { color: #0f172a; }
        .footer-modern p { color: var(--text-secondary); line-height: 1.9; }
        .footer-modern h4 { margin-bottom: 10px; }
        @media (max-width: 900px) {
            .header-flex { gap: 14px; }
            .mobile-menu-btn { display: inline-flex; }
            .nav-links { display: none; }
            .search-bar { min-width: 180px; max-width: 260px; }
            .hero-modern { padding: 64px 0; }
        }
        @media (max-width: 640px) {
            .container { padding: 0 16px; }
            .header-flex { flex-wrap: wrap; padding: 12px 0; }
            .logo { font-size: 22px; }
            .search-bar { display: flex; order: 3; width: 100%; max-width: none; }
            .action-icons { gap: 8px; margin-left: auto; }
            .icon-circle { width: 38px; height: 38px; }
            .hero-modern { border-radius: 0 0 28px 28px; padding: 52px 0; }
            .hero-content h1 { font-size: clamp(32px, 9vw, 42px); }
            .hero-content p { font-size: 1rem !important; }
            .hero-buttons { flex-direction: column; align-items: stretch; max-width: 280px; margin: 24px auto 0; }
            .section-header { margin-bottom: 26px; }
            .section-header h2 { font-size: 26px; }
            .category-grid { grid-template-columns: repeat(2, minmax(0, 1fr)); gap: 12px; margin-bottom: 44px; }
            .category-card { padding: 20px 10px; }
            .category-icon { font-size: 32px; margin-bottom: 10px; }
            .product-grid { grid-template-columns: repeat(2, minmax(0, 1fr)); gap: 12px; margin-bottom: 44px; }
            .product-img { height: 155px; }
            .product-info { padding: 12px; }
            .product-title { font-size: .95rem; min-height: 2.5em; }
            .price-tag { font-size: 1.05rem; }
            .product-actions { gap: 6px; }
            .btn-add { font-size: .8rem; padding: 9px 6px; }
            .product-actions .wishlist-btn { flex-basis: 38px; }
            .flash-sale { border-radius: 24px; padding: 20px; margin: 32px 0; }
            .sale-flex { gap: 20px; }
            .sale-image { flex-basis: 100%; max-height: 190px; }
            .sale-content h2 { font-size: 28px !important; }
            .timer-group { gap: 7px; flex-wrap: wrap; }
            .time-card { min-width: 60px; padding: 9px; flex: 1; }
            .time-number { font-size: 24px; }
            .testimonial-card { min-width: 260px; }
            .newsletter-modern { border-radius: 24px; padding: 34px 18px; }
            .newsletter-form input { width: 100%; }
            .newsletter-form button { width: 100%; }
            .footer-modern .container { flex-direction: column; }
        }
        @media (prefers-reduced-motion: reduce) {
            *, *::before, *::after { scroll-behavior: auto !important; transition: none !important; }
        }

        /* responsive */
        @media (max-width: 900px) {
            .nav-links { display: none; }
            .search-bar { max-width: 180px; }
            .hero-content h1 { font-size: 38px; }
            .container { padding: 0 20px; }
        }
        @media (max-width: 640px) {
            .search-bar { display: none; }
            .category-grid { grid-template-columns: repeat(2,1fr); }
            .product-grid { grid-template-columns: 1fr; }
        }
        button { background: none; border: none; cursor: pointer; }
        .theme-toggle { cursor: pointer; }
    </style>
</head>
<body>
    <header class="glass-header">
        <div class="container header-flex">
            <a class="logo" href="#home" aria-label="NovaMart home"><i class="fas fa-bolt" style="color: #3b82f6;"></i> NovaMart</a>
            <div class="nav-links">
                <a href="#home" class="nav-link active">Home</a>
                <a href="#productsSection" class="nav-link">Shop</a>
                <a href="#dealsSection" class="nav-link">Deals</a>
                <a href="#testimonialList" class="nav-link">Reviews</a>
            </div>
            <label class="search-bar" for="globalSearch">
                <i class="fas fa-search" style="color: var(--text-secondary);" aria-hidden="true"></i>
                <input type="search" id="globalSearch" placeholder="Search products..." aria-label="Search products">
                <button class="search-clear" id="clearSearch" type="button" aria-label="Clear search" title="Clear search"><i class="fas fa-times"></i></button>
            </label>
            <div class="action-icons">
                <button class="icon-circle mobile-menu-btn" id="mobileMenuBtn" type="button" aria-label="Open navigation menu" title="Menu"><i class="fas fa-bars"></i></button>
                <button class="icon-circle theme-toggle" id="themeToggle" type="button" aria-label="Switch color theme" title="Switch color theme"><i class="fas fa-moon"></i></button>
                <button class="icon-circle" id="wishlistIconBtn" type="button" aria-label="View saved items" title="Saved items"><i class="far fa-heart"></i></button>
                <button class="icon-circle cart-badge" id="cartIconBtn" type="button" aria-label="Open shopping cart" title="Shopping cart">
                    <i class="fas fa-bag-shopping"></i>
                    <span class="cart-count-badge" id="cartCountDisplay">0</span>
                </button>
            </div>
            <nav class="mobile-nav" id="mobileNav" aria-label="Mobile navigation">
                <a href="#home">Home</a><a href="#productsSection">Shop</a><a href="#dealsSection">Deals</a><a href="#testimonialList">Reviews</a>
            </nav>
        </div>
    </header>

    <main id="home">
        <!-- Hero revamped -->
        <section class="hero-modern">
            <div class="container hero-content">
                <div class="hero-badge"><i class="fas fa-gem"></i> Limited Edition Drops</div>
                <h1>Make Your <span style="color: #3b82f6;">EveryDay</span> Style</h1>
                <p style="font-size: 1.2rem; max-width: 600px; margin: 0 auto; opacity: 0.9;">premium materials, and exclusive flash sales.</p>
                <div class="hero-buttons">
                    <button class="btn-primary" id="shopNowHero">Shop collection <i class="fas fa-arrow-right"></i></button>
                    <button class="btn-outline-light" id="exploreDealsHero">Explore deals</button>
                </div>
            </div>
        </section>

        <div class="container">
            <!-- Categories Section -->
            <div class="section-header">
                <h2>Curated Categories</h2>
                <p style="color: var(--text-secondary)">Shop by interest — handpicked for you</p>
            </div>
            <div class="category-grid" id="categoryGrid"></div>

            <!-- Products section -->
            <div class="section-header" id="productsSection">
                <h2>✨ Trending Now</h2>
                <p style="color: var(--text-secondary)">Most loved by our community</p>
            </div>
            <div class="product-grid" id="productGrid"></div>

            <!-- Flash Sale Premium -->
            <div id="dealsSection">
                <div class="flash-sale">
                    <div class="sale-flex">
                        <div class="sale-image">
                            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Pro">
                        </div>
                        <div class="sale-content">
                            <h2 style="font-size: 36px; font-weight: 800;">⚡ Flash Sale</h2>
                            <p style="margin: 12px 0">MacBook Pro M3 — up to 20% off + exclusive bundle</p>
                            <div class="timer-group" id="countdownTimer">
                                <div class="time-card"><div class="time-number" id="days">00</div><span>Days</span></div>
                                <div class="time-card"><div class="time-number" id="hours">00</div><span>Hours</span></div>
                                <div class="time-card"><div class="time-number" id="minutes">00</div><span>Mins</span></div>
                                <div class="time-card"><div class="time-number" id="seconds">00</div><span>Secs</span></div>
                            </div>
                            <div class="price-tag" style="font-size: 32px;">$1,299 <span class="old-price-tag" style="font-size: 20px;">$1,699</span></div>
                            <button class="btn-primary" id="flashDealBtn" style="margin-top: 20px;">Grab Deal Now <i class="fas fa-arrow-right"></i></button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Testimonials -->
            <div class="section-header">
                <h2>❤️ Customer Love</h2>
                <p>Real stories from real shoppers</p>
            </div>
            <div class="testimonial-scroll" id="testimonialList"></div>

            <!-- Newsletter Premium -->
            <div class="newsletter-modern">
                <h3 style="font-size: 28px;">Join the inner circle</h3>
                <p>Get early access to sales, new arrivals & exclusive rewards</p>
                <form id="newsletterFormModern" class="newsletter-form">
                    <input type="email" id="newsEmail" placeholder="you@example.com" required>
                    <button type="submit" class="btn-primary" style="background: white; color: #0f172a;">Subscribe →</button>
                </form>
                <div id="newsletterMsgModern" style="margin-top: 16px; font-size: 14px;"></div>
            </div>
        </div>
    </main>

    <div class="cart-overlay" id="cartOverlay" aria-hidden="true"></div>
    <aside class="cart-panel" id="cartPanel" aria-label="Shopping cart" aria-hidden="true">
        <div style="display:flex;align-items:center;justify-content:space-between;gap:12px;margin-bottom:22px;">
            <h2>Your cart</h2>
            <button class="icon-circle" id="closeCartBtn" type="button" aria-label="Close cart"><i class="fas fa-times"></i></button>
        </div>
        <div id="cartItems"><p style="color:var(--text-secondary)">Your cart is empty. Add something you love.</p></div>
        <div style="border-top:1px solid var(--border-light);margin-top:20px;padding-top:18px;">
            <div style="display:flex;justify-content:space-between;font-weight:800;font-size:1.1rem;"><span>Subtotal</span><span id="cartSubtotal">$0</span></div>
            <p style="color:var(--text-secondary);font-size:.85rem;margin:8px 0 16px;">Shipping and taxes are calculated at checkout.</p>
            <button class="btn-primary" id="checkoutBtn" type="button" style="width:100%;">Continue to checkout</button>
        </div>
    </aside>

    <footer class="footer-modern">
        <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 32px;">
            <div><div class="logo" style="font-size: 24px;">NovaMart</div><p style="margin-top: 12px; max-width: 260px;">Next-gen e-commerce experience. Innovation meets style.</p></div>
            <div><h4>Explore</h4><p>About<br>Careers<br>Sustainability</p></div>
            <div><h4>Support</h4><p>Help Center<br>Returns<br>Contact</p></div>
        </div>
        <div class="container" style="text-align: center; margin-top: 48px; padding-top: 24px; border-top: 1px solid var(--border-light);">© 2026 NovaMart — Redefining modern retail</div>
    </footer>

    <script>
        const CATEGORIES = [
            { id: "audio", name: "Audio & Hi-Fi", icon: "fa-headphones" },
            { id: "wearables", name: "Wearables", icon: "fa-clock" },
            { id: "gaming", name: "Gaming Gear", icon: "fa-gamepad" },
            { id: "fashion", name: "Streetwear", icon: "fa-shirt" },
            { id: "accessories", name: "Luxury Accessories", icon: "fa-gem" },
            { id: "smart-home", name: "Smart Home", icon: "fa-house-signal" }
        ];

        const PRODUCTS = [
            { id: 101, title: "Sony WH-1000XM6", price: 399, oldPrice: 499, rating: 5, reviews: 324, img: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80", category: "audio", badge: "Best seller" },
            { id: 102, title: "Apple Watch Ultra 2", price: 749, oldPrice: 799, rating: 5, reviews: 512, img: "https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=600&q=80", category: "wearables", badge: "New" },
            { id: 103, title: "Razer Blade 16", price: 2799, oldPrice: 3199, rating: 4.8, reviews: 210, img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80", category: "gaming" },
            { id: 104, title: "Off-White Hoodie", price: 420, oldPrice: 650, rating: 4.7, reviews: 89, img: "https://images.unsplash.com/photo-1556905055-8f358a7a47b2?auto=format&fit=crop&w=600&q=80", category: "fashion", badge: "Limited" },
            { id: 105, title: "Dyson V15 Detect", price: 599, oldPrice: 749, rating: 4.9, reviews: 178, img: "https://images.unsplash.com/photo-1558317374-067fb5f30001?auto=format&fit=crop&w=600&q=80", category: "smart-home" },
            { id: 106, title: "Bose QC Ultra", price: 379, oldPrice: 429, rating: 4.9, reviews: 267, img: "https://images.unsplash.com/photo-1583394838336-acd977736f90?auto=format&fit=crop&w=600&q=80", category: "audio" }
        ];

        const testimonialsData = [
            { name: "Sophia Chen", text: "Absolutely love the minimalist design and fast shipping. My new favorite store.", rating: 5, avatar: "https://randomuser.me/api/portraits/women/68.jpg" },
            { name: "James Walker", text: "The flash sale was insane! Grabbed the MacBook at an incredible price.", rating: 5, avatar: "https://randomuser.me/api/portraits/men/32.jpg" },
            { name: "Elena Rodriguez", text: "Customer support helped me within minutes. Premium experience all the way.", rating: 4.9, avatar: "https://randomuser.me/api/portraits/women/44.jpg" }
        ];

        let cart = [];
        let wishlist = new Set();
        let activeCategory = "";
        let countdownInterval;

        const $ = (id) => document.getElementById(id);
        const categoryGrid = $("categoryGrid");
        const productGrid = $("productGrid");
        const searchInput = $("globalSearch");

        function money(value) { return "$" + value.toLocaleString("en-US"); }

        function renderCategories() {
            categoryGrid.innerHTML = CATEGORIES.map(cat => `
                <button class="category-card" type="button" data-cat="${cat.id}" aria-pressed="${activeCategory === cat.id}">
                    <span class="category-icon"><i class="fas ${cat.icon}" aria-hidden="true"></i></span>
                    <strong>${cat.name}</strong>
                    <span style="display:block;font-size:13px;color:var(--text-secondary);margin-top:6px;">Browse category →</span>
                </button>
            `).join("");
            categoryGrid.querySelectorAll("[data-cat]").forEach(card => {
                card.addEventListener("click", () => {
                    activeCategory = activeCategory === card.dataset.cat ? "" : card.dataset.cat;
                    renderCategories();
                    applyFilters();
                    $("productsSection").scrollIntoView({ behavior: "smooth", block: "start" });
                });
            });
        }

        function renderProducts(items) {
            if (!items.length) {
                productGrid.innerHTML = `<div class="empty-state"><i class="fas fa-magnifying-glass" style="font-size:28px;margin-bottom:12px;"></i><h3>No products found</h3><p style="margin:8px 0 16px;">Try another search or clear your filters.</p><button class="btn-primary" id="resetFilters" type="button">Show all products</button></div>`;
                $("resetFilters").addEventListener("click", resetFilters);
                return;
            }
            productGrid.innerHTML = items.map(p => `
                <article class="product-card">
                    ${p.badge ? `<span style="position:absolute;top:12px;left:12px;background:var(--accent);color:white;padding:5px 12px;border-radius:40px;font-size:12px;font-weight:700;z-index:2;">${p.badge}</span>` : ""}
                    <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                    <div class="product-info">
                        <div class="product-title">${p.title}</div>
                        <div style="display:flex;align-items:baseline;gap:6px;margin:8px 0;">
                            <span class="price-tag">${money(p.price)}</span>
                            ${p.oldPrice ? `<span class="old-price-tag">${money(p.oldPrice)}</span>` : ""}
                        </div>
                        <div aria-label="${p.rating} out of 5 stars"><i class="fas fa-star" style="color:#fbbf24;" aria-hidden="true"></i> ${p.rating} <span style="color:var(--text-secondary);">(${p.reviews} reviews)</span></div>
                        <div class="product-actions">
                            <button class="btn-add" type="button" data-add="${p.id}"><i class="fas fa-bag-shopping" aria-hidden="true"></i> Add to cart</button>
                            <button class="btn-add wishlist-btn ${wishlist.has(p.id) ? "active" : ""}" type="button" data-wish="${p.id}" aria-label="${wishlist.has(p.id) ? "Remove from" : "Add to"} saved items" title="Save item"><i class="${wishlist.has(p.id) ? "fas" : "far"} fa-heart"></i></button>
                        </div>
                    </div>
                </article>
            `).join("");

            productGrid.querySelectorAll("[data-add]").forEach(btn => btn.addEventListener("click", () => addToCart(Number(btn.dataset.add))));
            productGrid.querySelectorAll("[data-wish]").forEach(btn => btn.addEventListener("click", () => toggleWishlist(Number(btn.dataset.wish))));
        }

        function applyFilters() {
            const query = searchInput.value.trim().toLowerCase();
            const filtered = PRODUCTS.filter(p => {
                const category = CATEGORIES.find(c => c.id === p.category);
                const matchesQuery = !query || p.title.toLowerCase().includes(query) || p.category.includes(query) || (category && category.name.toLowerCase().includes(query));
                const matchesCategory = !activeCategory || p.category === activeCategory;
                return matchesQuery && matchesCategory;
            });
            renderProducts(filtered);
        }

        function resetFilters() {
            activeCategory = "";
            searchInput.value = "";
            renderCategories();
            applyFilters();
        }

        function addToCart(id) {
            const product = PRODUCTS.find(p => p.id === id);
            if (!product) return;
            const line = cart.find(item => item.id === id);
            if (line) line.quantity += 1;
            else cart.push({ ...product, quantity: 1 });
            updateCart();
            showToast(`${product.title} added to your cart`);
        }

        function updateCart() {
            const count = cart.reduce((sum, item) => sum + item.quantity, 0);
            $("cartCountDisplay").textContent = count;
            $("cartItems").innerHTML = cart.length ? cart.map(item => `
                <div class="cart-line">
                    <div><strong>${item.title}</strong><div style="color:var(--text-secondary);font-size:.9rem;">${money(item.price)} × ${item.quantity}</div></div>
                    <div style="text-align:right;"><strong>${money(item.price * item.quantity)}</strong><br><button type="button" data-remove="${item.id}">Remove</button></div>
                </div>
            `).join("") : `<p style="color:var(--text-secondary)">Your cart is empty. Add something you love.</p>`;
            $("cartSubtotal").textContent = money(cart.reduce((sum, item) => sum + item.price * item.quantity, 0));
            $("cartItems").querySelectorAll("[data-remove]").forEach(btn => btn.addEventListener("click", () => {
                cart = cart.filter(item => item.id !== Number(btn.dataset.remove));
                updateCart();
            }));
        }

        function toggleCart(open) {
            $("cartPanel").classList.toggle("open", open);
            $("cartOverlay").classList.toggle("open", open);
            $("cartPanel").setAttribute("aria-hidden", String(!open));
            $("cartOverlay").setAttribute("aria-hidden", String(!open));
            if (open) $("closeCartBtn").focus();
            else $("cartIconBtn").focus();
        }

        function toggleWishlist(id) {
            const product = PRODUCTS.find(p => p.id === id);
            if (wishlist.has(id)) {
                wishlist.delete(id);
                showToast(`${product.title} removed from saved items`);
            } else {
                wishlist.add(id);
                showToast(`${product.title} saved for later`);
            }
            applyFilters();
        }

        function showToast(message) {
            const oldToast = document.querySelector(".toast-message");
            if (oldToast) oldToast.remove();
            const toast = document.createElement("div");
            toast.className = "toast-message";
            toast.setAttribute("role", "status");
            toast.textContent = message;
            document.body.appendChild(toast);
            setTimeout(() => toast.remove(), 2300);
        }

        function renderTestimonials() {
            $("testimonialList").innerHTML = testimonialsData.map(t => `
                <article class="testimonial-card">
                    <div style="display:flex;gap:12px;align-items:center;margin-bottom:14px;">
                        <img src="${t.avatar}" alt="" loading="lazy" style="width:48px;height:48px;border-radius:50%;object-fit:cover;">
                        <div><strong>${t.name}</strong><div style="color:#fbbf24;">${"★".repeat(Math.floor(t.rating))} <span style="color:var(--text-secondary);">${t.rating}/5</span></div></div>
                    </div>
                    <p style="line-height:1.55;">“${t.text}”</p>
                </article>
            `).join("");
        }

        function startCountdown() {
            const targetDate = new Date();
            targetDate.setDate(targetDate.getDate() + 2);
            targetDate.setHours(targetDate.getHours() + 5);
            function update() {
                const diff = Math.max(0, targetDate - new Date());
                $("days").textContent = String(Math.floor(diff / 86400000)).padStart(2, "0");
                $("hours").textContent = String(Math.floor(diff / 3600000) % 24).padStart(2, "0");
                $("minutes").textContent = String(Math.floor(diff / 60000) % 60).padStart(2, "0");
                $("seconds").textContent = String(Math.floor(diff / 1000) % 60).padStart(2, "0");
            }
            update();
            countdownInterval = setInterval(update, 1000);
        }

        $("themeToggle").addEventListener("click", () => {
            document.body.classList.toggle("dark");
            const dark = document.body.classList.contains("dark");
            $("themeToggle").innerHTML = `<i class="fas ${dark ? "fa-sun" : "fa-moon"}" aria-hidden="true"></i>`;
            $("themeToggle").setAttribute("aria-label", dark ? "Switch to light theme" : "Switch to dark theme");
        });
        $("cartIconBtn").addEventListener("click", () => toggleCart(true));
        $("closeCartBtn").addEventListener("click", () => toggleCart(false));
        $("cartOverlay").addEventListener("click", () => toggleCart(false));
        $("wishlistIconBtn").addEventListener("click", () => {
            const saved = PRODUCTS.filter(p => wishlist.has(p.id));
            if (!saved.length) showToast("You have no saved items yet");
            else {
                activeCategory = "";
                searchInput.value = "";
                renderProducts(saved);
                $("productsSection").scrollIntoView({ behavior: "smooth" });
                showToast(`${saved.length} saved item(s) shown`);
            }
        });
        $("clearSearch").addEventListener("click", () => { searchInput.value = ""; applyFilters(); searchInput.focus(); });
        searchInput.addEventListener("input", applyFilters);
        $("shopNowHero").addEventListener("click", () => $("productsSection").scrollIntoView({ behavior: "smooth" }));
        $("exploreDealsHero").addEventListener("click", () => $("dealsSection").scrollIntoView({ behavior: "smooth" }));
        $("flashDealBtn").addEventListener("click", () => {
            showToast("Flash deal selected. Add-to-cart checkout is a demo in this front-end.");
            toggleCart(true);
        });
        $("checkoutBtn").addEventListener("click", () => showToast("Checkout is a demo. Connect a payment backend to accept orders."));
        $("mobileMenuBtn")?.addEventListener("click", () => $("mobileNav").classList.toggle("open"));
        document.querySelectorAll("#mobileNav a").forEach(link => link.addEventListener("click", () => $("mobileNav").classList.remove("open")));
        $("newsletterFormModern").addEventListener("submit", (event) => {
            event.preventDefault();
            const email = $("newsEmail").value.trim();
            if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
                $("newsletterMsgModern").textContent = "Please enter a valid email address.";
                $("newsletterMsgModern").style.color = "#ffe0e0";
                return;
            }
            $("newsletterMsgModern").textContent = `Thanks! ${email} has been added to this demo subscription list.`;
            $("newsletterMsgModern").style.color = "#e7fff3";
            $("newsEmail").value = "";
        });

        function init() {
            renderCategories();
            renderProducts(PRODUCTS);
            renderTestimonials();
            updateCart();
            startCountdown();
        }
        init();
        window.addEventListener("beforeunload", () => clearInterval(countdownInterval));
    </script>
</body>
</html>
