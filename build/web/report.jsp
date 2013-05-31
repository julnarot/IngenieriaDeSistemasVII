<%-- 
    Document   : report
    Created on : 28-mar-2013, 22:01:56
    Author     : MAGWI
--%>
<%@include file="conexion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
consulta="select name, dni from persona ;";
ps=conex.prepareStatement(consulta);
rs=ps.executeQuery();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="miniport/pprincipal.jsp">Inicio / New</a>
        <br/>
        <table border="1">
            <tr>
                <th>Name</th>
                <th>DNI</th>
                
                <th>Opciones</th>
            </tr>
            <% while(rs.next()){%>
            <tr>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("dni")%></td>
                
            </tr>
            <%}%>
           
        </table>
        
    </body>
</html>
