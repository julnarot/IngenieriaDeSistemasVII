<%@include file="conexion.jsp" %>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%
    consulta = "SELECT p.idper, p.name, p.dni, p.codigo, p.monto, p.asistencia, p.entregado, p.nroticket, e.name AS responsable "
             + " FROM persona p INNER JOIN encargado e ON e.idenc = p.idenc "
             + " WHERE p.idper=?;";
    ps = conex.prepareStatement(consulta);
    ps.setString(1, request.getParameter("idper"));
    rs = ps.executeQuery();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
        <link href="assets/css/bootstrap.css" rel="stylesheet">
        <style type="text/css">
            body {
                padding-top: 60px;
                padding-bottom: 40px;
            }
            .sidebar-nav {
                padding: 9px 0;
            }

            @media (max-width: 980px) {
                /* Enable use of floated navbar text */
                .navbar-text.pull-right {
                    float: none;
                    padding-left: 5px;
                    padding-right: 5px;
                }
            }
        </style>
        <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
    </head>
    <body>

        <div class="modal" style="position: relative; top: auto; left: auto; right: auto; margin: 0 auto 20px; z-index: 1; max-width: 100%;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3>EDITAR PERSONAS</h3>
            </div>


            <form action="FormSave.jsp" method="post">
                <div class="modal-body">
                    <table align="center" width="300">
                        <%if (rs.next()) {%>
                        <tr>
                            <td>NOMBRE
                                <input type="text" name="name" value="<%=rs.getString("name")%>" /> </td>
                            <td>
                                ASISTENCIA
                                <select name="asistencia">
                                    <option value="<%=rs.getString("asistencia")%>">
                                        <%
                                        if(rs.getString("asistencia").equals("1"))
                                        {
                                            out.print("Asistio");
                                        }else
                                        {
                                            out.print("No Asistio");
                                        }
                                        %>
                                    </option>
                                    <option value="1">Asistio</option>
                                    <option value="0">No Asistio</option>
                                </select>
                            </td>
                        </tr>   
                        <tr>
                            
                            <td>DNI<input type="text" name="dni" value="<%=rs.getString("dni")%>"/> </td>
                            <td>CODIGO<input type="text" name="codigo" value="<%=rs.getString("codigo")%>"/> </td>   
                        </tr> 
                            
                        <tr>

                            <td>
                                <label>MONTO</label>
                                <input type="text" name="monto" value="<%=rs.getString("monto")%>" /> </td>

                            <td>
                                <label>Nº TICKET</label>
                                <input type="text" name="nroticket" value="<%=rs.getString("nroticket")%>"/> </td>
                        </tr>
                        <tr>

                        </tr>   
                        <tr>
                            <td>CERTIFICADO</td>
                            <td>
                                <select name="entregado">
                                    <option value="<%=rs.getString("entregado")%>">
                                        <%
                                        if(rs.getString("entregado").equals("1"))
                                        {
                                            out.print("Entregado");
                                        }else
                                        {
                                            out.print("No Entregado");
                                        }
                                        %>
                                    </option>
                                    <option value="1">Entregado</option>
                                    <option value="0">No Entregado</option>
                                </select>
                            </td>
                            </td>
                        </tr>
                        <tr>

                        </tr>
                        <tr>
                            <td>RESPONSABLE</td>
                            <td><input type="text" value="<%=rs.getString("responsable")%>"/> </td>
                        </tr>
                        <tr>
                            <td>ACTUALIZADO POR</td>
                            <td><input type="text" name="actualizado" value="<%=request.getSession().getAttribute("Id")%>"/> </td>
                        </tr>

                        <%}%>
                    </table>


                </div>
                <div class="modal-footer">
                    <a href="reporte.jsp" class="btn">Close</a>
                    <button class="btn btn-primary" type="submit" title="Guardar">Guardar Cambios</button>

                    <input type="hidden" name="accion" value="actualizar"/>
                    <input type="hidden" name="idper" value="<%=rs.getString("idper")%>"/>
                </div>
                <%conex.close();%>
            </form>


        </div>
        <%--

        <div align="center">
            <form action="amigo_save.jsp" method="post">
                <table align="center" width="300">
                    <%if (rs.next()) {%>
                    <tr>
                        <td>NOMBRE</td>
                        <td><input type="text" name="name" value="<%=rs.getString("name")%>" size="40" /> </td>
                    </tr>   
                    <tr>
                        <td>DNI</td>
                        <td><input type="text" name="dni" value="<%=rs.getString("dni")%>" size="40" /> </td>
                    </tr>   
                    <%}%>
                    <tr>
                        <th></th>
                        <th colspan="4"><button type="submit" title="Guardar">GUARDAR</button></th>
                    </tr>
                </table>
                <input type="hidden" name="accion" value="actualizar"/>
                <input type="hidden" name="idamigo" value="<%=rs.getString("idper")%>"/>
                <%conex.close();%>
            </form>
        </div>
            
        --%>
    </body>
</html>
