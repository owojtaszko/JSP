<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Olga
  Date: 18.01.2020
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Session</title>
</head>
<body>
    <%
        Object userId = session.getAttribute("userId");
    %>

<p> UserId: <%
   out.print(userId);
%></p>

</body>
</html>
