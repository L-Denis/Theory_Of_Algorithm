<%-- 
    Document   : Laba3
    Created on : 20.04.2021, 18:18:25
    Author     : Levik
--%>


<%@page import="Laba3.Calculate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 3</title>
    </head>
    
    <body>
        <div class="container">
            <a class="btn btn-secondary" href="index.jsp">Back to landing page</a>
            <h1 class="text-center">Laba 3</h1>
            <div class="mt-5" id="laba">
            <%! Calculate lab3 = new Calculate();%>
            <p><%= "1) K = " + lab3.InitArray(20) %></p>
            <p><%= "2) Negative: " + lab3.FindNegativeLenght() %></p>
            </div>
        </div>
    </body>
</html>