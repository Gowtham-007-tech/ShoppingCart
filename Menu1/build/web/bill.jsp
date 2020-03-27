<%-- 
    Document   : bill
    Created on : 27 Mar, 2020, 1:33:08 PM
    Author     : Gowtham
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Your Bill is(including Gst) :</h1>
        <%=request.getParameter("Price") %>
        <p>Thanks for Purchasing</p>
    </body>
</html>
