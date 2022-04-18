
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
    <link rel="stylesheet" href="css/perfil.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.1.1/css/all.css" integrity="sha384-/frq1SRXYH/bSyou/HUp/hib7RVN1TawQYja658FEOodR/FQBKVqT9Ol+Oz3Olq5" crossorigin="anonymous">
    <title>Perfil</title>
</head>
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
                    
                    int id = Integer.parseInt(request.getParameter("id"));
                  
                    String q = "select * from alumno where idBoleta ="+id;
                    set = con.createStatement();
                    rs = set.executeQuery(q);
                    
                    while(rs.next()){
                        
                        
                   

                    %>
          
<body>
    <header>
        <h2 class="logo">IKPALI</h2>
        <input type="checkbox" id="check">
        <label for="check" class="mostrar-menu">
            &#8801
        </label>
        <nav class="menu">
            <a href="index.jsp">Salir</a>
            
            <label for="check" class="esconder-menu">
                &#215
            </label>
        </nav>
    </header>
    <section class="seccion-perfil-usuario">
        <div class="perfil-usuario-header">
            <div class="perfil-usuario-portada">
                <div class="perfil-usuario-avatar">
                    <img src="img/usuario.png" alt="img-avatar">
                    <button type="button" class="boton-avatar">
                        <i class="far fa-image"></i>
                    </button>
                </div>
            </div>
        </div>
        <div class="perfil-usuario-body">
            <div class="perfil-usuario-bio">
                <h3 class="titulo" id="Nombre_Usuario"><%=rs.getString("nombre")+" "+ rs.getString("appat")+" "+rs.getString("apmat")%></h3>
                <p class="texto"></p>
            </div>
            <div class="perfil-usuario-footer">
                <ul class="lista-datos">
                    <li><i class="icono fas fa-phone-alt"></i> Numero de Boleta: <%=rs.getInt("idBoleta")%> <p id="bol"></p></li>
                    <li><i class="icono fas fa-user-check"></i> Nombre:<%=rs.getString("nombre")+" "+ rs.getString("appat")+" "+rs.getString("apmat")%> <p id="nom"></p><p id="appat"></p><p id="apmat"></p></li>
                    <li><i class="icono fas fa-calendar-alt"></i> Edad:<%=rs.getInt("edad")%><p id="edad"></p></li>
                </ul>
                <ul class="lista-datos">
                    <li><i class="icono fas fa-briefcase"></i> Grupo: <%=rs.getInt("Grupo_idGrupo")%><p id="grupo"></p></li>
                    <li><i class="icono fas fa-user-check"></i> Turno:<%
                        int a;
                        a = rs.getInt("Grupo_idGrupo");
                        if (a > 60){
                            %>
                        Vespertino
                        <%}else{
                        %>
                        Matutino
                        <%} 
                        
                        %> <p id="Turno"></p></li>
                    <li><i class="icono fas fa-map-marker-alt"></i><a href="editaralumno.jsp?id=<%=id%>" class="saber-mas">Editar Datos</a><p id="maquina"></p></li>
                </ul>
            </div>
            <a href="registra_Compu.html" class="saber-mas">Registrar un Equipo</a>
            <a href="maquinas.jsp?id2=<%=id%>" class="saber-mas">Consultar Equipos / Reportar un problema</a>
        </div>
    </section>
</body>
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