<%--
  Created by IntelliJ IDEA.
  User: quang
  Date: 8/30/2022
  Time: 8:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>List Shoes</title>
</head>
<body>
<center>
    <h1>Adidas</h1>

</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Shoes</h2></caption>
        <tr>

            <th>Name</th>
            <th>Price</th>
            <th>Image</th>
        </tr>
        <c:forEach var="shoes" items="${listShoesA}">
            <tr>
                <td>${shoes.name}</td>
                <td>${shoes.newPrice}</td>
                <td><img src="${shoes.image }"alt="lỗi mẹ rồi"></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>

