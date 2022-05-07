<%-- 
    Document   : new
    Created on : Mar 26, 2022, 3:21:51 PM
    Author     : hoang_8qcm2ge
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add A New Product</h1>
        <h3 style="color: red">${requestScope.error}</h3>
        <form action="add">
            Code:<input type="text" name="code"/><br/>
            Description:<input type="text" name="description"/><br/>
            Price:<input type="text" name="price"/><br/>
            <input type="submit" value="SAVE"/><br/> 
        </form>
    </body>
</html>
