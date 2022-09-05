<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="req" value="${pageContext.request}"/>
<c:set var="uri" value="${req.requestURI}"/>
<c:set var="url">${req.requestURL}</c:set>
<!doctype html>
<html lang="en">
<head>
  <link rel="icon" href="../image/SB-L2-xxl.svg" type="image/x-icon">
  <title>Kênh Admin ShopBae</title>
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
  <link rel="stylesheet" href="../view/admin.css">

</head>
<body>
<div class="navbar">
  <div class="navbar__logo">
    <a href="/ShopBae" class="navbar__logo-link">
      <img src="../image/SB-L2-xxl.svg" alt="" class="navbar__logo-img">
      <span class="navbar__logo-name">ShopBae</span>
    </a>
    <span class="navbar__logo-title">Kênh Admin Manager</span>

    <c:if test='${sessionScope["users"] != null}'>
  </div>
  <div class="navbar__info">
    <div class="navbar__account">
      <img src="../image/avatar_3.webp" alt="" class="navbar__account-avatar">
      <span class="navbar__account-info">${sessionScope["users"].getName()}</span>
    </div>
    <button class="navbar__action"><i class="fa-solid fa-list"></i>
    </button>

  </div>
  </c:if>

</div>
<div class="admin">
  <div class="admin__category">
    <div class="category__admin">
      <span  class="category__title">Quản lý Admin</span>
      <a href="#" class="category__element category__acc">Account Admin</a>
      <a href="#" class="category__element category__info">Info Admin</a>
    </div>
    <div class="category__users">
      <span class="category__title">Quản lý Users</span>
      <a href="#" class="category__element category__acc">Account Users</a>
      <a href="add_product.jsp" class="category__element category__info">Info Users</a>
    </div>

  </div>
  <div class="grid grid__account">
    <form action="#" class="header__search" method="post">
      <div class="search__with">
        <div class="search__with-name">
          <span name="" id="#" class="search__title">Tên Account</span>
          <input type="text" class="search__input" placeholder="Please input at least 2 character ">
        </div>
        <div class="search__with-category"> <span class="search__category-title">Danh mục</span>
          <select name="search__category-element" id="" class="search__category-element">
            <option value="">Admin</option>
            <option value="">Users</option>
          </select></div>
      </div>
      <button class="btn btn-search">Tìm</button>
    </form>
    <div class="product">
      <div class="navbar__product">
        <a href="#" class="navbar__product-title">Tất cả</a>
        <a href="#" class="navbar__product-title">Đang hoạt động</a>
        <a href="#" class="navbar__product-title">Block</a>
      </div>
      <form action="/admin?action=create" method="post" class="form__add">
        <button class="btn btn__add">+  Thêm Account</button>
      </form>

      <form>
        <table>
          <c:if test="${user != null}">
            <input type="hidden" name="id" value="${user.id}"/>
          </c:if>
          <tr>
            <th>User Name:</th>
            <td>
              <input type="text" name="name" size="45" value="${user.name}"/>
            </td>
          </tr>
          <tr>
            <th>User Password:</th>
            <td>
              <input type="text" name="password" size="45" value="${user.password}"
              />
            </td>
          </tr>
          <tr>
            <th>User Role:</th>
            <td>
              <input type="text" name="role" size="45" value="${user.role}"
              />
            </td>
          </tr>
          <tr>
            <th>Status:</th>
            <td>
              <input type="text" name="status" size="45" value="${user.status}"
              />
            </td>
          </tr>
          <tr>
            <td colspan="2" align="center">
              <input type="submit" value="Save"/>
            </td>
          </tr>

        </table>
      </form>


