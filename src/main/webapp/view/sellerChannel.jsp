<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="req" value="${pageContext.request}"/>
<c:set var="uri" value="${req.requestURI}"/>
<c:set var="url">${req.requestURL}</c:set>
<!doctype html>
<html lang="en">
<head>
    <link rel="icon" href="../image/SB-L2-xxl.svg" type="image/x-icon">
    <title>Kênh người bán ShopBae</title>
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

</head>
<body>
<div class="navbar">
    <div class="navbar__logo">
        <a href="/ShopBae" class="navbar__logo-link">
            <img src="../image/SB-L2-xxl.svg" alt="" class="navbar__logo-img">
            <span class="navbar__logo-name">ShopBae</span>
        </a>
        <span class="navbar__logo-title">Kênh người bán</span>

    </div>
    <div class="navbar__info">
        <div class="navbar__account">
            <img src="../image/avatar_3.webp" alt="" class="navbar__account-avatar">
            <span class="navbar__account-info">Bình tổng Miền Bắc</span>
        </div>
        <button class="navbar__action"><i class="fa-solid fa-list"></i>
        </button>

    </div>

</div>
<div class="seller">
    <div class="seller__category">
        <div class="category__ship">
            <span class="category__title">Vận chuyển</span>
            <a href="#" class="category__element category__ship-manager">Quản lý vận chuyển</a>
            <a href="#" class="category__element category__ship-bill">Giao hàng</a>
        </div>
        <div class="category__order">
            <span  class="category__title">Quản lý đơn hàng</span>
            <a href="#" class="category__element category__order-all">Tất cả</a>
            <a href="#" class="category__element category__order-cancel">Đơn hủy</a>
        </div>
        <div class="category__product">
            <span class="category__title">Quản lý sản phẩm</span>
            <a href="#" class="category__element category__product-all">Tất cả sản phẩm</a>
            <a href="add_product.jsp" class="category__element category__product-add">Thêm sản phẩm</a>
        </div>
        <div class="category__finance">
            <span class="category__title">Tài chính</span>
            <a href="#" class="category__element category__finance-turnover">Doanh thu</a>
        </div>
        <div class="category__data">
            <span class="category__title">Dữ liệu</span>
            <a href="#" class="category__element category__data-analysis">Phân tích bán hàng</a>
        </div>
        <div class="category__shop">
            <span class="category__title">Quản lý shop</span>
            <a href="#" class="category__element category__shop-rate">Đánh giá shop</a>
            <a href="#" class="category__element category__shop-file">Hồ sơ</a>
            <a href="#" class="category__element category__shop-title">Danh mục của shop</a>
        </div>
        <div class="category__setting">
            <span class=" category__title">Thiết lập shop</span>
            <a href="#" class="category__element category__setting-address">Địa chỉ</a>
            <a href="#" class="category__element category__setting-account">Tài khoản</a>
        </div>
    </div>
    <div class="grid grid__seller">
            <form action="#" class="header__search" method="post">
              <div class="search__with">
                  <div class="search__with-name">
                      <span name="" id="#" class="search__title">Tên sản phẩm</span>
                      <input type="text" class="search__input" placeholder="Please input at least 2 character ">
                  </div>
                  <div class="search__with-category"> <span class="search__category-title">Danh mục</span>
                      <select name="search__category-element" id="" class="search__category-element">
                          <option value="">Shoes</option>
                          <option value="">Clothes</option>
                      </select></div>
              </div>
                <button class="btn btn-search">Tìm</button>
            </form>
        <div class="product">
            <div class="navbar__product">
                <a href="#" class="navbar__product-title">Tất cả</a>
                <a href="#" class="navbar__product-title">Đang hoạt động</a>
                <a href="#" class="navbar__product-title">Hết hàng</a>
            </div>
            <form action="add_product.jsp" method="post" class="form__add">
                <button class="btn btn__add">+  Thêm sản phẩm</button>
            </form>


            <div class="product-list">
                <div class="grid grid__product-list">
                    <div class="grid__row product-list__title">
<%--                        <div class=" product-list__title">--%>
                            <div class="grid__column-2 title__title title__title-name">
                                <input type="checkbox" class="checkbox">
                                <span class="title-name">Tên sản phẩm</span>
                            </div>
                            <span class=" grid__column-2 title__title title-category">Category</span>
                            <span class="grid__column-2 title__title title-brand">Brand</span>
                            <span class="grid__column-2 title__title title-price">Giá</span>
                            <span class="grid__column-2 title__title title-warehouse">Kho hàng</span>
                            <span class="grid__column-2 title__title title-action">Hành động</span>

                        </div>
<%--                    </div>--%>

                </div>
