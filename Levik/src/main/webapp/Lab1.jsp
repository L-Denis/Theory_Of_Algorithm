<%-- 
    Document   : Lab1
    Created on : 08.04.2021, 16:48:14
    Author     : Levik
--%>

<%@page import="knu.fit.ist.TA_1.Lab1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>This is my lab1!</h1>
        
        <%! Lab1 lab1 = new Lab1(150); %>
         <p><%= lab1.toString() %></p>
          <%lab1.IncreaseScore(33);%>
          <p><%= lab1.toString() %></p>
          <%lab1.DecreaseScore(60);%>
          <p><%= lab1.toString() %></p>
          
        <a href="index.jsp">Home</a>
    </body>
</html>
