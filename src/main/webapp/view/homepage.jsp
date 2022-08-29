<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <link rel="icon" href="../image/SB-L2-xxl.svg" type="image/x-icon">
    <title>ShopBae</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/bb6a3cf0b7.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link rel="stylesheet" href="base.css">
    <link rel="stylesheet" href="main.css">

    <style>

        /*user list*/

        .header__navbar-user {
            position: relative;
        }

        .header__navbar-user-menu {
            position: absolute;
            padding-left: 0;
            top: 100%;
            right: 0;
            width: 160px;
            list-style: none;
            border-radius: 2px;
            background-color: var(--white-color);
            z-index: 1;
            border-radius: 2px;
            box-shadow: 0 0.1rem 0.2rem rgba(0, 0, 0, 0.1);
            display: none;
        }

        .header__navbar-user:hover .header__navbar-user-menu {
            display: block;
        }

        .header__navbar-user-item::after {
            position: absolute;
            content: "";
            top: -23px;
            right: 35px;
            border-width: 15px 20px;
            border-style: solid;
            border-color: transparent transparent var(--white-color) transparent;
        }


        .header__navbar-user-item a {
            display: block;
            width: 100%;
            text-decoration: none;
            color: var(--text-color);
            padding: 5px 0 5px 23px;
            font-size: 1.6rem;
            font-weight: 300;
        }

        .header__navbar-user-item a:hover {
            color: var(--primary-color);
            background-color: #eeeeee;
        }

        .header__navbar-user-img {
            width: 20px;
            height: 20px;
            margin-top: -5px;
            border-radius: 50%;
            border: 1px solid rgba(0, 0, 0, 0.2);
        }

        /*user list*/


    </style>

