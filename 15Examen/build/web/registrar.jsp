<%-- 
    Document   : registrar
    Created on : 15/04/2022, 09:30:37 PM
    Author     : Danie_2rs1q2u
--%>

<%@page contentType="text/html" language="java"
        import="java.sql.*, java.util.*,java.text.*"
        pageEncoding="UTF-8"%>

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
                    int idGrupo;
                    int grupoid;
                    String  t ;
                    int s;
                    int g;
                    s = Integer.parseInt(request.getParameter("semestre"));
                    t = request.getParameter("Turno");
                    g = Integer.parseInt(request.getParameter("Grupo"));
                   
                    String grupo = "'"+s+""+t+""+g+"'";
                    System.out.println(grupo);
                    set = con.createStatement();
                    rs = set.executeQuery("select * from grupo where descripcion ="+grupo);
                    
                    
                    bol = request.getParameter("bol");
                    nom = request.getParameter("nombre");
                    appat = request.getParameter("appat");
                    apmat = request.getParameter("apmat");
                    sexo = request.getParameter("sexo");
                    edad = request.getParameter("edad");
                    password = request.getParameter("password");
                    set = con.createStatement();
                    
                     
                    if (t == "IM"){
                        
                        s = s - 1 ;
                        s = s * 10;
                        grupoid = s + g;
                        String q = "insert into alumno values ("+bol+",'"+nom+"','"+appat+"','"+apmat+"',"+sexo+","+edad+",'"+password+"',"+grupoid+")";
                        int registro = set.executeUpdate(q);
                    }
                    if (t == "IV"){
                        s = s - 1 ;
                        s = (s * 10) + 60;
                        grupoid = s + g;
                        String q = "insert into alumno values ("+bol+",'"+nom+"','"+appat+"','"+apmat+"',"+sexo+","+edad+",'"+password+"',"+grupoid+")";
                        int registro = set.executeUpdate(q);
                    }

                    %>
                    <h1>Registro Exitoso</h1>
                     <a href="index.jsp">Regresar a principal</a>
                    <%
                    
                }catch(SQLException es){
                    System.out.println("Error al registrar en la tabla");
                    System.out.println(es.getMessage());
                    %>
                    <h1>No se pudo registrar en la tabla</h1> 
                    <%

                }
                
            }catch(Exception e){
            System.out.println("Error al conectar la base de datos");
            System.out.println(e.getMessage());
            %>
            <h1>Error al conectar la base de datos</h1>
            <%
            
            
            }



        
        
        
        
        
        //response.sendRedirect("https://www.youtube.com/watch?v=B5jLhQP9-Rk&list=RDGMEMJQXQAmqrnmK1SEjY_rKBGA&start_radio=1&rv=sXKB9dPhXDI&ab_channel=Polyphia"); %>
    <body>
        
    </body>
</html>