<%--      <div class="account-list">--%>
<%--        <div class="grid grid__product-list">--%>
<%--          <div class="grid__row product-list__title">--%>
<%--            <div class="grid__column-3 title__title title__title-name">--%>
<%--              <input type="checkbox" class="checkbox">--%>
<%--              <span class="title-name">Tên Account</span>--%>
<%--            </div>--%>
<%--            <span class=" grid__column-3 title__title title-category">Mật khẩu</span>--%>
<%--            <span class=" grid__column-3 title__title title-category">Vai trò</span>--%>
<%--            <span class="grid__column-3 title__title title-brand">Trạng thái</span>--%>
<%--            <span class="grid__column-3 title__title title-action">Hành động</span>--%>

<%--          </div>--%>
<%--        </div>--%>
<%--        &lt;%&ndash;List Account&ndash;%&gt;--%>
<%--        <c:if test="${user != null}">--%>
<%--          <input type="hidden" name="id" value="${user.id}"/>--%>
<%--        </c:if>--%>
<%--          <div class="grid grid__account-list">--%>
<%--            <div class="grid__row product-list__element">--%>
<%--              <div class="grid__column-3 element__element">--%>
<%--                <input type="checkbox" class="checkbox">--%>
<%--                <img src="../image/avatar_3.webp" alt="" class="element-img">--%>
<%--                <input type="text" name="name" size="10" value="${user.password}"/>--%>
<%--              </div>--%>
<%--              <div class="grid__column-3 element-category">--%>
<%--                <select name="role"  class=" element-category__select">--%>
<%--                  <option value="ADMIN">Admin</option>--%>
<%--                  <option value="USER">User</option>--%>
<%--                </select>--%>
<%--              </div>--%>

<%--              <div class="grid__column-3 element-category">--%>
<%--                <select name="status"  class=" element-category__select">--%>
<%--                  <option value="ACTIVE">Đang hoạt động</option>--%>
<%--                  <option value="BLOCKED">Block</option>--%>
<%--                </select>--%>
<%--              </div>--%>


<%--              <div class="grid__column-3 element__action element-category">--%>
<%--                <a class="btn btn__update" href="/admin?action=edit&id=${user.id}"><i class="fa-solid fa-pen"></i></a>--%>
<%--                <a class="btn btn__delete" href="/admin?action=delete&id=${user.id}"><i class="fa-solid fa-trash"></i></a>--%>
<%--              </div>--%>

<%--            </div>--%>
<%--          </div>--%>
        <%--List Account--%>
        <%--                    Phân trang--%>

<%--        <ul class="pagination home-product__pagination">--%>
<%--          <li class="pagination-item">--%>
<%--            <a href="#" class="pagination-item__link">--%>
<%--              <i class="pagination-item__icon fas fa-angle-left"></i>--%>
<%--            </a>--%>
<%--          </li>--%>
<%--          <li class="pagination-item">--%>
<%--            <a href="#"--%>
<%--               class="pagination-item__link pagination-item__link--active">1</a>--%>
<%--          </li>--%>

<%--          <li class="pagination-item">--%>
<%--            <a href="#" class="pagination-item__link">2</a>--%>
<%--          </li>--%>

<%--          <li class="pagination-item">--%>
<%--            <a href="#" class="pagination-item__link">3</a>--%>
<%--          </li>--%>

<%--          <li class="pagination-item">--%>
<%--            <a href="#" class="pagination-item__link">4</a>--%>
<%--          </li>--%>

<%--          <li class="pagination-item">--%>
<%--            <a href="#" class="pagination-item__link">...</a>--%>
<%--          </li>--%>
<%--          <li class="pagination-item">--%>
<%--            <a href="#" class="pagination-item__link">14</a>--%>
<%--          </li>--%>

<%--          <li class="pagination-item">--%>
<%--            <a href="#" class="pagination-item__link">--%>
<%--              <i class="pagination-item__icon fas fa-angle-right"></i>--%>
<%--            </a>--%>
<%--          </li>--%>
<%--        </ul>--%>
        <%--                    Phân trang--%>


      </div>
    </div>
  </div>
</div>


</body>
</html>