</head>
<body>
<div class="app">
    <header class="header">
        <div class="grid">
            <nav class="header__navbar">
                <ul class="header__navbar-list">
                    <li class="header__navbar-item ">
                        <a href="#" class="header__navbar-item-seller">Kênh người bán</a>
                    </li>
                    <li class="header__navbar-item header__navbar-item--has-qr separate"> Vào cửa hàng trên ứng dụng
                        <div class="header__qr">
                            <img src="../image/qr-code.png" alt="QR code" class="header__qr-img">
                        </div>
                    </li>
                    <li class="header__navbar-item">
                        <span class="header__navbar-title--no-pointer ">Kết nối</span>
                        <a href="https://www.facebook.com/" class="header__navbar-item-link">
                            <i class="header__navbar-icon fa-brands fa-facebook"></i>
                        </a>
                        <a href="https://www.instagram.com/" class="header__navbar-item-link">
                            <i class="header__navbar-icon fa-brands fa-instagram"></i>
                        </a>
                    </li>


                </ul>
                <ul class="header__navbar-list">
                    <li class="header__navbar-item  notifi">
                        <a href="#" class="header__navbar-item-link">
                            <i class=" header__navbar-icon far fa-bell"></i> Thông báo</a>
                        <div class="header__notify ">
                            <header class="header__notify-header">
                                <h3>Thông báo mới nhận</h3>
                            </header>
                            <ul class="header__notify-list">
                                <li class="header__notify-item header__notify-item--viewed">
                                    <a href="" class="header__notify-link">
                                        <img src="../image/app-store.png" alt="" class="header__notify-img">
                                        <div class="header__notify-info">
                                            <span class="header__notify-name">Trình đọc của màn hình sẽ gặp vấn đề với form của bạn</span>
                                            <span class="header__notify-discrip"> Trình đọc của màn hình sẽ gặp vấn đề với form của bạn</span>

                                        </div>
                                    </a>
                                </li>

                                <li class="header__notify-item">
                                    <a href="" class="header__notify-link">
                                        <img src="../image/app-store.png" alt="" class="header__notify-img">
                                        <div class="header__notify-info">
                                            <span class="header__notify-name">Trình đọc của màn hình sẽ gặp vấn đề với form của bạn</span>
                                            <span class="header__notify-discrip">Trình đọc của màn hình sẽ gặp vấn đề với form của bạn</span>

                                        </div>
                                    </a>
                                </li>

                                <li class="header__notify-item">
                                    <a href="" class="header__notify-link">
                                        <img src="../image/app-store.png" alt="" class="header__notify-img">
                                        <div class="header__notify-info">
                                            <span class="header__notify-name">Trình đọc của màn hình sẽ gặp vấn đề với form của bạn</span>
                                            <span class="header__notify-discrip">Trình đọc của màn hình sẽ gặp vấn đề với form của bạn</span>

                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <footer class="header__notify-footer">
                                <a href="" class="header__notify-footer-btn">Xem tất cả</a>
                            </footer>

                        </div>
                    </li>
                    <li class="header__navbar-item">
                        <a href="#" class="header__navbar-item-link">
                            <i class="header__navbar-icon fa-solid fa-circle-question"></i> Trợ giúp
                        </a>
                    </li>

                    <%--                    Login--%>
                    <%--                    <li class="header__navbar-item">--%>
                    <%--                        <a href="#" class="header__navbar-item-link header__navbar-item-link__strong separate">Đăng ký</a>--%>
                    <%--                    </li>--%>
                    <%--                    <li class="header__navbar-item">--%>
                    <%--                        <a href="#" class="header__navbar-item-link header__navbar-item-link__strong">Đăng nhập</a>--%>
                    <%--                    </li>--%>
                    <%--                    Login--%>

                    <%--                    User Login--%>
                    <li class="header__navbar-item header__navbar-user">
                        <img class="header__navbar-user-img" src="../image/avatar.jpg" alt="">
                        <span class="header__navbar-user-name">Hiền Nguyễn</span>

                        <ul class="header__navbar-user-menu">
                            <li class="header__navbar-user-item">
                                <a href="#">Tài khoản của tôi</a>
                            </li>
                            <li class="header__navbar-user-item">
                                <a href="#">Đơn mua</a>
                            </li>
                            <li class="header__navbar-user-item">
                                <a href="#">Đăng xuất</a>
                            </li>
                        </ul>

                </ul>
            </nav>

            <div class="header-with-search">
                <div class="header__logo">
                    <a href="homepage.jsp">
                        <img src="../image/SB-L2-white-backgroud.svg" alt="">
                    </a>

                </div>
                <a href="homepage.jsp" class="header__logo-name">
                    ShopBae
                </a>

                <div class="header__search">
                    <form action="#" class="header__search-form" method="post">
                        <input type="text" class="header__search-input" name="search"
                               placeholder="Nhập để tìm kiếm sản phẩm">
                        <button class="header__search-btn" type="submit">
                            <i class=" header__search-icon fa-solid fa-magnifying-glass"></i>
                        </button>
                    </form>
                </div>

                <div class="header__cart">
                    <div class="header__cart-wrap">
                        <a href="#">
                            <i class="header__cart-icon  fa-solid fa-cart-shopping"></i>
                            <span class="header__cart-notice header__cart-icon ">234</span>
                        </a>
                    </div>

                    <div class="header__cart-list header__cart-list-no-cart">
                        <img src="../image/no-cart.gif" alt="" class="header__cart-list-no-cart-img">
                        <span class="header__cart-list-no-cart-msg">Chưa có sản phẩm</span>
                    </div>
                </div>

            </div>
        </div>

    </header>


    <div class="app__container">
        <div class="app__container-banner">
            <%--    Banner--%>
            <div class="banner">
                <video controls autoplay src="../image/banner_video_1.mp4" class="banner__video"></video>
