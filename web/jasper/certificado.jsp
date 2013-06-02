<%-- 
    Document   : certificado
    Created on : 31/05/2013, 05:56:29 PM
    Author     : osdmdz
--%>


<%@ page import="net.sf.jasperreports.engine.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.naming.*" %>

<%
  String idper = request.getParameter("idper")==null?"":request.getParameter("idper");
  String idEstandarEap = request.getParameter("idEstandarEap")==null?"vacio":request.getParameter("idEstandarEap");
Connection conexion;
String DRIVER = "com.mysql.jdbc.Driver";
String STRING = "jdbc:mysql://ec2-50-19-213-178.compute-1.amazonaws.com:3306/seminarioupeu";

Class.forName(DRIVER).newInstance();
conexion = DriverManager.getConnection(STRING,"seminarioupeu", "123456"); 


/*
Context init = new InitialContext(); 
Context context = (Context) init.lookup("java:comp/env"); 
DataSource dataSource =(DataSource)context.lookup("jdbc/[dsMiBaseDatos]");
Connection conexion = dataSource.getConnection();
*/
String dirUploadFiles = getServletContext().getRealPath("jasper/certificado.jasper");
//File reportFile = new File(application.getRealPath("web/modulos/reportes/estandarEAP/DatosEstandarSI.jasper"));
 System.out.println("File---jasper--->"+dirUploadFiles);
Map parameters = new HashMap();
parameters.put("idper",idper);

System.out.println("------idEstandarEAP-----"+idEstandarEap);
byte[] bytes = JasperRunManager.runReportToPdf(dirUploadFiles, parameters, conexion);

response.setContentType("application/pdf");
response.setContentLength(bytes.length);
ServletOutputStream ouputStream = response.getOutputStream();
ouputStream.write(bytes, 0, bytes.length);
ouputStream.flush();
ouputStream.close();
%>