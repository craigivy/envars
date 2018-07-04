<%@ page language="java" %>
<%@ page import="java.util.Map" %>
<html>
<style>
    table {
        border-collapse: collapse;
    }
                
    table, td, th {
        border: 1px solid black;
    }
</style>    
<body>
<table>
<tr><td><b>Property Names</b></td>
<td><b>Property Values</b></td></tr>
<%
Map<String, String> env = System.getenv();
for (String envName : env.keySet()) {
%>
<tr>
<td><%= envName %></td>
<td><%= env.get(envName) %></td>
</tr>
<% } %>
</table>
</body>
</html>