<%--                <video controls autoplay src="../image/banner_video_2.mp4" class="banner__video"></video>--%>

            </div>
            <%--    Banner--%>

            <%--        Slider--%>

            <div class="grid">
                <div class="grid__row">
                    <div class="grid__column-12 ">
                        <div id="carouselExampleIndicators" class="carousel slide slider" data-bs-ride="carousel">
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                                        class="active" aria-current="true" aria-label="Slide 1"></button>
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                                        aria-label="Slide 2"></button>
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                                        aria-label="Slide 3"></button>
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3"
                                        aria-label="Slide 4"></button>
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4"
                                        aria-label="Slide 5"></button>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="../image/slider_1.png" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="../image/slider_2.png" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="../image/slider_3.png" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="../image/slider_1.png" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="../image/slider_2.png" class="d-block w-100" alt="...">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                    data-bs-target="#carouselExampleIndicators"
                                    data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                    data-bs-target="#carouselExampleIndicators"
                                    data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>

                    </div>
                </div>
            </div>

            <%--        Slider--%>

            <%--    Banner--%>
            <div class="banner">
                <video controls autoplay src="../image/banner_video_1.mp4" class="banner__video"></video>
            </div>
            <%--    Banner--%>

        </div>

        <div class="grid app__container-wrap">
            <div class="grid__row app__content">
                <div class="grid__column-2 category-wrap">
                    <nav class="category">
                        <h3 class="category__heading"><i class="category__heading-icon fa-solid fa-list"></i> Danh
                            mục
                        </h3>
                        <ul class="category-list">
                            <li class="category-item">
                                <a href="#" class="category-item__link category-item__link--active ">Thiết Bị Điện
                                    Tử</a>
                            </li>
                            <li class="category-item">
                                <a href="#" class="category-item__link">Thiết bị đeo thông minh</a>
                            </li>
                            <li class="category-item">
                                <a href="#" class="category-item__link">Phụ kiện ti vi</a>
                            </li>
                            <li class="category-item">
                                <a href="#" class="category-item__link">Thiết bị nhà thông minh</a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="grid__column-10">
                    <div class="home-filter">
                        <span class="home-filter__label">Sắp xếp theo</span>
                        <button class="home-filter__btn btn btn-primary">Phổ biến</button>
                        <button class="home-filter__btn btn">Mới nhất</button>
                        <button class="home-filter__btn btn">Bán chạy</button>
                        <div class="select-input">
                            <span class="select-input__label">Giá</span>
                            <i class="select-input__icon fas fa-angle-down"></i>

                            <%--                            List options--%>
                            <ul class="select-input__list">
                                <li class="select-input__item">
                                    <a href="#" class="select-input__link">Giá: Thấp đến cao</a>
                                </li>
                                <li class="select-input__item">
                                    <a href="#" class="select-input__link">Giá: Cao đến thấp</a>
                                </li>

                            </ul>
                        </div>
                        <div class="home-filter__page">
                            <span class="home-filter__page-num">
                                <span class="home-filter__page-current">1</span>/14
                            </span>
                            <div class="home-filter__page-control">
                                <a href="#" class="home-filter__page-btn home-filter__page-btn--disabled">
                                    <i class="home-filter__page-icon fas fa-angle-left"></i>
                                </a>
                                <a href="#" class="home-filter__page-btn">
                                    <i class="home-filter__page-icon fas fa-angle-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>

                    <%--                    List product--%>
                    <div class="home-product">
                        <div class="grid__row">
                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>


                        </div>
                    </div>

                    <div class="home-product">
                        <div class="grid__row">
                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>


                        </div>
                    </div>

                    <div class="home-product">
                        <div class="grid__row">
                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>


                        </div>
                    </div>

                    <div class="home-product">
                        <div class="grid__row">
                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>

                            <div class="grid__column-2-4">

                                <a href="product_details.jsp" class="home-product-item">
                                    <div class="home-product-item__img"
                                         style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh
                                        Samsung Galaxy Watch III 45mm LTE</h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current">900.000đ</span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--liked" rel="#">
                                            <i class="home-product-item__like-icon far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class="home-product-item__star-gold fas fa-star"></i>
                                            <i class=" fas fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Whoo</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
                                    </div>
                                    <div class="home-product-item__favourite">
                                        <i class="fa-solid fa-check"></i> Yêu thích
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">10%</span>
                                        <span class="home-product-item__sale-off-label">GIẢM</span>
                                    </div>
                                </a>
                            </div>


                        </div>
                    </div>

                    <%--                    List product--%>

                    <%--                    Phân trang--%>

                    <ul class="pagination home-product__pagination">
                        <li class="pagination-item">
                            <a href="#" class="pagination-item__link">
                                <i class="pagination-item__icon fas fa-angle-left"></i>
                            </a>
                        </li>
                        <li class="pagination-item">
                            <a href="#" class="pagination-item__link pagination-item__link--active">1</a>
                        </li>

                        <li class="pagination-item">
                            <a href="#" class="pagination-item__link">2</a>
                        </li>

                        <li class="pagination-item">
                            <a href="#" class="pagination-item__link">3</a>
                        </li>

                        <li class="pagination-item">
                            <a href="#" class="pagination-item__link">4</a>
                        </li>

                        <li class="pagination-item">
                            <a href="#" class="pagination-item__link">...</a>
                        </li>
                        <li class="pagination-item">
                            <a href="#" class="pagination-item__link">14</a>
                        </li>

                        <li class="pagination-item">
                            <a href="#" class="pagination-item__link">
                                <i class="pagination-item__icon fas fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <%--                    Phân trang--%>


                </div>
            </div>
        </div>

    </div>
    <div class="footer">
        <div class="grid">
            <div class="grid__row footer-wrap">
                <div class="grid__column-2-4">
                    <h3 class="footer__heading">Chăm sóc khách hàng</h3>
                    <li class="footer-item">
                        <a href="#" class="footer-item__link">Trung tâm trợ giúp</a>
                        <a href="#" class="footer-item__link">ShopBae Blog</a>
                        <a href="#" class="footer-item__link">ShopBae Mall</a>
                        <a href="#" class="footer-item__link">Hướng dẫn mua hàng</a>
                        <a href="#" class="footer-item__link">Hướng dẫn bán hàng</a>
                        <a href="#" class="footer-item__link">Thanh toán</a>
                        <a href="#" class="footer-item__link">ShopBae xu</a>
                        <a href="#" class="footer-item__link">Vận chuyển</a>
                        <a href="#" class="footer-item__link">Trả hàng & hoàn tiền</a>
                        <a href="#" class="footer-item__link">Chăm sóc khách hàng</a>
                        <a href="#" class="footer-item__link">Chính sách bảo hành</a>
                    </li>
                </div>

                <div class="grid__column-2-4">
                    <h3 class="footer__heading">Về ShopBae</h3>
                    <li class="footer-item">
                        <a href="#" class="footer-item__link">Giới thiệu về ShopBae Việt Nam</a>
                        <a href="#" class="footer-item__link">Tuyển dụng</a>
                        <a href="#" class="footer-item__link">Điều khoản ShopBae</a>
                        <a href="#" class="footer-item__link">Chính sách bảo mật</a>
                        <a href="#" class="footer-item__link">Chính hãng</a>
                        <a href="#" class="footer-item__link">Kênh người bán</a>
                        <a href="#" class="footer-item__link">Flash sales</a>
                        <a href="#" class="footer-item__link">Chương trình tiếp thị liên kết ShopBae</a>
                        <a href="#" class="footer-item__link">Linh hệ với truyền thông</a>
                    </li>
                </div>

                <div class="grid__column-2-4">
                    <h3 class="footer__heading">Thanh toán</h3>
                    <li class="footer-item">
                        <a href="#" class="footer-item__link"> <i class="fa-brands fa-cc-visa"></i></a>
                        <a href="#" class="footer-item__link"> <i class="fa-brands fa-cc-paypal"></i></a>
                        <a href="#" class="footer-item__link"> <i class="fa-brands fa-cc-jcb"></i></a>
                        <a href="#" class="footer-item__link"> <i class="fa-brands fa-cc-amazon-pay"></i></a>
                        <a href="#" class="footer-item__link"> <i class="fa-solid fa-credit-card"></i></a>
                        <a href="#" class="footer-item__link"> <i class="fa-brands fa-cc-mastercard"></i></a>
                    </li>
                    <h3 class="footer__heading footer__heading-ship">Đơn vị vận chuyển</h3>
                    <li class="footer-item footer-item-ship">
                        <img src="../image/footer-item-ship-img_1.png" alt="" class="footer-item-ship-img">
                        <img src="../image/footer-item-ship-img_2.png" alt="" class="footer-item-ship-img">
                        <img src="../image/footer-item-ship-img_3.webp" alt="" class="footer-item-ship-img">
                    </li>
                </div>

                <div class="grid__column-2-4">
                    <h3 class="footer__heading">Theo dõi chúng tôi</h3>
                    <li class="footer-item">
                        <a href="#" class="footer-item__link"><i class="fa-brands fa-facebook"></i> Facebook</a>
                        <a href="#" class="footer-item__link"><i class="fa-brands fa-instagram"></i> Instagram</a>
                        <a href="#" class="footer-item__link"><i class="fa-brands fa-linkedin"></i> Linkedkin</a>
                    </li>
                </div>

                <div class="grid__column-2-4 ">
                    <h3 class="footer__heading footer__heading-end ">Tải ứng dụng ShopBae</h3>
                    <img src="../image/qr-code.png" alt="" class="footer-item__img footer-item__img__download">
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>