<%-- 
    Document   : registrar
    Created on : 15/04/2022, 09:30:37 PM
    Author     : Danie_2rs1q2u
--%>

<%@page contentType="text/html" language="java"
        import="java.sql.*, java.util.*,java.text.*"
        pageEncoding="UTF-8"%>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.1.1/css/all.css" integrity="sha384-/frq1SRXYH/bSyou/HUp/hib7RVN1TawQYja658FEOodR/FQBKVqT9Ol+Oz3Olq5" crossorigin="anonymous">
	<link rel="stylesheet" href="css/style_cuenta.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <% //aqui ya puedo incorporar java 
            Connection con = null;
            Statement set = null;
            ResultSet rs = null;
            
            String username="";
            String url;
            String password;
            String driver;
            
            int id3 = Integer.parseInt(request.getParameter("bol"));
            
            url ="jdbc:mysql://localhost/bdexamen";
            username = "root";
            password = "n0m3l0";
            driver = "com.mysql.jdbc.Driver";
            
            try{
                //conectar
                Class.forName(driver);
                con = DriverManager.getConnection(url, username, password);
                
               
                
                try{
                    int idEquipo,  idmonitor, idaccesorios, idsistema, idmarca, idConfiguracion;
                    String etiqueta;
                    String cpu;
                    int idcpu;
                    int idLaboratorio;
                    //Registrar todo el equipo
                    idEquipo = Integer.parseInt(request.getParameter("etiqueta"));
                    etiqueta = request.getParameter("etiqueta");
                    idLaboratorio = Integer.parseInt(request.getParameter("laboratorio"));
                    idmonitor = Integer.parseInt(request.getParameter("Monitor"));
                    idaccesorios = Integer.parseInt(request.getParameter("Teclado"));
                    idConfiguracion = Integer.parseInt(request.getParameter("Sistema"));
                    idmarca = Integer.parseInt(request.getParameter("Marca"));
                 
                    
                    String q1 = "Update equipo set Eitqueta ='"+etiqueta+"', Monitor_idMonitor ="+idmonitor+", Accesorios_idAccesorios ="+idaccesorios+", Configuracion_idConfiguracion ="+idConfiguracion+", Laboratorio_idLaboratorio ="+idLaboratorio+ ", Marca_idMarca ="+idmarca+" where idEquipo="+idEquipo; 
                     set = con.createStatement();
                        int registro2 = set.executeUpdate(q1);
                    
                    
                   
                    %>
                   <form class="formulario" >
                    <h1>Equipo Actualizado</h1>
                    <p><a class="link" href="perfil.jsp?id=<%=id3%>">Volver al perfil</a></p>
                   </form>
                    <%
                    
                }catch(SQLException es){
                    System.out.println("Error al registrar en la tabla");
                    System.out.println(es.getMessage());
                    %>
                    <form class="formulario" >
                    <h1>Error al actualizar</h1> 
                    <p><a class="link" href="perfil.jsp?id=<%=id3%>">Volver al perfil</a></p>
                    </form>
                    <%

                }
                
            }catch(Error e){
            System.out.println("Error al conectar la base de datos");
            System.out.println(e.getMessage());
            System.out.println("nota: si se dejo el programa en espera por mucho tiempo, puede saltar una excepcion 'null' y no se conecta a la bd, reinicie NetBeans");
            %>
            <form class="formulario" >
                <h1> los servidores presentan problemas en este momento vuelve a intentarlo en otro momento</h1>
                <p><a class="link" href="perfil.jsp?id=<%=id3%>">Volver al perfil</a></p>
            </form>
            <%
            
            }
      %>
    <body>
        
    </body>
</html>