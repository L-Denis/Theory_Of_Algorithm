<%-- 
    Document   : Laba2
    Created on : 08.04.2021, 20:19:02
    Author     : Levik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 2</title>
    </head>
    
    <body>
        <div class="container">
            <a class="btn btn-secondary" href="index.jsp">Back to landing page</a>
            <h1 class="text-center">Laba 2</h1>
            <div class="mt-5" id="laba">
                <form action="./Laba2" method="post" class="form-inline">
                    <label for="x">Enter x</label>
                    <div class="input-group">
                        <input  class="form-control" id="x" type="text" name="x" placeholder="##.###"/>
                        <input class="btn btn-success" type="submit" value="Submit"/>
                    </div>
                    <p class="mt-3 mb-0">Result: <%=request.getAttribute("result")%></p>
                </form>
            </div>
        </div>
    </body>
</html>