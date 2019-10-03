<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 10/1/19
  Time: 10:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit product</title>
</head>
<body>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name Product: </td>
                <td><input type="text" name="nameProduct" id="nameProduct" value="${requestScope["product"].getNameProduct()}"></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><input type="text" name="priceProduct" id="priceProduct" value="${requestScope["product"].getPriceProduct()}"></td>
            </tr>
            <tr>
                <td>Description: </td>
                <td><input type="text" name="descriptionProduct" id="descriptionProduct" value="${requestScope["product"].getDescriptionProduct()}"></td>
            </tr>
            <tr>
                <td>Producer: </td>
                <td><input type="text" name="producer" id="producer" value="${requestScope["product"].getProducer()}"></td>
            </tr>
            <tr>
                <td><input type="submit" value="Update product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
