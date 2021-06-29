<%-- 
    Document   : Laba5
    Created on : 27.05.2021, 19:38:58
    Author     : Levik
--%>

<%@page import="Laba5.Laba5_Part1"%>
<%@page import="Laba5.Laba5_Part2"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 5</title>
    </head>
    <body>
        <div class="container">
            <a href="index.jsp">Back to landing page</a>
            <h1 class="text-center">Lab 5</h1>
            <div class="mt-5" id="laba">
                <%! Laba5_Part1 Laba5_1 = new Laba5_Part1("Lorem Ipsum"
                    + " dolor sit amet, consectetur adipiscing elit. Pellentesque"
                    + " faucibus nunc vulputate magna faucibus, vitae euismod augue hendrerit."
                    + " Suspendisse sapien tortor, scelerisque et iaculis at, tempus dignissim ligula."
                    + " Mauris facilisis felis felis. Nam a sapien eget neque pellentesque tincidunt."
                    + " Praesent et orci eget tellus aliquet sodales. Phasellus sit amet imperdiet ligula, id vehicula velit."
                    + " Sed in massa venenatis, consequat quam at, fringilla ipsum."
                    + " Cras cursus sit amet urna et pellentesque. Suspendisse egestas ullamcorper fringilla."
                    + " Aenean arcu ante, luctus nec elit quis, viverra eleifend magna."
                    + " Nullam aliquam quam pretium tellus cursus, nec consectetur lorem dictum."
                    + " Vestibulum quam sem, condimentum vehicula elit a, elementum lacinia lectus."
                    + " Proin venenatis, leo vitae rhoncus dapibus, nisi urna vestibulum velit, eu tempus tortor purus ut ante."
                    + " Ut vehicula nisl nulla, nec eleifend eros dignissim id. Proin egestas, nisi sit amet"
                    + " elementum dapibus, quam risus sodales metus, nec posuere elit justo id dui."
                    + " ed ultrices metus vel neque euismod ornare. Suspendisse potenti."
                    + " Integer pulvinar non odio sit amet ultrices. Donec quis consequat sem."
                    + " Phasellus dignissim pretium luctus. Praesent tempor aliquet nunc ut ullamcorper."
                    + " Etiam dictum ullamcorper dui, id pellentesque sem dapibus vel. Nulla lobortis sapien ligula,"
                    + " eu vulputate eros lacinia quis. Vestibulum eget pharetra ligula. Etiam laoreet,"
                    + " justo eget tempus fermentum, mi elit laoreet nunc, porta tincidunt lacus metus in ante."
                    + " Morbi interdum nec metus a consequat. Duis laoreet feugiat dui."
                    + " Etiam in cursus enim. Nam ac lobortis nunc. Morbi vestibulum erat sit amet ligula feugiat, et"
                    + " tempus diam dictum. Nulla volutpat placerat dui. Aenean ut ultrices arcu."
                    + " Morbi mauris dui, dapibus ultrices erat sed, posuere gravida odio. Praesent eu risus magna."
                    + " Aliquam erat volutpat. Maecenas id interdum dolor."
                    + " Mauris semper mi eros, a vehicula metus rutrum a. Cras magna leo, volutpat"
                    + " vel nulla a, tincidunt egestas neque. Mauris scelerisque lectus quis dolor ultrices efficitur."
                    + " Nulla sit amet porttitor ex. Nulla tempor ipsum quis tellus blandit, tincidunt egestas massa mollis."
                    + " Aliquam semper pulvinar ligula ut vehicula. Ut nec dolor aliquet, aliquam neque nec, ultrices est."
                    + " Vivamus nec dolor vel magna aliquam cursus. Curabitur posuere elit eros, laoreet vehicula eros vulputate eu.");%>
                <p><b>Text:</b> <%= Laba5_1.GetText()%></p>
                <form action="./Laba5" method="post" class="form-inline">
                <label for="x"><b>Enter word to search for: </b></label>
                <div class="input-group">
                    <input  class="form-control" id="find" type="text" name="find"/>
                    <input class="btn btn-success" type="submit" value="Submit"/>
                </div>
                <p class="mt-3 mb-0"><b>Word number: </b><%=request.getAttribute("result")%></p>
                </form>
                <p><b>Most popular words(8):</b> <%= Laba5_1.GetFirstNMostPopularWords(8)%></p>
                <p><b>Number of words that do not contain letter (e):</b>
                    <%= Laba5_1.GetNumberOfWordsThatNotContain('e')%></p>
                <p><b>Number of words that contain 4 different letters (4):</b>
                    <%= Laba5_1.GetNumberOfWordsThatContainDiferentLetters(4)%></p>
                <p><b>Most popular sequences (8):</b>
                    <%= Laba5_1.MostPopularSequences(8, 3)%></p>
                <%! Laba5_Part2 Laba5_Part2 = new Laba5_Part2(23); %>
                <% Laba5_Part2.InitList(); %>
                <p><b>List: </b><br/> <%= Laba5_Part2.DisplayList()%></p>
                <%! String find = "model #8"; %>
                <p><b>Index of element with value</b> <%= find %>: <%= Laba5_Part2.IndexOf(find)%></p>
                <% Laba5_Part2.SortByStringField();%>
                <p><b>Sorted by string field: </b><br/> <%= Laba5_Part2.DisplayList()%></p>
                <p><b>Index of element with value </b><%= find %>: <%= Laba5_Part2.IndexOf(find)%></p>
                <% Laba5_Part2.SortByShortField();%>
                <p><b>Sorted by int field: </b><br/> <%= Laba5_Part2.DisplayList()%></p>
                <p><b>Index of element with value </b><%= find %>: <%= Laba5_Part2.IndexOf(find)%></p>
            </div>
        </div>
    </body>
</html>