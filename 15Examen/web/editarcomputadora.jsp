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
<html><!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title></title> 
	<meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.1.1/css/all.css" integrity="sha384-/frq1SRXYH/bSyou/HUp/hib7RVN1TawQYja658FEOodR/FQBKVqT9Ol+Oz3Olq5" crossorigin="anonymous">
    
	<link rel="stylesheet" href="css/style_cuenta.css">
	
    <script src="https://www.google.com/recaptcha/api.js"></script>
    <script>
        function onSubmit(token) {
            document.getElementById("demo-form").submit();
        }
       
    </script>
     <%
        int id = Integer.parseInt(request.getParameter("id"));
        int id2 = Integer.parseInt(request.getParameter("id2"));
        int id3 = Integer.parseInt(request.getParameter("id3"));
        
        
        %>
        
</head>  
<body>
    <form class="formulario" action="actualizarcompu.jsp?id3=<%=id3%>">
        <h1>Edita tu Equipo</h1>

        <div class="contenedor">
            <label for="Monitor">CPU</label>
            <div class="input-contenedor">
                <i class="fas fa-user icon"></i>
                <input type="hidden" placeholder="Etiqueta (solo numeros)" name="bol" value="<%=id3%>" readonly="readonly">
                <input type="text" placeholder="Etiqueta (solo numeros)" name="etiqueta" value="<%=id%>" readonly="readonly">
            </div>
            
            <label for="Monitor">Etiqueta</label>
            <div class="input-contenedor">
                <i class="fas fa-user icon"></i>
                <input type="text" placeholder="Etiqueta (solo numeros)" name="etiqueta" value="<%=id%>" readonly="readonly">
            </div>
        
            
        

        <h3>Monitor</h3>
            <div class="grupo">
                <label for="Monitor">Medida</label>
                <div class="select">
                <select name="Monitor" id="Monitor">
                    <option value="1">1280x1024</option>
                    <option value="2">1366x768</option>
                    <option value="3">1600x900</option>
                    <option value="4">1920x1080</option>
                </select>
                </div>
            </div>
            
        <h3>Accesorios</h3>
            
            <div class="grupo">
                <label for="Teclado"> Mouse y Teclado</label>
                <div class="select">
                <select name="Teclado" id="Teclado">
                    <option value="1">SI</option>
                    <option value="2">NO</option>
                </select>
                </div>

                <label for="Grupo">Cámara</label>
                <div class="select">
                <select name="Grupo" id="Grupo">
                    <option value="N">NO</option>
                </select>
                </div>
            </div>

        <h3>Sistema</h3>
            <div class="grupo">
                <label for="Sistema">Sitema</label>
                <div class="select">
                <select name="Sistema" id="Sistema">
                    <option value="1">Windows 10</option>
                    <option value="2">Windows 11</option>
                    <option value="3">Windows 8</option>
                    <option value="4">Windows 7</option>
                    <option value="5">Windows XP</option>
                    <option value="6">Windows Vista</option>
                </select>
                </div>

                <label for="Marca">Marca</label>
                <div class="select">
                <select name="Marca" id="Marca">
                    <option value="1">DELL</option>
                    <option value="2">Otra</option>
                </select>
                </div>
            </div>
        <h3>Ubicacion</h3>
            <label for="Marca">Laboratorio</label>
                <div class="select">
                <select name="laboratorio" id="Marca">
                    <option value="1">LBD</option>
                    <option value="2">LDS</option>
                    <option value="3">LNT</option>
                    <option value="4">4.0</option>
                </select>
                </div>
            <input type="submit" value="Actualizar Equipo" class="saber-mas" >
            <input type="button" value="Volver" class="saber-mas" onclick="history.back()">
        </div>
    </form>
</body>
</html>