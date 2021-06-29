<%-- 
    Document   : Laba7
    Created on : 24.05.2021, 10:36:36
    Author     : Levik
--%>

<%@page import="Laba7.Progr"%>
<%@page import="Laba7.BinaryTreeOutput"%>
<%@page import="Laba7.BinaryTree"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <div class="container">
            <a class="btn btn-secondary" href="index.jsp">Back to landing page</a>
            <h1 class="text-center">Lab 7</h1>
            <div class="mt-5" id="laba">
                <p>Result:<br> <%= Progr.GetSequence(15, 2, 3)%></p>
                <%! BinaryTree tree = new BinaryTree();%>
                <%
                    tree.add(16);
                    tree.add(9);
                    tree.add(2);
                    tree.add(1);
                    tree.add(6);
                    tree.add(15);
                    tree.add(5);
                    tree.add(12);
                %>
                <pre>
                <p>Result:<br> <%= BinaryTreeOutput.printNode(tree.getRoot())%></p>
                </pre>
                <%tree.mirrorTree(tree.getRoot()); %>
                <pre>
                <p>Result:<br> <%= BinaryTreeOutput.printNode(tree.getRoot())%></p>
                </pre>
            </div>
        </div>
    </body>
</html>