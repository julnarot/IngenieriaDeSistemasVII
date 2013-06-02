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
    
    </head>
    <body>
    <center>
        <form action="FormSave.jsp" method="post" style="background-color: #fff;">
    
                <h2>REGITRAR ASISTENTES</h2>
    
                    <div>
                        <input type="text" name="name" id="name" placeholder="Nombres y Apellidos" onChange="javascript:this.value = this.value.toUpperCase(); " required=""/>
                    </div>
                    <div>
                        <input type="text" name="dni" id="dni" placeholder="Dni" maxlength="8"  required=""/>
                    </div>
                    <div>
                        <input type="email" name="email" id="email" placeholder="Email"  required=""/>
                    </div>                                                       
                    <div>
                        <input type="text" name="monto" id="monto" placeholder="Monto" maxlength="5" required=""/>
                    </div>
                    <div>
                        <input type="text" name="nroticket" id="numtic" placeholder="Numero de Ticket" maxlength="5" required=""/>
                    </div>
                    <div>
                        <textarea type="text" name="comentario" id="comentario" rows="2" cols="5" maxlength="190" placeholder="Comentario"></textarea>
                    </div>    
                    <div>
                        <input type="hidden" name="idenc" value="<%=request.getSession().getAttribute("Id")%>" />
                        <input type="submit" class="button" value="Registrar" />
                        <input type="reset" class="button" value="Cancel" onclick = "location='reporte.jsp'" />
                    </div>
                <input type="hidden" name="accion" value="guardar">
        </form>
        </center>
    </body>
</html>
