<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>
<%@include file="conexion.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%
    String nombre = request.getParameter("nombre") == null ? "" : request.getParameter("nombre");
    String stylo = "display:normal";
    String UsuarioNombre=(String) request.getSession().getAttribute("userName");
    String UsuarioId=(String) request.getSession().getAttribute("userId");
    
%>
<%
    consulta = "select * from persona  "
            + " where name like ('%" + nombre + "%') order by name ";
    ps = conex.prepareStatement(consulta);
    rs = ps.executeQuery();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
        
    </head>
    <body>
        <div align="center">
            <h2><%=UsuarioNombre%>:<%=UsuarioId%></h2>
            <h3>IV SEMINARIO DE LA TENDENCIA DE DESARROLLO DE SOFTWARE</h3>
            &nbsp;[&nbsp;<a href="#">Reporte Inscritos</a> &nbsp;]&nbsp;
            &nbsp;[&nbsp;<a href="#">Recaudacion En moneda</a> &nbsp;]&nbsp;           
            &nbsp;[&nbsp;<a href="#" id="opener">Nuevo</a> &nbsp;]&nbsp;           
            <br>
        </div>
            
            <div id="dialog" title="Registro">
                <form action="FormSave.jsp" method="post">
    
                <h2>REGITRAR USUARIOS</h2>
    
                    <div>
                        <input type="text" name="name" id="name" placeholder="Apellidos y Nombres" onChange="javascript:this.value = this.value.toUpperCase();"/>
                    </div>
                    <div>
                        <input type="text" name="dni" id="dni" placeholder="Dni" maxlength="8"/>
                    </div>
                    <div>
                        <input type="text" name="email" id="email" placeholder="Email" />
                    </div>
                    <div>
                        <textarea type="text" name="comentario" id="comentario" rows="2" cols="5" maxlength="190" placeholder="Comentario"></textarea>
                    </div>    
                    <div>
                        <input type="submit" class="button" value="Registrar" />
                        <input type="reset" class="button button-alt" value="Cancel" />
                    </div>
                <input type="hidden" name="accion" value="guardar">
        </form>
            </div>
        <br>
        <div align="center">
            <br/>
            <br/>
            <br/>
            <br/>
            <form name="formBuscar" action="reporte.jsp">
                <div>
                    BUSCAR :
                    <input type="text" class="textImput" id="nombre" name="nombre" value="" size="30" /> 
                    <input type="submit" value="Buscar" name="buscar" />
                </div>
            </form>
            <br/>
            <br/>
            <table id="rounded-corner" align="center" border="1">
                <thead>
                    <tr>
                        <th colspan="6">REPORTE SUSCRITOS</th>
                    </tr>
                    <tr>
                        <th>ID</th>
                        <th>NOMBRE</th>
                        <th>MONTO</th>
                        <th>ENTREGADO</th>
                        <th>NRO TICKET</th>
                        <th>OPCIONES</th>
                    </tr>
                </thead>
                <% while (rs.next()) {%>
                <tr>
                    <td><%=rs.getString("idper")%></td>
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("monto")%></td>
                    <td><%=rs.getString("entregado")%></td>
                    <td><%=rs.getString("nroticket")%></td>
                    <td>
                        &nbsp;<a href="#" onclick="return confirm('¿Estas seguro de ELIMINAR?');">ELIMINAR</a>&nbsp;
                        &nbsp;<a href="frmEdit.jsp?accion=actualizar&idper=<%=rs.getString("idper") %>" title="Editar">EDITAR</a>&nbsp;
                        &nbsp;<a href="#" title="PRINT">PRINT</a>&nbsp;
                    </td>

                </tr>
                <%}
                    conex.close();%>
            </table>
        </div>
    </body>
</html>
