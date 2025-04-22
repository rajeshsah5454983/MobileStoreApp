<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MobiStore - Your Ultimate Mobile Shopping Destination</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        :root {
            --primary-color: #ff3a6d;
            --secondary-color: #2d3a4b;
            --light-gray: #f8f9fa;
            --dark-gray: #6c757d;
            --white: #ffffff;
            --black: #000000;
            --transition: all 0.3s ease;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            font-size: 16px;
            line-height: 1.6;
            color: var(--black);
            overflow-x: hidden;
        }

        /* Header Styles */
        header {
            background-color: var(--white);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: fixed;
            width: 100%;
            z-index: 1000;
            top: 0;
        }

        .top-header {
            background-color: var(--secondary-color);
            color: var(--white);
            padding: 10px 0;
            font-size: 14px;
        }

        .top-header-container {
            display: flex;
            justify-content: space-between;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 15px;
        }

        .contact-info {
            display: flex;
            align-items: center;
        }

        .contact-info span {
            margin-right: 20px;
        }

        .contact-info i {
            margin-right: 5px;
        }

        .top-nav ul {
            display: flex;
            list-style: none;
        }

        .top-nav ul li {
            margin-left: 15px;
        }

        .top-nav ul li a {
            color: var(--white);
            text-decoration: none;
            transition: var(--transition);
        }

        .top-nav ul li a:hover {
            color: var(--primary-color);
        }

        .main-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px 15px;
        }

        .logo {
            font-size: 24px;
            font-weight: 700;
            color: var(--primary-color);
            text-decoration: none;
        }

        .logo span {
            color: var(--secondary-color);
        }

        .search-bar {
            flex: 1;
            max-width: 500px;
            margin: 0 20px;
            position: relative;
        }

        .search-bar input {
            width: 100%;
            padding: 10px 15px;
            border: 1px solid #ddd;
            border-radius: 50px;
            outline: none;
            transition: var(--transition);
        }

        .search-bar input:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 5px rgba(255, 58, 109, 0.3);
        }

        .search-bar button {
            position: absolute;
            right: 10px;
            top: 50%;
            transform: translateY(-50%);
            background: transparent;
            border: none;
            color: var(--dark-gray);
            cursor: pointer;
        }

        .header-icons {
            display: flex;
            align-items: center;
        }

        .header-icon {
            margin-left: 20px;
            position: relative;
            color: var(--secondary-color);
            font-size: 20px;
            transition: var(--transition);
        }

        .header-icon:hover {
            color: var(--primary-color);
        }

        .header-icon span {
            position: absolute;
            top: -8px;
            right: -8px;
            background-color: var(--primary-color);
            color: white;
            width: 18px;
            height: 18px;
            font-size: 10px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        nav {
            background-color: var(--secondary-color);
        }

        .nav-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 15px;
        }

        .nav-menu {
            display: flex;
            list-style: none;
        }

        .nav-menu li {
            position: relative;
        }

        .nav-menu li a {
            color: var(--white);
            text-decoration: none;
            padding: 15px 20px;
            display: block;
            transition: var(--transition);
        }

        .nav-menu li a:hover {
            background-color: var(--primary-color);
        }

        /* Hero Section */
        .hero {
            height: 600px;
            background-image: url('https://cdn.mos.cms.futurecdn.net/xhZ7qj7vf25Ep878LSVZpC-1200-80.jpg');
            background-size: cover;
            background-position: center;
            margin-top: 135px;
            position: relative;
        }

        .hero-content {
            position: absolute;
            top: 50%;
            left: 10%;
            transform: translateY(-50%);
            max-width: 500px;
            color: var(--white);
        }

        .hero-content h1 {
            font-size: 48px;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }

        .hero-content p {
            font-size: 18px;
            margin-bottom: 30px;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
        }

        .btn {
            padding: 12px 25px;
            background-color: var(--primary-color);
            color: var(--white);
            border: none;
            border-radius: 50px;
            cursor: pointer;
            font-weight: 600;
            text-transform: uppercase;
            transition: var(--transition);
            text-decoration: none;
            display: inline-block;
        }

        .btn:hover {
            background-color: var(--secondary-color);
            transform: translateY(-3px);
        }

        /* Features Section */
        .features {
            padding: 80px 0;
            background-color: var(--light-gray);
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 15px;
        }

        .section-title {
            text-align: center;
            margin-bottom: 50px;
        }

        .section-title h2 {
            font-size: 36px;
            color: var(--secondary-color);
            margin-bottom: 10px;
        }

        .section-title p {
            color: var(--dark-gray);
        }

        .feature-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px;
        }

        .feature-item {
            background-color: var(--white);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            text-align: center;
            transition: var(--transition);
        }

        .feature-item:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .feature-icon {
            font-size: 40px;
            color: var(--primary-color);
            margin-bottom: 20px;
        }

        .feature-item h3 {
            font-size: 22px;
            margin-bottom: 15px;
            color: var(--secondary-color);
        }

        /* Popular Products */
        .products {
            padding: 80px 0;
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 30px;
        }

        .product-card {
            background-color: var(--white);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: var(--transition);
        }

        .product-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .product-image {
            height: 250px;
            overflow: hidden;
            position: relative;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }

        .product-card:hover .product-image img {
            transform: scale(1.1);
        }

        .product-badge {
            position: absolute;
            top: 10px;
            left: 10px;
            background-color: var(--primary-color);
            color: var(--white);
            padding: 5px 10px;
            border-radius: 5px;
            font-size: 12px;
            font-weight: 600;
        }

        .product-actions {
            position: absolute;
            right: 10px;
            top: 10px;
            display: flex;
            flex-direction: column;
        }

        .product-action {
            width: 36px;
            height: 36px;
            background-color: var(--white);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 10px;
            color: var(--secondary-color);
            opacity: 0;
            transform: translateX(20px);
            transition: var(--transition);
        }

        .product-card:hover .product-action {
            opacity: 1;
            transform: translateX(0);
        }

        .product-action:hover {
            background-color: var(--primary-color);
            color: var(--white);
        }

        .product-info {
            padding: 20px;
        }

        .product-category {
            color: var(--primary-color);
            font-size: 14px;
            margin-bottom: 5px;
        }

        .product-title {
            font-size: 18px;
            margin-bottom: 10px;
            font-weight: 600;
        }

        .product-title a {
            color: var(--secondary-color);
            text-decoration: none;
            transition: var(--transition);
        }

        .product-title a:hover {
            color: var(--primary-color);
        }

        .product-price {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .price {
            font-weight: 700;
            font-size: 18px;
            color: var(--primary-color);
        }

        .price-old {
            font-size: 14px;
            color: var(--dark-gray);
            text-decoration: line-through;
            margin-right: 10px;
        }

        .add-to-cart {
            padding: 8px 15px;
            background-color: var(--secondary-color);
            color: var(--white);
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: var(--transition);
        }

        .add-to-cart:hover {
            background-color: var(--primary-color);
        }

        /* Banner */
        .banner {
            padding: 100px 0;
            background-image: url('/api/placeholder/1920/500');
            background-size: cover;
            background-position: center;
            position: relative;
            color: var(--white);
            text-align: center;
        }

        .banner::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0, 0, 0, 0.6);
        }

        .banner-content {
            position: relative;
            max-width: 700px;
            margin: 0 auto;
        }

        .banner h2 {
            font-size: 40px;
            margin-bottom: 20px;
        }

        .banner p {
            font-size: 18px;
            margin-bottom: 30px;
        }

        /* Brands */
        .brands {
            padding: 60px 0;
            background-color: var(--light-gray);
        }

        .brand-slider {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
        }

        .brand-item {
            width: calc(16.666% - 20px);
            padding: 20px;
            background-color: var(--white);
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            display: flex;
            align-items: center;
            justify-content: center;
            transition: var(--transition);
        }

        .brand-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .brand-item img {
            max-width: 100%;
            height: auto;
        }

        /* Newsletter */
        .newsletter {
            padding: 80px 0;
            background-color: var(--secondary-color);
            color: var(--white);
            text-align: center;
        }

        .newsletter h2 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        .newsletter p {
            margin-bottom: 30px;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }

        .newsletter-form {
            max-width: 500px;
            margin: 0 auto;
            position: relative;
        }

        .newsletter-form input {
            width: 100%;
            padding: 15px 20px;
            border: none;
            border-radius: 50px;
            outline: none;
        }

        .newsletter-form button {
            position: absolute;
            right: 5px;
            top: 5px;
            padding: 10px 20px;
            background-color: var(--primary-color);
            color: var(--white);
            border: none;
            border-radius: 50px;
            cursor: pointer;
            transition: var(--transition);
        }

        .newsletter-form button:hover {
            background-color: var(--black);
        }

        /* Footer */
        footer {
            background-color: var(--black);
            color: var(--white);
            padding-top: 80px;
        }

        .footer-content {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 30px;
        }

        .footer-widget h3 {
            font-size: 20px;
            margin-bottom: 20px;
            color: var(--white);
            position: relative;
            padding-bottom: 10px;
        }

        .footer-widget h3::after {
            content: '';
            position: absolute;
            left: 0;
            bottom: 0;
            width: 50px;
            height: 2px;
            background-color: var(--primary-color);
        }

        .footer-contact p {
            margin-bottom: 15px;
            display: flex;
            align-items: center;
        }

        .footer-contact i {
            margin-right: 10px;
            color: var(--primary-color);
        }

        .footer-links ul {
            list-style: none;
        }

        .footer-links li {
            margin-bottom: 10px;
        }

        .footer-links a {
            color: #aaa;
            text-decoration: none;
            transition: var(--transition);
        }

        .footer-links a:hover {
            color: var(--primary-color);
            padding-left: 5px;
        }

        .footer-social {
            display: flex;
            margin-top: 20px;
        }

        .social-icon {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            margin-right: 10px;
            color: var(--white);
            transition: var(--transition);
        }

        .social-icon:hover {
            background-color: var(--primary-color);
            transform: translateY(-5px);
        }

        .footer-bottom {
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            padding: 20px 0;
            margin-top: 60px;
            text-align: center;
        }

        /* Responsive */
        @media (max-width: 1200px) {
            .product-grid {
                grid-template-columns: repeat(3, 1fr);
            }
        }

        @media (max-width: 992px) {
            .feature-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .product-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .footer-content {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 768px) {
            .hero {
                height: 500px;
                margin-top: 110px;
            }
            .hero-content h1 {
                font-size: 36px;
            }
            .product-grid {
                grid-template-columns: 1fr;
            }
            .brand-item {
                width: calc(33.333% - 20px);
                margin-bottom: 20px;
            }
        }

        @media (max-width: 576px) {
            .feature-grid {
                grid-template-columns: 1fr;
            }
            .footer-content {
                grid-template-columns: 1fr;
            }
            .brand-item {
                width: calc(50% - 20px);
            }
        }

        /* Animation and Transitions */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .animated {
            animation: fadeIn 1s ease-out;
        }

        /* Mobile menu */
        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            color: var(--white);
            font-size: 24px;
            cursor: pointer;
        }

        @media (max-width: 992px) {
            .mobile-menu-btn {
                display: block;
            }
            .nav-menu {
                display: none;
                flex-direction: column;
                position: absolute;
                top: 100%;
                left: 0;
                width: 100%;
                background-color: var(--secondary-color);
                z-index: 1000;
            }
            .nav-menu.active {
                display: flex;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="top-header">
            <div class="top-header-container">
                <div class="contact-info">
                    <span><i class="fas fa-phone"></i> +1 234 567 890</span>
                    <span><i class="fas fa-envelope"></i> info@mobistore.com</span>
                </div>
                <div class="top-nav">
                    <ul>
                        <li><a href="account.jsp">My Account</a></li>
                        <li><a href="wishlist.jsp">Wishlist</a></li>
                        <li><a href="checkout.jsp">Checkout</a></li>
                        <li><a href="login.jsp">Login</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="main-header">
            <a href="index.jsp" class="logo">Mobile<span>Store</span></a>
            <div class="search-bar">
                <input type="text" placeholder="Search for products...">
                <button><i class="fas fa-search"></i></button>
            </div>
            <div class="header-icons">
                <a href="wishlist.jsp" class="header-icon">
                    <i class="far fa-heart"></i>
                    <span>0</span>
                </a>
                <a href="cart.jsp" class="header-icon">
                    <i class="fas fa-shopping-cart"></i>
                    <span>0</span>
                </a>
            </div>
        </div>
        <nav>
            <div class="nav-container">
                <button class="mobile-menu-btn">
                    <i class="fas fa-bars"></i>
                </button>
                <ul class="nav-menu">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="shop.jsp">Shop</a></li>
                    <li><a href="smartphones.jsp">Smartphones</a></li>
                    <li><a href="accessories.jsp">Accessories</a></li>
                    <li><a href="deals.jsp">Deals</a></li>
                    <li><a href="about.jsp">About Us</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <!-- Hero Section -->
    <section class="hero">
    <div class="hero-content animated">
        <img src="" alt="Hero Image">
        <h1>Discover the Latest Smartphones</h1>
        <p>Explore our wide range of mobile phones and accessories with the best deals and offers.</p>
        <a href="shop.jsp" class="btn">Shop Now</a>
    </div>
</section>

    <!-- Features -->
    <section class="features">
        <div class="container">
            <div class="section-title animated">
                <h2>Why Choose Us</h2>
                <p>Experience the best online shopping with our premium services</p>
            </div>
            <div class="feature-grid">
                <div class="feature-item animated">
                    <div class="feature-icon">
                        <i class="fas fa-shipping-fast"></i>
                    </div>
                    <h3>Free Shipping</h3>
                    <p>Free shipping on all orders over $99</p>
                </div>
                <div class="feature-item animated">
                    <div class="feature-icon">
                        <i class="fas fa-undo"></i>
                    </div>
                    <h3>30 Days Return</h3>
                    <p>Simply return it within 30 days for an exchange</p>
                </div>
                <div class="feature-item animated">
                    <div class="feature-icon">
                        <i class="fas fa-headset"></i>
                    </div>
                    <h3>24/7 Support</h3>
                    <p>Contact us 24 hours a day, 7 days a week</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Popular Products -->
    <section class="products">
        <div class="container">
            <div class="section-title animated">
                <h2>Popular Products</h2>
                <p>Check out our most popular and trending products</p>
            </div>
            <div class="product-grid">
                <!-- Product 1 -->
                <div class="product-card animated">
                    <div class="product-image">
                        <img src="https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-14-pro-max-1.jpg" alt="iPhone 15 Pro">
                        <div class="product-badge">New</div>
                        <div class="product-actions">
                            <a href="#" class="product-action"><i class="far fa-heart"></i></a>
                            <a href="#" class="product-action"><i class="fas fa-eye"></i></a>
                            <a href="#" class="product-action"><i class="fas fa-sync-alt"></i></a>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-category">Smartphones</div>
                        <h3 class="product-title"><a href="product-detail.jsp">iPhone 15 Pro</a></h3>
                        <div class="product-price">
                            <div>
                                <span class="price-old">$1299</span>
                                <span class="price">$1199</span>
                            </div>
                            <button class="add-to-cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Product 2 -->
                <div class="product-card animated">
                    <div class="product-image">
                        <img src="https://www.sammobile.com/wp-content/uploads/2023/12/Samsung-Galaxy-S24-Ultra-Violet.jpg" alt="Samsung Galaxy S24">
                        <div class="product-badge">-10%</div>
                        <div class="product-actions">
                            <a href="#" class="product-action"><i class="far fa-heart"></i></a>
                            <a href="#" class="product-action"><i class="fas fa-eye"></i></a>
                            <a href="#" class="product-action"><i class="fas fa-sync-alt"></i></a>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-category">Smartphones</div>
                        <h3 class="product-title"><a href="product-detail.jsp">Samsung Galaxy S24</a></h3>
                        <div class="product-price">
                            <div>
                                <span class="price-old">$1099</span>
                                <span class="price">$999</span>
                            </div>
                            <button class="add-to-cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Product 3 -->
                <div class="product-card animated">
                    <div class="product-image">
                        <img src="https://r4k.com.au/wp-content/uploads/2023/11/buy-now-pay-later-google-pixel-8-pro-5g-128gb-obsidian.jpg" alt="Google Pixel 8">
                        <div class="product-actions">
                            <a href="#" class="product-action"><i class="far fa-heart"></i></a>
                            <a href="#" class="product-action"><i class="fas fa-eye"></i></a>
                            <a href="#" class="product-action"><i class="fas fa-sync-alt"></i></a>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-category">Smartphones</div>
                        <h3 class="product-title"><a href="product-detail.jsp">Google Pixel 8</a></h3>
                        <div class="product-price">
                            <div>
                                <span class="price">$899</span>
                            </div>
                            <button class="add-to-cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Product 4 -->
                <div class="product-card animated">
                    <div class="product-image">
                        <img src="https://assets.hardwarezone.com/img/2022/09/airpods-pro-2-lead.jpg" alt="Apple AirPods Pro">
                        <div class="product-badge">Hot</div>
                        <div class="product-actions">
                            <a href="#" class="product-action"><i class="far fa-heart"></i></a>
                            <a href="#" class="product-action"><i class="fas fa-eye"></i></a>
                            <a href="#" class="product-action"><i class="fas fa-sync-alt"></i></a>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-category">Accessories</div>
                        <h3 class="product-title"><a href="product-detail.jsp">Apple AirPods Pro</a></h3>
                        <div class="product-price">
                            <div>
                                <span class="price-old">$249</span>
                                <span class="price">$219</span>
                            </div>
                            <button class="add-to-cart">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Banner -->
    <section class="banner">
        <div class="banner-content animated">
            <h2>Special Offer This Week</h2>
            <p>Get up to 50% off on selected smartphones and accessories. Limited time offer, don't miss out!</p>
            <a href="deals.jsp" class="btn">Shop Deals</a>
        </div>
    </section>

   <!-- Brands Section -->
    <section class="brands">
        <div class="container">
            <div class="section-title">
                <h2>Popular Brands</h2>
            </div>
            <div class="brand-carousel owl-carousel">
                <div class="brand-item">
                    <img src="https://dynaimage.cdn.cnn.com/cnn/digital-images/org/231656df-5148-4550-80a2-52b646143966.jpg" alt="Apple">
                </div>
                <div class="brand-item">
                    <img src="https://sm.mashable.com/mashable_in/photo/default/fd0e0798-8c67-4518-b6de-8eb3aab3c901_fxyw.png" alt="Samsung">
                </div>
                <div class="brand-item">
                    <img src="https://cdn1.smartprix.com/rx-iJoj0nGBG-w1200-h1200/Joj0nGBG.jpg" alt="Google">
                </div>
                <div class="brand-item">
                    <img src="https://fscl01.fonpit.de/userfiles/7682239/image/Xiaomi_Mi_11.jpg" alt="Xiaomi">
                </div>
                <div class="brand-item">
                    <img src="https://www.hifitest.de/images/news/big/hifitest_news_2021-06-10_14159_161bdc20c4b12d4522520e9a2e5d17e1e.jpg" alt="OnePlus">
                </div>
                <div class="brand-item">
                    <img src="https://oechsle.vteximg.com.br/arquivos/ids/14089184-800-800/image-0.jpg?v=638144134943230000" alt="Sony">
                </div>
            </div>
        </div>
    </section>

    <!-- Newsletter Section -->
    <section class="newsletter">
        <div class="container">
            <div class="newsletter-content">
                <div class="newsletter-text">
                    <h3>Subscribe to Our Newsletter</h3>
                    <p>Get the latest updates, deals and exclusive offers directly to your inbox.</p>
                </div>
                <div class="newsletter-form">
                    <form action="newsletter-subscribe" method="post">
                        <input type="email" name="email" placeholder="Your email address" required>
                        <button type="submit" class="btn primary-btn">Subscribe</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer Section -->
    <footer>
        <div class="footer-top">
            <div class="container">
                <div class="footer-grid">
                    <div class="footer-widget about-widget">
                        <h3 class="widget-title">About Us</h3>
                        <p>MobileHub is a premium mobile device retailer offering the latest smartphones, tablets, and accessories with exceptional customer service.</p>
                        <div class="social-links">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="footer-widget">
                        <h3 class="widget-title">Useful Links</h3>
                        <ul class="footer-links">
                            <li><a href="about.jsp">About Us</a></li>
                            <li><a href="faq.jsp">FAQ</a></li>
                            <li><a href="terms.jsp">Terms & Conditions</a></li>
                            <li><a href="privacy.jsp">Privacy Policy</a></li>
                            <li><a href="returns.jsp">Returns & Refunds</a></li>
                            <li><a href="contact.jsp">Contact Us</a></li>
                        </ul>
                    </div>
                    <div class="footer-widget">
                        <h3 class="widget-title">Categories</h3>
                        <ul class="footer-links">
                            <li><a href="category.jsp?id=smartphones">Smartphones</a></li>
                            <li><a href="category.jsp?id=tablets">Tablets</a></li>
                            <li><a href="category.jsp?id=accessories">Accessories</a></li>
                            <li><a href="category.jsp?id=wearables">Wearables</a></li>
                            <li><a href="category.jsp?id=cases">Cases & Covers</a></li>
                            <li><a href="category.jsp?id=audio">Audio</a></li>
                        </ul>
                    </div>
                    <div class="footer-widget contact-widget">
                        <h3 class="widget-title">Contact Us</h3>
                        <div class="contact-info">
                            <p><i class="fas fa-map-marker-alt"></i> 123 Tech Street, Digital City, 10010</p>
                            <p><i class="fas fa-phone"></i> +1 800 123 1234</p>
                            <p><i class="fas fa-envelope"></i> info@mobilehub.com</p>
                            <p><i class="fas fa-clock"></i> Mon-Sat: 9:00 AM - 8:00 PM</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="copyright">
                    <p>&copy; 2025 MobileHub. All Rights Reserved.</p>
                </div>
                <div class="payment-methods">
                    <img src="/api/placeholder/300/30" alt="Payment Methods">
                </div>
            </div>
        </div>
    </footer>

                    
