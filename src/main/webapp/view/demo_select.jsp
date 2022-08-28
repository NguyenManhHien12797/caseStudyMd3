<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 8/28/2022
  Time: 2:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<select onclick="getSelect()" id="demoselect">
    <option value="Địa chỉ">Địa chỉ</option>
    <option>Hà Nội</option>
    <option>Hòa Bình</option>
    <option>Đà Nẵng</option>
    <option>TP.Hồ Chí Minh</option>
</select>
<input type="text" id="txtvalue" onchange="getSelect()">
<button onclick="getSelect()">aba</button>
<p id="d">display</p>
</body>
<script>
    function getSelect(){
        let d= document.getElementById("txtvalue").ariaValueText;
        // var display = d.options[d.selectedIndex].text;
        document.getElementById("d").innerHTML = d;
    }
</script>
</html>
