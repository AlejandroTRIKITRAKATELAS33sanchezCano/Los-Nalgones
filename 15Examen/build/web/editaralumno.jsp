<%-- 
    Document   : editaralumno
    Created on : 17/04/2022, 11:02:52 PM
    Author     : Danie_2rs1q2u
--%>

<%@page contentType="text/html" language="java"
        import="java.sql.*, java.util.*,java.text.*"
        pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>


<html lang="es">
<head>
	<meta charset="UTF-8">
	<title></title> 
	<meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.1.1/css/all.css" integrity="sha384-/frq1SRXYH/bSyou/HUp/hib7RVN1TawQYja658FEOodR/FQBKVqT9Ol+Oz3Olq5" crossorigin="anonymous">
    
	<link rel="stylesheet" href="css/style_cuenta.css">
	<script src="..Js/Registrar.js"></script>
    <script src="https://www.google.com/recaptcha/api.js"></script>
    <script>
        function onSubmit(token) {
            document.getElementById("demo-form").submit();
        }
            <%
                 int id = Integer.parseInt(request.getParameter("id"));
                %>
    </script>
</head>  
<body>
    <form class="formulario" action ="actualizaralumno.jsp">
        <h1>Actualiza tus datos</h1>

        <div class="contenedor">
            <div class="input-contenedor">
                <i class="fas fa-user icon"></i>
                <input type="text" placeholder="Nombre" name="nombre" required="required">
            </div>
            
            <div class="input-contenedor">
                <i class="fas fa-user icon"></i>
                <input type="text" placeholder="Apellido Paterno" name="appat" required="required">
            </div>

            <div class="input-contenedor">
                <i class="fas fa-user icon"></i>
                <input type="text" placeholder="Apellido Materno" name="apmat" required="required">
            </div>

            <div class="input-contenedor">
                <i class="fa-solid fa-hashtag icon"></i>
                <input type="number" placeholder="Numero de Boleta" name="bol" value="<%=id%>" readonly="readonly" required="required">
            </div>

            <div class="input-contenedor">
                <i class="fa-solid fa-hashtag icon"></i>
                <input type="number" placeholder="Introduce tu Edad" name="edad" required="required">
            </div>
            
            <div class="input-contenedor">
                <i class="fas fa-key icon"></i>
                <input type="password" placeholder="Contrase??a" name="password" required="required">
            </div>
            <div class="grupo">
                <label for="semestre">Semestre</label>
                <select name="semestre" id="semestre" required="required">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                </select>

                <label for="Turno">Turno</label>
                <select name="turno" id="Turno">
                    <option value="0">Matutino</option>
                    <option value="60">Vespertino</option>
                </select>

                <label for="Grupo">Grupo</label>
                <select name="Grupo" id="Grupo">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                </select>

                <label for="Sexo">Sexo</label>
                <select name="sexo" id="sexo">
                    <option value="1">M</option>
                    <option value="0">H</option>
                </select>

            </div>
            <input type="submit" value="Actualizar Datos" class="saber-mas" onclick="Grupo()">
            <a href="perfil.jsp?id=<%=id%>">"<input type="button" value="Cancelar" class="saber-mas" onclick=></a>
        </div>
    </form>
</body>
</html>