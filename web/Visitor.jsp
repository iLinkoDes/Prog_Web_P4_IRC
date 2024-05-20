<%
    String cookieName = "visitorName";
    String visitorName = "";
    Cookie[] cookies = request.getCookies();
    boolean existeCookie = false;
    for (Cookie cookie : cookies){
        if(cookieName.equals(cookie.getName())){
            existeCookie = true;
            visitorName = cookie.getValue();
        }
    }
    if(!existeCookie){
    response.sendRedirect("Home.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Visitante</title>
    </head>
    <body>
        <h1>Bienvenido <%=visitorName%></h1>
    </body>
</html>
