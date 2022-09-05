<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="req" value="${pageContext.request}"/>
<c:set var="uri" value="${req.requestURI}"/>
<c:set var="url">${req.requestURL}</c:set>
<!doctype html>
<html lang="en">
<head>
  <link rel="icon" href="../image/SB-L2-xxl.svg" type="image/x-icon">
  <title>Thêm sản phẩm ShopBae</title>
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
  <link rel="stylesheet" href="../view/add_product.css">
</head>
<body>
<div class="navbar">
  <div class="navbar__logo">
    <a href="/ShopBae" class="navbar__logo-link">
    <img src="../image/SB-L2-xxl.svg" alt="" class="navbar__logo-img">
    <span class="navbar__logo-name">ShopBae</span>
    </a>
    <a href="/ShopBae?action=seller" class="navbar__logo-link navbar__logo-title">Kênh người bán</a>
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
</div>

<div class="add__container">
  <div class="grid ">
    <div class="grid__row gird__row__add">
      <div class="grid__column-12">
        <span class="add__title">Thêm 1 sản phẩm mới</span>
        <span class="add__dicrip">Vui lòng chọn ngành hàng phù hợp cho sản phẩm của bạn</span>

        <form action="/ShopBae?action=create" method="post" class="form__add">
          <div class="input">
            <span class="input__title">Tên sản phẩm</span>
            <input type="text" class="input__input" name="name" placeholder="Nhập tên sản phẩm" value="${requestScope["shoes"].name}">
          </div>
          <div class="input__category">
            <div class="input__category-search">
              <input type="text" class="category-search__input" placeholder=" Nhập tên ngành hàng">
              <span class="category-search__decrip">Chọn ngành hàng chính xác</span>
            </div>
            <div class="input__category-cate">
              <select name="input__category-cate" class="input__category-select" >
                <option value="1">Shoes</option>
                <option value="2">Clothes</option>
              </select>
              <select name="input__category"class="input__category-select" >
                <option value="1">Nike</option>
                <option value="2">Adidas</option>
                <option value="3">Vans</option>
                <option value="4">Converse</option>
                <option value="5">Supreme</option>
              </select>
              <span class="price">Old price</span>
              <input type="text" class="input__price" name="oldPrice" placeholder="Nhập old price" value="${requestScope["shoes"].oldPrice}">
              <span class="price">New price</span>
              <input type="text" class="input__price" name="newPrice" placeholder="Nhập new price" value="${requestScope["shoes"].newPrice}">
            </div>
          </div>
          <div class="mb-3 upload">
            <label for="formFileMultiple" class="form-label upload__title">Upload image</label>
            <input class="form-control upload__control" name="img" type="file" id="formFileMultiple" multiple value="${requestScope["shoes"].image}">
          </div>
          <button class="btn add-product">+ Thêm sản phẩm</button>
        </form>
      </div>
    </div>
  </div>
</div>



</body>
</html>
