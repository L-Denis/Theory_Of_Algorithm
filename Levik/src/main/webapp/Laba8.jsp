<%-- 
    Document   : Laba8
    Created on : 25.05.2021, 14:45:03
    Author     : Levik
--%>

<%@page import="Laba8.Algoritm_Inf"%>
<%@page import="Laba8.Algoritm"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <div class="container">
            <a class="btn btn-secondary" href="index.jsp">Back to landing page</a>
            <h1 class="text-center">Lab 8</h1>
            <div class="mt-5" id="laba">
                <h2 class="text-left"><b>Задачі:</b> Сортування масиву цілих чисел</h2>
                <p><b>Вихідні дані:</b><br>Кількість елементів: 45000</p>
                <%! Algoritm algorithms = new Algoritm(45000);%>
                <% Algoritm_Inf quickSortDetails = algorithms.QuickSort(); %>
                <h3>Перший алгоритм</h3>
                <ol>
                    <li><b>Назва алгоритму: </b>Quick Sort</li>
                    <li><b>Складність(Big-O): O(n^2)</b></li>
                    <li><b>Час роботи:</b>  <%= quickSortDetails.getTime() %>ms</li>
                    <li><b>Кількість порівнянь </b><%= quickSortDetails.getComparisons() %></li>
                    <li><b>Кількість перестановок </b><%= quickSortDetails.getSubstitutions() %></li>
                </ol>
                <% Algoritm_Inf selectionSortDetails = algorithms.HeapSort(); %>
                <h3>Другий алгоритм</h3>
                <ol>
                    <li><b>Назва алгоритму: </b>HeapSort</li>
                    <li><b>Складність(Big-O): O(n^2)</b></li>
                    <li><b>Час роботи:</b>  <%= selectionSortDetails.getTime() %>ms</li>
                    <li><b>Кількість порівнянь </b><%= selectionSortDetails.getComparisons() %></li>
                    <li><b>Кількість перестановок </b><%= selectionSortDetails.getSubstitutions() %></li>
                </ol>
                <% Algoritm_Inf bubbleSortDetails = algorithms.bubbleSort(); %>
                <h3>Третій алгоритм</h3>
                <ol>
                    <li><b>Назва алгоритму: </b>Bubble Sort</li>
                    <li><b>Складність(Big-O): O(n^2)</b></li>
                    <li><b>Час роботи:</b>  <%= bubbleSortDetails.getTime() %>ms</li>
                    <li><b>Кількість порівнянь </b><%= bubbleSortDetails.getComparisons() %></li>
                    <li><b>Кількість перестановок </b><%= bubbleSortDetails.getSubstitutions() %></li>
                </ol>
            </div>
        </div>
    </body>
</html>