<%@ page import="java.time.LocalDateTime" %><%--
  Created by IntelliJ IDEA.
  User: Olga
  Date: 12.01.2020
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! private long visitCounter = 0; %>
<html>
<head>
    <title>Obsługa Cookie</title>
</head>
<body>
<h2>Obsługa Cookie </h2>
<%
    int searchId = 123456;
    Cookie cookie = new Cookie("searchId", String.valueOf((searchId)));
    cookie.setMaxAge(60*60*24);
    response.addCookie(cookie);

    Cookie usernameCookie = new Cookie("username", "MyUserName");
    response.addCookie(usernameCookie);
%>


<%--&lt;%&ndash;<jsp:forward page="redirected.jsp">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <jsp:param name="myParam" value="my value"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;</jsp:forward>&ndash;%&gt;--%>

<%--<h2>Parametry wyszukiwania</h2>--%>
<%--&lt;%&ndash;<form action="search.jsp" method="get">&ndash;%&gt;--%>
<%--<form action="search.jsp" method="post">--%>
<%--    <label>Szukane słowo: <input type="text" name="query"></label>--%>
<%--    <label> Strona nr: <input type="number" name="page"></label>--%>
<%--    <label>Sortowanie:--%>
<%--        <select name="sort">--%>
<%--            <option value="asc">rosnaco</option>--%>
<%--            <option value="desc">malejąco</option>--%>
<%--        </select>--%>
<%--    </label>--%>
<%--    <input type="submit" value="wyślij"/>--%>
<%--</form>--%>

<%--<a href="search.jsp?query=JAVA&page=3&sort=desc">kliknij mnie</a>--%>

<%--</body>--%>
</html>
