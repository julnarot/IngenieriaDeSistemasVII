
<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%
DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//Db CloudBees
//Connection conex=DriverManager.getConnection("jdbc:mysql://ec2-50-19-213-178.compute-1.amazonaws.com:3306/seminarioupeu?user=seminarioupeu&password=123456");
//Db Locahost
Connection conex=DriverManager.getConnection("jdbc:mysql://localhost:3306/seminarioupeu?user=root&password=");
//variables
Statement st=null;
PreparedStatement ps=null,ps2=null,ps3=null;
ResultSet rs=null,rs2=null,rs3=null;
String consulta="";

//en cada pagina se debe cerrarse la conexion con: conex.close();
%>
