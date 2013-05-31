<%@include file="conexion.jsp"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
String accion = request.getParameter("accion");

String idper = request.getParameter("idper");
String name = request.getParameter("name");
String dni = request.getParameter("dni");
String email = request.getParameter("email");
String comentario = request.getParameter("comentario");
String estado = request.getParameter("estado");
String idenc = request.getParameter("idenc");


if(accion.equals("guardar"))
    {
    consulta="insert into persona(name,dni, email, comentario, estado, idenc) values(?,?,?,?,'1','1');";
    ps=conex.prepareStatement(consulta);

    ps.setString(1, name);
    ps.setString(2, dni);
    ps.setString(3, email);
    ps.setString(4, comentario);
    
    

    if(ps.executeUpdate()==1){response.sendRedirect("index.jsp");}
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
    
}else{
    out.print("Accion invalida...");
}

conex.close();
%>