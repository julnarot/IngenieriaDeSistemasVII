<%-- 
    Document   : index
    Created on : 28-mar-2013, 21:42:44
    Author     : MAGWI
--%>
<%@include file="conexion.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <a href="report.jsp">[  Reporte  ]</a>
        <a href="miniport/pprincipal.jsp">[  main  ]</a>
        <br/>
        <h1>Insert Demo</h1>
        <form action="FormSave.jsp" method="post">
            <h4>-------------------------------------------------------</h4>
            <table border="0">
                <thead>
                    <tr>
                        <th>INSERT</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>NOMBRE :</td>
                        <td><input type="text" name="name" value=""></td>
                    </tr>
                    <tr>
                        <td>DNI :</td>
                        <td><input type="text" name="dni" value=""</td>
                    </tr>
                <th><button type="submit" title="Guardar">Save</button></th>
                </tbody>
            </table>
            <h4>-------------------------------------------------------</h4>
            <input type="hidden" name="accion" value="guardar">
        </form>
    </center>
    <%-- <jsp:forward page="miniport/pprincipal.jsp"></jsp:forward> --%>
</body>
</html>
