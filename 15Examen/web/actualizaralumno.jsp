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
                    
                    String nom, appat, apmat, sexo, edad, bol;
                    
                    int grupoid;
                    int  t ;
                    int s;
                    int g;
                    
                    
                    s = Integer.parseInt(request.getParameter("semestre"));
                    t = Integer.parseInt(request.getParameter("turno"));
                    g = Integer.parseInt(request.getParameter("Grupo"));
                    
                    s = s - 1 ;
                    s = (s * 10) + t;
                    grupoid = s + g;
                 
                    
                    bol = request.getParameter("bol");
                    nom = request.getParameter("nombre");
                    appat = request.getParameter("appat");
                    apmat = request.getParameter("apmat");
                    sexo = request.getParameter("sexo");
                    edad = request.getParameter("edad");
                    password = request.getParameter("password");
                    set = con.createStatement();
                    
                   
                    
                    String q = "Update alumno set nombre='"+nom+"', appat='"+appat+"', apmat='"+apmat+"', sexo="+sexo+",edad="+edad+",password='"+password+"',Grupo_idGrupo="+grupoid+" where idBoleta="+bol;
                        int registro = set.executeUpdate(q);
                    %>
                   <form class="formulario" >
                    <h1>Actualizacion Exitosa</h1>
                     <a href="perfil.jsp?id=<%=bol%>">"<input type="button" value="Volver al perfil" class="saber-mas" onclick=></a>
                   </form>
                    <%
                    
                }catch(SQLException es){
                    System.out.println("Error al registrar en la tabla");
                    System.out.println(es.getMessage());
                    %>
                    <form class="formulario" >
                    <h1>No se pudo inicie sesion e intentelo de nuevo</h1>
                    <a href="index.jsp">"<input type="button" value="Volver a inici class="saber-mas" onclick=></a>
                    </form>
                    <%

                }
                
            }catch(Exception e){
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