<%--List product--%>
            <div class="grid grid__product-list">
                <div class="grid__row product-list__element">
                    <div class="grid__column-2 element__element">
                        <input type="checkbox" class="checkbox">
                        <img src="../image/avatar_3.webp" alt="" class="element-img">
                        <span class="title-name">CONTINENTAL 80</span>
                    </div>
                    <span class="grid__column-2 element-category">Shoes</span>
                    <span class="grid__column-2 element-brand">Nike</span>
                    <span class="grid__column-2 element-price">2.400.000đ</span>
                    <span class="grid__column-2 element-warehouse">20</span>
                    <div class="grid__column-2 element__action">
                        <button class="btn btn__update"><i class="fa-solid fa-pen"></i></button>
                        <button class="btn btn__delete"><i class="fa-solid fa-trash"></i></button>
                    </div>

                </div>
            </div>
            <div class="grid grid__product-list">
                <div class="grid__row product-list__element">
                    <div class="grid__column-2 element__element">
                        <input type="checkbox" class="checkbox">
                        <img src="../image/avatar_3.webp" alt="" class="element-img">
                        <span class="title-name">CONTINENTAL 80</span>
                    </div>
                    <span class="grid__column-2 element-category">Shoes</span>
                    <span class="grid__column-2 element-brand">Nike</span>
                    <span class="grid__column-2 element-price">2.400.000đ</span>
                    <span class="grid__column-2 element-warehouse">20</span>
                    <div class="grid__column-2 element__action">
                        <button class="btn btn__update"><i class="fa-solid fa-pen"></i></button>
                        <button class="btn btn__delete"><i class="fa-solid fa-trash"></i></button>
                    </div>

                </div>
            </div>

            <div class="grid grid__product-list">
                <div class="grid__row product-list__element">
                    <div class="grid__column-2 element__element">
                        <input type="checkbox" class="checkbox">
                        <img src="../image/avatar_3.webp" alt="" class="element-img">
                        <span class="title-name">CONTINENTAL 80</span>
                    </div>
                    <span class="grid__column-2 element-category">Shoes</span>
                    <span class="grid__column-2 element-brand">Nike</span>
                    <span class="grid__column-2 element-price">2.400.000đ</span>
                    <span class="grid__column-2 element-warehouse">20</span>
                    <div class="grid__column-2 element__action">
                        <button class="btn btn__update"><i class="fa-solid fa-pen"></i></button>
                        <button class="btn btn__delete"><i class="fa-solid fa-trash"></i></button>
                    </div>

                </div>
            </div>

            <div class="grid grid__product-list">
                <div class="grid__row product-list__element">
                    <div class="grid__column-2 element__element">
                        <input type="checkbox" class="checkbox">
                        <img src="../image/avatar_3.webp" alt="" class="element-img">
                        <span class="title-name">CONTINENTAL 80</span>
                    </div>
                    <span class="grid__column-2 element-category">Shoes</span>
                    <span class="grid__column-2 element-brand">Nike</span>
                    <span class="grid__column-2 element-price">2.400.000đ</span>
                    <span class="grid__column-2 element-warehouse">20</span>
                    <div class="grid__column-2 element__action">
                        <button class="btn btn__update"><i class="fa-solid fa-pen"></i></button>
                        <button class="btn btn__delete"><i class="fa-solid fa-trash"></i></button>
                    </div>

                </div>
            </div>

            <div class="grid grid__product-list">
                <div class="grid__row product-list__element">
                    <div class="grid__column-2 element__element">
                        <input type="checkbox" class="checkbox">
                        <img src="../image/avatar_3.webp" alt="" class="element-img">
                        <span class="title-name">CONTINENTAL 80</span>
                    </div>
                    <span class="grid__column-2 element-category">Shoes</span>
                    <span class="grid__column-2 element-brand">Nike</span>
                    <span class="grid__column-2 element-price">2.400.000đ</span>
                    <span class="grid__column-2 element-warehouse">20</span>
                    <div class="grid__column-2 element__action">
                        <button class="btn btn__update"><i class="fa-solid fa-pen"></i></button>
                        <button class="btn btn__delete"><i class="fa-solid fa-trash"></i></button>
                    </div>

                </div>
            </div>



<%--List product--%>
            <%--                    Phân trang--%>

            <ul class="pagination home-product__pagination">
                <li class="pagination-item">
                    <a href="#" class="pagination-item__link">
                        <i class="pagination-item__icon fas fa-angle-left"></i>
                    </a>
                </li>
                <li class="pagination-item">
                    <a href="#"
                       class="pagination-item__link pagination-item__link--active">1</a>
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


</body>
</html>
