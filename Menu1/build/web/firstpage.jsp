<%-- 
    Document   : Retrieve
    Created on : 26 Mar, 2020, 9:44:30 PM
    Author     : Gowtham
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:derby://localhost:3307/";
String database = "menu";
String userid = "root";
String password = " ";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>

<h1>Departmental Store Product Updation and Insertion</h1>
<table>
<form method="post" action="process.jsp">
<tr><td>Product Id </td>
    <td><input type="text" name="id"></td>
</tr>
<tr><td>Name </td>
<td><input type="text" name="name"></td>

</tr>
<tr><td>Price </td>
<td><input type="text" name="price"></td></tr>
<tr><td>GST </td>
<td><input type="text" name="gst"></td></tr>
<tr><td>
        <input type="submit" value="submit"></td></tr>
</form>
</table>
<a href='secondaPage.jsp'> Click here to go to Billing Page </a>
<table border="1">
<tr>
<td>Product Id</td>
<td>Product Name</td>
<td>Price</td>

</tr>
<tr>
<td>1</td>
<td>Zenphone</td>
<td>15000</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from product";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("price") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br>
<br>

</body>
</html>
