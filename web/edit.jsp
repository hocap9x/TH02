<%-- 
    Document   : new
    Created on : Mar 26, 2022, 3:21:51 PM
    Author     : hoang_8qcm2ge
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add A New Product</h1>
        <c:set var="c" value="${requestScope.product}"/>
        <form action="edit" method="post">
            Code:<input type="text" readonly name="code" value="${c.code}"/><br/>
            Description:<input type="text" name="description" value="${c.description}"/><br/>
            Price:<input type="text" name="price" value="${c.price}"/><br/>
            <input type="submit" value="UPDATE"/><br/> 
        </form>
        
    </body>
</html>
