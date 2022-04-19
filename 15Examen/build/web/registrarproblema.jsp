<%-- 
    Document   : registrar
    Created on : 15/04/2022, 09:30:37 PM
    Author     : Danie_2rs1q2u
--%>

<%@page contentType="text/html" language="java"
        import="java.sql.*, java.util.*,java.text.* , java.time.LocalDate"
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
                    String descripcion1 = request.getParameter("descripcion1");
                    String descripcion = descripcion1 + request.getParameter("descripcion");
                    int etiqueta = Integer.parseInt(request.getParameter("etiqueta"));
                    int profesor = Integer.parseInt(request.getParameter("profesor"));
                    int bol = Integer.parseInt(request.getParameter("boleta"));
                    int prioridad = Integer.parseInt(request.getParameter("Monitor"));
                    int asignatura = Integer.parseInt(request.getParameter("asignatura"));
                    
                    
                    set = con.createStatement();
                    
                    String q = "select * from reporte order by idReporte asc";
                        rs = set.executeQuery(q);
                        
                        while (rs.next()){
                            int a;   
                            a = rs.getInt("idReporte") + 1;   
                            
                            try{
                                set = con.createStatement();
                                
                                LocalDate fecha = LocalDate.now();
                                System.out.println(fecha);
                                
                                Calendar calendario = Calendar.getInstance();
                                Calendar calendario2 = new GregorianCalendar();
                                int hora, minutos, segundos;
                                hora =calendario.get(Calendar.HOUR_OF_DAY);
                                minutos = calendario.get(Calendar.MINUTE);
                                segundos = calendario.get(Calendar.SECOND);
                                String b = hora + ":" + minutos + ":" + segundos;
                                System.out.println(hora + ":" + minutos + ":" + segundos);
                    
                                String q2 = "insert into reporte values("+a+",'"+descripcion+"','"+fecha+"','"+b+"',"+etiqueta+","+profesor+","+bol+","+prioridad+",1,"+asignatura+")";
                                    int registro = set.executeUpdate(q2);
                                
                                      %>
                   <form class="formulario" >
                    <h1>Problema registrado exitosamente</h1>
                    <p><a class="link" href="index.jsp">Volver a inicio</a></p>
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



        
        
        
        
        
        //response.sendRedirect("https://www.youtube.com/watch?v=B5jLhQP9-Rk&list=RDGMEMJQXQAmqrnmK1SEjY_rKBGA&start_radio=1&rv=sXKB9dPhXDI&ab_channel=Polyphia"); %>
    <body>
        
    </body>
</html>