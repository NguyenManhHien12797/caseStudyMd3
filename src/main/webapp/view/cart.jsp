<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="req" value="${pageContext.request}"/>
<c:set var="uri" value="${req.requestURI}"/>
<c:set var="url">${req.requestURL}</c:set>
<!doctype html>
<html lang="en">
<head>
    <link rel="icon" href="../image/SB-L2-xxl.svg" type="image/x-icon">
    <title>Giỏ hàng ShopBae</title>
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
    <link rel="stylesheet" href="../view/base.css">
    <link rel="stylesheet" href="../view/main.css">
    <link rel="stylesheet" href="../view/seller_channel.css">
    <link rel="stylesheet" href="../view/cart.css">


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
            z-index: -1;
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

        .header__search-form {
            display: flex;
            align-items: center;
            width: 100%;
            height: 100%;
            justify-content: space-between;
        }

        .header__search {
            flex: 1;
            height: 40px;
            border-radius: 2px;
            background-color: var(--white-color);
        }

        /*user list*/

    </style>
</head>
<body>
<header class="header">
    <div class="grid">
        <nav class="header__navbar">
            <ul class="header__navbar-list">
                <li class="header__navbar-item ">
                    <a href="sellerChannel.jsp" class="header__navbar-item-seller">Kênh người bán</a>
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
<%--                <li class="header__navbar-item header__navbar-user">--%>
<%--                    <img class="header__navbar-user-img" src="../image/avatar.jpg" alt="">--%>
<%--                    <span class="header__navbar-user-name">Hiền Nguyễn</span>--%>

<%--                    <ul class="header__navbar-user-menu">--%>
<%--                        <li class="header__navbar-user-item">--%>
<%--                            <a href="#">Tài khoản của tôi</a>--%>
<%--                        </li>--%>
<%--                        <li class="header__navbar-user-item">--%>
<%--                            <a href="#">Đơn mua</a>--%>
<%--                        </li>--%>
<%--                        <li class="header__navbar-user-item">--%>
<%--                            <a href="/ShopBae" name="logout">Đăng xuất</a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>

<%--            --%>
<%--                </li>--%>




                <c:if test='${sessionScope["account"] == null}'>
                    <li class="header__navbar-item">
                        <a href="/ShopBae?action=register" class="header__navbar-item-link header__navbar-item-link__strong separate">Đăng ký</a>
                    </li>
                    <li class="header__navbar-item">
                        <a href="/login?action=login" class="header__navbar-item-link header__navbar-item-link__strong">Đăng nhập</a>
                    </li>
                </c:if>


                <%--                    --%>

                <c:if test='${sessionScope["account"] != null}'>
                    <li class="header__navbar-item header__navbar-user">
                        <img class="header__navbar-user-img" src="${sessionScope["account"].getImage()}" alt="">
                        <span class="header__navbar-user-name">${sessionScope["account"].getName()}</span>

                        <ul class="header__navbar-user-menu">
                            <li class="header__navbar-user-item">
                                <a href="#">Tài khoản của tôi</a>
                            </li>
                            <li class="header__navbar-user-item">
                                <a href="#">Đơn mua</a>
                            </li>
                            <li class="header__navbar-user-item">
                                <a href="/login?action=logout" name="logout">Đăng xuất</a>
                            </li>
                        </ul>
                    </li>
                </c:if>





            </ul>
        </nav>

        <div class="header-with-search">
            <div class="header__logo">
                <a href="/ShopBae">
                    <img src="../image/SB-L2-white-backgroud.svg" alt="">
                </a>

            </div>
            <a href="/ShopBae" class="header__logo-name">
                ShopBae
            </a>
            <span class="header__logo-name header__logo-name-cart">Giỏ hàng</span>


        </div>
    </div>

</header>

