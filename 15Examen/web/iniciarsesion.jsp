
<%@page contentType="text/html" language="java"
        import="java.sql.*, java.util.*,java.text.*"
        pageEncoding="UTF-8"%>
 <link rel="stylesheet" href="css/style_cuenta.css">
<%
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
                    int boleta = Integer.parseInt(request.getParameter("boleta"));
                    String contra = request.getParameter("contra");
                    int i ;
                    String q = "select * from alumno where idBoleta ="+boleta;
                    set = con.createStatement();
                    rs = set.executeQuery(q);
                    while(rs.next()){
                    
                    if (contra.equals(rs.getString("password")) ){
                        response.sendRedirect("http://localhost:8080/15Examen/perfil.jsp?id="+boleta);
                        }else{
                        System.out.println("usuario y/o contraseña incorrecta");
                        response.sendRedirect("http://localhost:8080/15Examen/Iniciar_Sesion.jsp");
                        }  
                    }
                    
                    
                    
                    %>
              <form class="formulario" >
                    <h1>Usuario o boleta incorrecta</h1> 
                    </form> 
                    <%
                   
                        
                    
                    
                        
                }catch(SQLException es){
                    System.out.println("Error al registrar en la tabla");
                    System.out.println(es.getMessage());
                    %>
                    <form class="formulario" >
                    <h1>Usuario o boleta incorrecta</h1> 
                    </form>
                    <%

                }
                
           }catch(Error e){
            System.out.println("Error al conectar la base de datos");
            System.out.println(e.toString());
            System.out.println("nota: si se dejo el programa en espera por mucho tiempo, puede saltar una excepcion 'null' y no se conecta a la bd, reinicie NetBeans");
            %>
            <form class="formulario" >
                <h1> los servidores presentan problemas en este momento vuelve a intentarlo en otro momento</h1>
            </form>
            <%
            
            
            }
        %>