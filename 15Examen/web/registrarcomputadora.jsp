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
                    set = con.createStatement();
                    //Registrar el cpu
                    idcpu = Integer.parseInt(request.getParameter("serial"));
                    cpu = request.getParameter("serial");
                    String q = "insert into cpu values ("+idcpu+",'"+cpu+"')";
                        int registro = set.executeUpdate(q);
                    
                    //Registrar todo el equipo
                    idEquipo = Integer.parseInt(request.getParameter("etiqueta"));
                    etiqueta = request.getParameter("etiqueta");
                    idLaboratorio = Integer.parseInt(request.getParameter("laboratorio"));
                    idmonitor = Integer.parseInt(request.getParameter("Monitor"));
                    idaccesorios = Integer.parseInt(request.getParameter("Teclado"));
                    idConfiguracion = Integer.parseInt(request.getParameter("Sistema"));
                    idmarca = Integer.parseInt(request.getParameter("Marca"));
                 
                    
                    String q1 = "insert into equipo values ("+idEquipo+",'"+etiqueta+"',"+idcpu+","+idmonitor+","+idaccesorios+","+idConfiguracion+","
                            + ""+idLaboratorio+","+idmarca+")";
                    
                        int registro2 = set.executeUpdate(q1);
                    
                    
                   
                    %>
                   <form class="formulario" >
                    <h1>Computadora Registrada</h1>
                    <p><a class="link" href="Iniciar_Sesion.html">Volver a inicio</a></p>
                   </form>
                    <%
                    
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
            System.out.println(e.getMessage());
            System.out.println("nota: si se dejo el programa en espera por mucho tiempo, puede saltar una excepcion 'null' y no se conecta a la bd, reinicie NetBeans");
            %>
            <form class="formulario" >
                <h1> los sistemas servidores presentan problemas en este momento vuelve a intentarlo en otro momento</h1>
            </form>
            <%
            
            
            }



        
        
        
        
        
        //response.sendRedirect("https://www.youtube.com/watch?v=B5jLhQP9-Rk&list=RDGMEMJQXQAmqrnmK1SEjY_rKBGA&start_radio=1&rv=sXKB9dPhXDI&ab_channel=Polyphia"); %>
    <body>
        
    </body>
</html>