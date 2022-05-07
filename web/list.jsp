<%-- 
    Document   : list
    Created on : Mar 26, 2022, 2:49:58 PM
    Author     : hoang_8qcm2ge
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table{
                border-collapse: collapse;
            }
        </style>
        <script type="text/javascript">
            function doDelete(code){
                if(confirm("Are you sure to delete product with code="+code+"?")){
                    window.location="delete?code="+code;
                }
            }
        </script>
    </head>
    <body>
        <h1>Products</h1>
        <table border="1px" width="40%">
            <tr>
                <td>Code</td>
                <td>Description</td>
                <td>Price</td>
                <td>Action</td>
            </tr>
            <c:forEach items="${requestScope.data}" var="i">
            <tr>
                <td>${i.code}</td>
                <td>${i.description}</td>
                <td>$${i.price}</td>
                <td>
                    <a href="#" onclick="doDelete('${i.code}')">Delete</a>
                    <a href="edit?code=${i.code}">Edit</a>
                </td>
            </tr>
            </c:forEach>
        </table>
        <h3><a href="new.jsp">Add Product</a></h3>
    </body>
</html>
