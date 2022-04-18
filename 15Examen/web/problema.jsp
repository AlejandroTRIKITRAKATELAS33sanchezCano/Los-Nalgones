<%-- 
    Document   : problema.jsp
    Created on : 18/04/2022, 01:46:22 AM
    Author     : Danie_2rs1q2u
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Problema</title>
    <link rel="stylesheet" href="css/style_cuenta.css">
</head>
<body>
    <header>
     <%
                 int id = Integer.parseInt(request.getParameter("id"));
                 int id2 = Integer.parseInt(request.getParameter("id2"));
                %>
    
 
    </header>
    <section>
        <form class="formulario" action="registrarproblema.jsp">
            <h1>PROBLEMA TECNICO</h1>
                 <div class="grupo">
                    <label for="Monitor">CPU</label>
                </div>
            <div class="contenedor">
                <div class="input-contenedor">
                    <i class="fas fa-user icon"></i>
                    <input type="text"  value="<%=id%>" readonly="readonly">
                </div>
    
            <h3>Responsables</h3>
                <div class="grupo">
                    <label for="Monitor">Alumno Boleta de la sesion iniciada:</label>
                </div>
                <div class="input-contenedor">
                    <input type="text" value="<%=id2%>"readonly="readonly" >
                </div>
                
                <div class="grupo">
                    <label for="Monitor">Profesor</label>
               <div class="select">
                    <select name="profesor" id="Monitor">
                        <option value="1">Jaime</option>
                        <option value="2">Alma</option>
                    </select>
                    </div>
                </div>
                
                 <div class="grupo">
                    <label for="Monitor">Asignatura</label>
               <div class="select">
                    <select name="profesor" id="Monitor">
                        <option value="1">Programacion y Servicios Web</option>
                        <option value="2">Bases de Datos</option>
                        <option value="3">Laboratorio de Proyectos de Tec.</option>
                        <option value="2">Tecnicas de Programacion con Calidad</option>
                    </select>
                    </div>
                </div>
                <h3>Problema</h3>
                <div class="grupo">
                    <label for="Monitor">Donde se ubica?</label>
                    <div class="select">
                    <select name="Monitor" id="Monitor">
                        <option value="Gabinete: ">Gabinete</option>
                        <option value="Monitor: ">Monitor</option>
                        <option value="Accesorios: ">Accesorios</option>
                        <option value="Software: ">Software(ej.falta un programa/no corre)</option>
                        <option value="Otro: ">Otro</option>
                    </select>
                    </div>
                </div>
                <div class="input-contenedor">
                    <input type="text" placeholder="Describelo (45 caracteres maximo)" name="descripcion">
                </div>
    
                <h3>Datos extras</h3>
                
                <div class="grupo">
                    <label for="Monitor">Estado</label>
                    <div class="select">
                    <select name="Monitor" id="Monitor">
                        <option value="2">Inutilizable</option>
                        <option value="1">Utilizable</option>
                    </select>
                    </div>
                </div>
                <div class="grupo">
                    <label for="Monitor">Numero de reporte:(asegurate de no reportar el mismo error 2 veces)</label>
                </div>
                <div class="input-contenedor">
                    <input type="number" placeholder="Numero de reporte">
                </div>
                </div>
                <input type="submit" value="Enviar Problema" class="saber-mas" onclick="Grupo()">
                <a href="perfil.jsp?id=<%=id2%>"> <input type="button" value="Volver atras" class="saber-mas" ></a>
        </form>
    </section>
</body>
</html>