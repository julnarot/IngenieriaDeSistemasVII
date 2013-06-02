<%-- 
    Document   : frmNuevo
    Created on : 30-may-2013, 22:10:07
    Author     : william
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                <h3>REGISTRAR ASISTENTES</h3>
            </div>

            <form action="FormSave.jsp" method="post">
                <div class="modal-body">

                    <table border="0">
                        <tbody>
                            <tr>
                                <td>
                                    <label>NOMBRES Y APELLIDOS</label>
                                    <input type="text" name="name" id="name" placeholder="Nombres y Apellidos" onChange="javascript:this.value = this.value.toUpperCase();" required=""/>
                                </td>
                                <td>
                                    <label>ASISTENCIA</label>
                                    <select name="asistencia">
                                        <option value="0">No Asistio</option>
                                        <option value="1">Asistio</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td><label>DNI</label>
                                    <input type="text" name="dni" id="dni" placeholder="Dni" maxlength="8"/>
                                </td>
                                <td>
                                    <label>COD.UNI.</label>
                                    <input type="text" name="codigo" id="codigo" placeholder="Codigo Universitario" maxlength="9" />
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <label>Nº TICKET</label>
                                    <input type="text" name="nroticket" id="nroticket" placeholder="Numero de Ticket" maxlength="5" required=""/>
                                </td>
                                <td>
                                    <label>MONTO S/.</label>
                                    <input type="text" name="monto" id="monto" placeholder="Monto" maxlength="5" required=""/> 
                                </td>

                            </tr>
                            <tr>
                                <td><label>EMAIL</label>
                                    <input type="email" name="email" id="email" placeholder="Email"/></td>
                                <td>
                                <label>ESTADO CERTIFICADO</label>
                                    <select name="entregado">
                                        <option value="0">No Entregado</option>
                                        <option value="1">Entregado</option>
                                    </select>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <input type="hidden" name="idenc" value="<%=request.getSession().getAttribute("Id")%>" />
                    <a href="reporte.jsp" class="btn">Close</a>
                    <button class="btn btn-primary" type="submit" title="Guardar">Guardar</button>
                    <input type="hidden" name="accion" value="guardar">
                </div>
            </form>
        </div>
    </body>
</html>
