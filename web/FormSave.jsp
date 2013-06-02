<%@include file="conexion.jsp"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
String accion = request.getParameter("accion");

String idper = request.getParameter("idper");
String name = request.getParameter("name");
String codigo = request.getParameter("codigo");
String email = request.getParameter("email");
String estado = request.getParameter("estado");
String asistencia = request.getParameter("asistencia");
String comentario = request.getParameter("comentario");
String dni = request.getParameter("dni");
String idenc = request.getParameter("idenc");
String monto = request.getParameter("monto");
String entregado = request.getParameter("entregado");
String nroticket = request.getParameter("nroticket");


if(accion.equals("guardar"))
    {
    consulta="insert into persona(name, codigo, email, estado, asistencia, comentario, dni, idenc, monto, entregado, nroticket) "
                         + "values (?,    '0',     ?,     '1',     '0',      ?,          ?,   ?,   ?,     '0',      ?);";
    ps=conex.prepareStatement(consulta);
    ps.setString(1, name);
    ps.setString(2, email);
    ps.setString(3, comentario);
    ps.setString(4, dni);
    ps.setString(5, idenc);
    ps.setString(6, monto);
    ps.setString(7, nroticket);
    if(ps.executeUpdate()==1){response.sendRedirect("reporte.jsp");}
    else{out.print("No es posible registrar");
    }
}
else if(accion.equals("actualizar")&&(idper.length()>0)&&(idper.length()>0))
{
    consulta="update ;";
    ps=conex.prepareStatement(consulta);
    if(ps.executeUpdate()==1){response.sendRedirect("conductor_list.jsp");}
    else{out.print("No es posible actualizar");}
}

else if(accion.equals("eliminar")){
consulta = "DELETE FROM persona WHERE idper=? ;";
                ps = conex.prepareStatement(consulta);
                ps.setString(1, idper);
                ps.executeUpdate();
             //   if (ps.executeUpdate() == 1) {
                    response.sendRedirect("reporte.jsp");
             //   } else {
                    out.print("No es posible eliminar contacto");
            //    }
    
}else{
    out.print("Accion invalida...");
}

conex.close();
%>