<div class="cart">
    <div class="grid">
        <form action="#" class="header__search-cart" method="post">
            <span name=""class="search__title search__title-add">Tên sản phẩm</span>
            <input type="text" class="search__input" placeholder="Please input at least 2 character ">
            <button class="btn btn-search btn-search-cart ">Tìm</button>
        </form>
        <div class="product">

            <div class="product-list">
                <div class="grid ">
                    <div class="grid__row product-list__title ">
                        <div class="grid__column-4 title__title title__title-name">
                            <input type="checkbox" class="checkbox">
                            <span class="title-name">Tên sản phẩm</span>
                        </div>
                        <span class="grid__column-2 title__title title-price">Giá</span>
                        <span class="grid__column-2 title__title title-amount">Số lượng</span>
                        <span class="grid__column-2 title__title title-warehouse">Kho hàng</span>
                        <span class="grid__column-2 title__title title-action">Hành động</span>

                    </div>

                </div>
                <%--List product--%>
                <di class="grid">
                    <div class="grid__row product-list__element">
                        <div class="grid__column-4 element__element">
                            <input type="checkbox" class="checkbox">
                            <img src="../image/avatar_3.webp" alt="" class="element-img">
                            <span class="title-name">CONTINENTAL 80</span>
                        </div>
                        <span class="grid__column-2 element-price">2.400.000đ</span>
                        <div class="grid__column-2 element-amount">
                            <div class="item__cart__amount">
                                <button class="item__cart__btn">
                                    <span class="item__cart__btn-icon">-</span>
                                </button>
                                <input type="text" name="amount_num" class="item__cart__input" value="1">
                                <button class="item__cart__btn">
                                    <span class="item__cart__btn-icon">+</span>
                                </button>
                            </div>
                        </div>
                        <span class="grid__column-2 element-warehouse">20</span>
                        <button class="btn btn__delete grid__column-2 element__action element__action-cart"><i
                                class="fa-solid fa-trash"></i></button>

                    </div>

                </di>


                <di class="grid">
                    <div class="grid__row product-list__element">
                        <div class="grid__column-4 element__element">
                            <input type="checkbox" class="checkbox">
                            <img src="../image/avatar_3.webp" alt="" class="element-img">
                            <span class="title-name">CONTINENTAL 80</span>
                        </div>
                        <span class="grid__column-2 element-price">2.400.000đ</span>
                        <div class="grid__column-2 element-amount">
                            <div class="item__cart__amount">
                                <button class="item__cart__btn">
                                    <span class="item__cart__btn-icon">-</span>
                                </button>
                                <input type="text" name="amount_num" class="item__cart__input" value="1">
                                <button class="item__cart__btn">
                                    <span class="item__cart__btn-icon">+</span>
                                </button>
                            </div>
                        </div>
                        <span class="grid__column-2 element-warehouse">20</span>
                        <button class="btn btn__delete grid__column-2 element__action element__action-cart"><i
                                class="fa-solid fa-trash"></i></button>

                    </div>

                </di>
                <di class="grid">
                    <div class="grid__row product-list__element">
                        <div class="grid__column-4 element__element">
                            <input type="checkbox" class="checkbox">
                            <img src="../image/avatar_3.webp" alt="" class="element-img">
                            <span class="title-name">CONTINENTAL 80</span>
                        </div>
                        <span class="grid__column-2 element-price">2.400.000đ</span>
                        <div class="grid__column-2 element-amount">
                            <div class="item__cart__amount">
                                <button class="item__cart__btn">
                                    <span class="item__cart__btn-icon">-</span>
                                </button>
                                <input type="text" name="amount_num" class="item__cart__input" value="1">
                                <button class="item__cart__btn">
                                    <span class="item__cart__btn-icon">+</span>
                                </button>
                            </div>
                        </div>
                        <span class="grid__column-2 element-warehouse">20</span>
                        <button class="btn btn__delete grid__column-2 element__action element__action-cart"><i
                                class="fa-solid fa-trash"></i></button>

                    </div>

                </di>
                <di class="grid">
                    <div class="grid__row product-list__element">
                        <div class="grid__column-4 element__element">
                            <input type="checkbox" class="checkbox">
                            <img src="../image/avatar_3.webp" alt="" class="element-img">
                            <span class="title-name">CONTINENTAL 80</span>
                        </div>
                        <span class="grid__column-2 element-price">2.400.000đ</span>
                        <div class="grid__column-2 element-amount">
                            <div class="item__cart__amount">
                                <button class="item__cart__btn">
                                    <span class="item__cart__btn-icon">-</span>
                                </button>
                                <input type="text" name="amount_num" class="item__cart__input" value="1">
                                <button class="item__cart__btn">
                                    <span class="item__cart__btn-icon">+</span>
                                </button>
                            </div>
                        </div>
                        <span class="grid__column-2 element-warehouse">20</span>
                        <button class="btn btn__delete grid__column-2 element__action element__action-cart"><i
                                class="fa-solid fa-trash"></i></button>

                    </div>

                </di>
                <di class="grid">
                <div class="grid__row product-list__element">
                    <div class="grid__column-4 element__element">
                        <input type="checkbox" class="checkbox">
                        <img src="../image/avatar_3.webp" alt="" class="element-img">
                        <span class="title-name">CONTINENTAL 80</span>
                    </div>
                    <span class="grid__column-2 element-price">2.400.000đ</span>
                    <div class="grid__column-2 element-amount">
                        <div class="item__cart__amount">
                            <button class="item__cart__btn">
                                <span class="item__cart__btn-icon">-</span>
                            </button>
                            <input type="text" name="amount_num" class="item__cart__input" value="1">
                            <button class="item__cart__btn">
                                <span class="item__cart__btn-icon">+</span>
                            </button>
                        </div>
                    </div>
                    <span class="grid__column-2 element-warehouse">20</span>
                    <button class="btn btn__delete grid__column-2 element__action element__action-cart"><i
                            class="fa-solid fa-trash"></i></button>

                </div>

            </di>
                <di class="grid">
                    <div class="grid__row product-list__element">
                        <div class="grid__column-4 element__element">
                            <input type="checkbox" class="checkbox">
                            <img src="../image/avatar_3.webp" alt="" class="element-img">
                            <span class="title-name">CONTINENTAL 80</span>
                        </div>
                        <span class="grid__column-2 element-price">2.400.000đ</span>
                        <div class="grid__column-2 element-amount">
                            <div class="item__cart__amount">
                                <button class="item__cart__btn">
                                    <span class="item__cart__btn-icon">-</span>
                                </button>
                                <input type="text" name="amount_num" class="item__cart__input" value="1">
                                <button class="item__cart__btn">
                                    <span class="item__cart__btn-icon">+</span>
                                </button>
                            </div>
                        </div>
                        <span class="grid__column-2 element-warehouse">20</span>
                        <button class="btn btn__delete grid__column-2 element__action element__action-cart"><i
                                class="fa-solid fa-trash"></i></button>

                    </div>

                </di>
                <di class="grid">
                    <div class="grid__row product-list__element">
                        <div class="grid__column-4 element__element">
                            <input type="checkbox" class="checkbox">
                            <img src="../image/avatar_3.webp" alt="" class="element-img">
                            <span class="title-name">CONTINENTAL 80</span>
                        </div>
                        <span class="grid__column-2 element-price">2.400.000đ</span>
                        <div class="grid__column-2 element-amount">
                            <div class="item__cart__amount">
                                <button class="item__cart__btn">
                                    <span class="item__cart__btn-icon">-</span>
                                </button>
                                <input type="text" name="amount_num" class="item__cart__input" value="1">
                                <button class="item__cart__btn">
                                    <span class="item__cart__btn-icon">+</span>
                                </button>
                            </div>
                        </div>
                        <span class="grid__column-2 element-warehouse">20</span>
                        <button class="btn btn__delete grid__column-2 element__action element__action-cart"><i
                                class="fa-solid fa-trash"></i></button>

                    </div>

                </di>
                <di class="grid">
                    <div class="grid__row product-list__element">
                        <div class="grid__column-4 element__element">
                            <input type="checkbox" class="checkbox">
                            <img src="../image/avatar_3.webp" alt="" class="element-img">
                            <span class="title-name">CONTINENTAL 80</span>
                        </div>
                        <span class="grid__column-2 element-price">2.400.000đ</span>
                        <div class="grid__column-2 element-amount">
                            <div class="item__cart__amount">
                                <button class="item__cart__btn">
                                    <span class="item__cart__btn-icon">-</span>
                                </button>
                                <input type="text" name="amount_num" class="item__cart__input" value="1">
                                <button class="item__cart__btn">
                                    <span class="item__cart__btn-icon">+</span>
                                </button>
                            </div>
                        </div>
                        <span class="grid__column-2 element-warehouse">20</span>
                        <button class="btn btn__delete grid__column-2 element__action element__action-cart"><i
                                class="fa-solid fa-trash"></i></button>

                    </div>

                </di>
                <di class="grid">
                    <div class="grid__row product-list__element">
                        <div class="grid__column-4 element__element">
                            <input type="checkbox" class="checkbox">
                            <img src="../image/avatar_3.webp" alt="" class="element-img">
                            <span class="title-name">CONTINENTAL 80</span>
                        </div>
                        <span class="grid__column-2 element-price">2.400.000đ</span>
                        <div class="grid__column-2 element-amount">
                            <div class="item__cart__amount">
                                <button class="item__cart__btn">
                                    <span class="item__cart__btn-icon">-</span>
                                </button>
                                <input type="text" name="amount_num" class="item__cart__input" value="1">
                                <button class="item__cart__btn">
                                    <span class="item__cart__btn-icon">+</span>
                                </button>
                            </div>
                        </div>
                        <span class="grid__column-2 element-warehouse">20</span>
                        <button class="btn btn__delete grid__column-2 element__action element__action-cart"><i
                                class="fa-solid fa-trash"></i></button>

                    </div>

                </di>
                <%--List product--%>

                <div class="navar-bottom">
                    <input type="checkbox" class="checkbox-all">
                    <span class="navar-bottom__choose">Chọn tất cả</span>
                    <span class="navar-bottom__payment">Tổng thanh toán: 10 sản phẩm: 1.000.000đ</span>
                    <button class="btn navar-bottom__btn">Mua hàng</button>
                </div>
            </div>
        </div>

    </div>
</div>


</body>
</html>

