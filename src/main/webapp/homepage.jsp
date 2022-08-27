<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <link rel="icon" href="image/SB-L2-xxl.svg" type="image/x-icon">
    <title>ShopBae</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/bb6a3cf0b7.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link rel="stylesheet" href="./base.css">
    <link rel="stylesheet" href="./main.css">

</head>
<body>
<div class="app">
    <header class="header">
        <div class="grid">
            <nav class="header__navbar">
                <ul class="header__navbar-list">
                    <li class="header__navbar-item header__navbar-item--has-qr separate"> Vào cửa hàng trên ứng dụng
                    <div class="header__qr">
                        <img src="image/1661505938.png" alt="QR code" class="header__qr-img">
                    </div>
                    </li>
                    <li class="header__navbar-item">
                        <span class="header__navbar-title--no-pointer ">Kết nối</span>
                        <a href="" class="header__navbar-item-link">
                            <i class="header__navbar-icon fa-brands fa-facebook"></i>
                        </a>
                        <a href="" class="header__navbar-item-link">
                            <i class="header__navbar-icon fa-brands fa-instagram"></i>
                        </a>
                    </li>


                </ul>
                <ul class="header__navbar-list">
                    <li class="header__navbar-item  notifi">
                        <a href="#" class="header__navbar-item-link">
                            <i class=" header__navbar-icon fa-solid fa-bell"></i> Thông báo
                        </a>
                        <div class="header__notify ">
                            <header class="header__notify-header">
                                <h3>Thông báo mới nhận</h3>
                            </header>
                            <ul class="header__notify-list">
                                <li class="header__notify-item header__notify-item--viewed">
                                    <a href="" class="header__notify-link">
                                        <img src="image/app-store.png" alt="" class="header__notify-img">
                                        <div class="header__notify-info">
                                            <span class="header__notify-name">Trình đọc của màn hình sẽ gặp vấn đề với form của bạn</span>
                                            <span class="header__notify-discrip"> Trình đọc của màn hình sẽ gặp vấn đề với form của bạn</span>

                                        </div>
                                    </a>
                                </li>

                                <li class="header__notify-item">
                                    <a href="" class="header__notify-link">
                                        <img src="image/app-store.png" alt="" class="header__notify-img">
                                        <div class="header__notify-info">
                                            <span class="header__notify-name">Trình đọc của màn hình sẽ gặp vấn đề với form của bạn</span>
                                            <span class="header__notify-discrip">Trình đọc của màn hình sẽ gặp vấn đề với form của bạn</span>

                                        </div>
                                    </a>
                                </li>

                                <li class="header__notify-item">
                                    <a href="" class="header__notify-link">
                                        <img src="image/app-store.png" alt="" class="header__notify-img">
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
                    <li class="header__navbar-item">
                        <a href="#" class="header__navbar-item-link header__navbar-item-link__strong separate">Đăng ký</a>
                    </li>
                    <li class="header__navbar-item">
                        <a href="#" class="header__navbar-item-link header__navbar-item-link__strong">Đăng nhập</a>
                    </li>
                </ul>
            </nav>
        </div>

    </header>
    <div class="app__container">
        <div class="grid">
            <div class="grid__row app__content">
                <div class="grid__column-2">
                    <nav class="category">
                        <h3 class="category__heading"><i class="category__heading-icon fa-solid fa-list"></i> Danh mục</h3>
                        <ul class="category-list">
                            <li class="category-item">
                                <a href="#" class="category-item__link category-item__link--active ">Thiết Bị Điện Tử</a>
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

                                <a href="#" class="home-product-item">
                                    <div class="home-product-item__img" style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh Samsung Galaxy Watch III 45mm LTE</h4>
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

                                <a href="#" class="home-product-item">
                                    <div class="home-product-item__img" style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh Samsung Galaxy Watch III 45mm LTE</h4>
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

                                <a href="#" class="home-product-item">
                                    <div class="home-product-item__img" style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh Samsung Galaxy Watch III 45mm LTE</h4>
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

                                <a href="#" class="home-product-item">
                                    <div class="home-product-item__img" style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh Samsung Galaxy Watch III 45mm LTE</h4>
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

                                <a href="#" class="home-product-item">
                                    <div class="home-product-item__img" style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh Samsung Galaxy Watch III 45mm LTE</h4>
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

                                <a href="#" class="home-product-item">
                                    <div class="home-product-item__img" style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh Samsung Galaxy Watch III 45mm LTE</h4>
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

                                <a href="#" class="home-product-item">
                                    <div class="home-product-item__img" style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh Samsung Galaxy Watch III 45mm LTE</h4>
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

                                <a href="#" class="home-product-item">
                                    <div class="home-product-item__img" style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh Samsung Galaxy Watch III 45mm LTE</h4>
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

                                <a href="#" class="home-product-item">
                                    <div class="home-product-item__img" style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh Samsung Galaxy Watch III 45mm LTE</h4>
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

                                <a href="#" class="home-product-item">
                                    <div class="home-product-item__img" style="background-image:url(https://cf.shopee.vn/file/683154c9dc3a73ace1eda35b0d6da767_tn)"></div>
                                    <h4 class="home-product-item__name">Samsung Watch 3 R845 - Đồng hồ thông minh Samsung Galaxy Watch III 45mm LTE</h4>
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
                </div>
            </div>
        </div>


    </div>
    <div class="footer">
    </div>
</div>

</body>
</html>
