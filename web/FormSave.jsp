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
String actualizado = request.getParameter("actualizado");


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
else if(accion.equals("actualizar"))
{
    consulta="update persona set name=?, dni=?, codigo=?, monto=?, asistencia=?, entregado=?, nroticket=?, actualizado=? where idper=?;";
    ps=conex.prepareStatement(consulta);
    ps.setString(1, name);
    ps.setString(2, dni);
    ps.setString(3, codigo);
    ps.setString(4, monto);
    ps.setString(5, asistencia);
    ps.setString(6, entregado);
    ps.setString(7, nroticket);
    ps.setString(8, actualizado);
    ps.setString(9, idper);
    

    if(ps.executeUpdate()==1){response.sendRedirect("reporte.jsp");}
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