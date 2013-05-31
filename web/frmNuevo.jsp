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
        <form action="FormSave.jsp" method="post">
            <div class="5grid">
                <div class="row">
                    <div class="6u">
                        <input type="text" name="name" id="name" placeholder="Apellidos y Nombres" onChange="javascript:this.value = this.value.toUpperCase();"/>
                    </div>
                    <div class="6u">
                        <input type="text" name="dni" id="dni" placeholder="Dni" maxlength="8"/>
                    </div>
                    <div class="6u">
                        <input type="text" name="email" id="email" placeholder="Email" />
                    </div>
                    <div class="6u">
                        <textarea type="text" name="comentario" id="comentario" rows="2" cols="5" maxlength="190" placeholder="Comentario"></textarea>
                    </div>    
                    <div class="12u">
                        <input type="submit" class="button" value="Registrar" />
                        <input type="reset" class="button button-alt" value="Cancel" />
                    </div>
                </div>
                <input type="hidden" name="accion" value="guardar">
            </div>
        </form>
    </body>
</html>
