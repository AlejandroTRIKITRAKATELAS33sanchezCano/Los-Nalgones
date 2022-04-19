<%-- 
    Document   : consulta
    Created on : 17/04/2022, 09:31:46 PM
    Author     : Danie_2rs1q2u
--%>
<%@page contentType="text/html" language="java"
        import="java.sql.*, java.util.*,java.text.*"
        pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bitacora</title>
    <link rel="stylesheet" href="css/tabla.css">
    <style>
        h1{color:black;}
    </style>
</head>
<body>
    
<div class="container">
    <table style="width: 75%">
        <thead>
        <tr>
                <th>Número de reporte</th>
                <th>descripcion</th>
                <th>Fecha</th>
                <th>hora</th>
                <th>Etiqueta del equipo</th>
                <th>Docente encargado</th>
                <th>Boleta del Alumno que lo reporto</th>
                <th>Prioridad</th>
                <th>Estado</th>
                <th>Asignatura donde fue reportado</th>
        </tr>
        </thead>
        <tbody>
<%
            //aqui ya puedo incorporar java 
            Connection con = null;
            Statement set = null;
            ResultSet rs = null;
            
            String username="";
            String url;
            String password;
            String driver;
            
            int id = Integer.parseInt(request.getParameter("id"));
            url ="jdbc:mysql://localhost/bdexamen";
            username = "root";
            password = "n0m3l0";
            driver = "com.mysql.jdbc.Driver";
            
            try{
                //conectar
                Class.forName(driver);
                con = DriverManager.getConnection(url, username, password);
                
                try{
                    String q = "select * from reporte order by idReporte asc";
                    set = con.createStatement();
                    rs = set.executeQuery(q);
                    
                    while(rs.next()){
                    %>
        <tr>
            <td><%=rs.getInt("idReporte")%></td>
            <td>Descripcion: <%=rs.getString("descripcion")%></td>
            <td>Fecha: <%=rs.getString("fecha") %></td>
            <td>Hora: <%=rs.getString("hora") %></td>
            <td>Equipo: <%=rs.getInt("Equipo_idEquipo")%></td>
            <td><%int a ;
                a = rs.getInt("Docente_numero_empleado");
                if (a==1){
                %>
                Jaime Minor Gomez
                <%}
                if (a==2){
                %>
                Alma Erika Vazquez Sanchez
                <%}
              
                    
                    %></td>
            <td><%=rs.getInt("Alumno_idAlumno")%></td>
            <td><%
                 if (rs.getInt("Prioridad_idPrioridad") == 1 ){
                     %>
                     Media
                     <%
                 }
                 if (rs.getInt("Prioridad_idPrioridad") == 2 ){
                     %>
                     Alta
                     <%
                 }
                
                %></td>
            <td><%
                if (rs.getInt("EstadoReporte_idEstadoReporte") == 1 ){
                     %>
                     sin resolver
                     <%
                 }
                 if (rs.getInt("EstadoReporte_idEstadoReporte") == 2 ){
                     %>
                     Resuelto
                     <%
                 }
                %></a></td>
            <td><%
                if (rs.getInt("Asignatura_idAsignatura") == 1 ){
                     %>
                     Programacion y Servicios Web
                     <%
                }
                if (rs.getInt("Asignatura_idAsignatura") == 2 ){
                     %>
                      Bases de Datos
                     <%
                }
                if (rs.getInt("Asignatura_idAsignatura") == 3 ){
                     %>
                    Laboratorio de Proyectos de la tecnologia II
                     <%
                }
                if (rs.getInt("Asignatura_idAsignatura") == 4 ){
                     %>
                    Tecnicas de Programacion con Calidad
                     <%
                }
                %></td>
        </tr>
                    <%  
                      }
                }catch(SQLException es){
                    System.out.println("Error al registrar en la tabla");
                    System.out.println(es.getMessage());
                    %>
                    <form class="formulario" >
                    <h1>Error al consultar las maquinas</h1> 
                    </form>
                    <%

                }
                
           }catch(Error e){
            System.out.println("Error al conectar la base de datos");
            System.out.println(e.toString());
            System.out.println("nota: si se dejo el programa en espera por mucho tiempo, puede saltar una excepcion 'null' y no se conecta a la bd, reinicie NetBeans");
            %>
            <form class="formulario" >
                <h1> los sistemas servidores presentan problemas en este momento vuelve a intentarlo en otro momento</h1>
            </form>
            <%
            
            
            }
        %>
        </tbody>    
    </table>
        <a href="perfil.jsp?id=<%=id%>"> <input type="button" value="Volver atras" class="saber-mas" ></a>
</div>
</body>
</html> 