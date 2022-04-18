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
                <th>Etiqueta </th>
                <th>CPU </th>
                <th>Monitor</th>
                <th>Accesorios</th>
                <th>Configuracion</th>
                <th>Ubicación</th>
                <th>Marca</th>
                <th>Reportar</th>
                <th>Editar</th>
        </tr>
        </thead>
        <tbody>
<%
        int id2 = Integer.parseInt(request.getParameter("id2"));
            //aqui ya puedo incorporar java 
            Connection con = null;
            Statement set = null;
            ResultSet rs = null;
            
            String username="";
            String url;
            String password;
            String driver;
            
            
            url ="jdbc:mysql://localhost/bdexamen";
            username = "root";
            password = "n0m3l0";
            driver = "com.mysql.jdbc.Driver";
            
            try{
                //conectar
                Class.forName(driver);
                con = DriverManager.getConnection(url, username, password);
                try{
                    String q = "select * from equipo order by idEquipo asc";
                    set = con.createStatement();
                    rs = set.executeQuery(q);
                    
                    while(rs.next()){
                    %>
        <tr>
            <td>Etiqueta: <%=rs.getString("Eitqueta")%></td>
            <td>CPU <%=rs.getInt("CPU_idMaquina")%></td>
            <td>Monitor: <%
                int m ;
                m = rs.getInt("Monitor_idMonitor");
                if(m==1){
                %>
                1280x1024
                <%
                }
                if(m==2){
                %>
                1366x768
                <%
                }
                if(m==3){
                %>
                1600x900
                <%
                }
                if(m==4){
                %>
                1920x1080
                <%
                }
                %></td>
            <td><%
                int a;
                a = rs.getInt("Accesorios_idAccesorios");
                if(a==1){
                %>
                Teclado y mouse logitech 90
                <%}
                if(a==2){
                %>
                No especificados
                <%}
                %></td>
            <td>Configuracion<%
                int b;
                b = rs.getInt("Configuracion_idConfiguracion");
                if(b==1){
                %>
                Windows 10
                <%}
                if(b==2){
                %>
                Windows 11
                <%}
                if(b==3){
                %>
                Windows 8
                <%}
                if(b==4){
                %>
                Windows 7
                <%}
                if(b==5){
                %>
                Windows XP
                <%}
                if(b==6){
                %>
                Windows Vista
                <%}
                
                %>
            </td>
            <td><%
                int c;
                c = rs.getInt("Laboratorio_idLaboratorio");
                     
                if(c==1){
                %>
                Laboratorio de Base de Datos
                <%}
                 if(c==2){
                %>
                Laboratorio de Desarrollo de Software
                <%}
                if(c==3){
                %>
                Laboratorio de Nuevas Tecnologias
                <%}
                if(c==4){
                %>
                Aula 4.0
                <%}
            
            %></td>
            <td><%
                int d;
                d = rs.getInt("Marca_idMarca");
                if(d==1){
                %>
                DELL
                <%}else{

            %> 
            no especificado / desconocida
            <%
                }                
                    
                    
                    %></td>
            
            <td><a href="problema.jsp?id=<%=rs.getString("Eitqueta")%>&&id2=<%=id2%>"><input type="button" value="Reportar" class="saber-mas"></a></td>
            <td><input type="button" value="Editar datos" class="saber-mas"></td>
        </tr>
                    <%
                    }
                }catch(SQLException es){
                    System.out.println("Error al registrar en la tabla");
                    System.out.println(es.getMessage());
                    %>
                    <form class="formulario" >
                    <h1>Usuario o boleta ya registrado</h1> 
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
        <a href="perfil.jsp?id=<%=id2%>"> <input type="button" value="Volver atras" class="saber-mas" ></a>
</div>
</body>
</html>