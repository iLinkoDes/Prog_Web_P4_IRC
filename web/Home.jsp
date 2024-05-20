<% 
    String cookieName = "nombreVisitante";
    Cookie[] cookies = request.getCookies();
    boolean existeCookie = false;
    for (Cookie cookie : cookies){
        if(cookieName.equals(cookie.getName())){
            existeCookie = true;
        }
    }
    if(existeCookie){
        response.sendRedirect("Visitor.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina de Inicio</title>
    </head>
    <body>
        <h1>Bienvenido</h1>
        <p>Esta es la primera vez que visitas este sitio!</p>
        <form action="<%= getServletContext().getContextPath() %>/Home" method="POST">
            <p>
                Nombre: 
                <input type="text" name="nombre" />
                <input type="submit" value="Enviar" />
            </p>
            
        </form>
    </body>
</html>
