<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Login</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Darío Vera García">
 

<!-- Bootstrap CSS 5.1.3-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<style>

body{
background-image: linear-gradient(to right, #5f6a6a, #e5e8e8);
}

</style>

</head>
<body>
<div class="p-5 bg-secundary text-dark text-center">
<h1>PLATAFORMA DE FACTURACIÓN D-LATAM</h1>
<h3>BIENVENIDOS</h3>
</div>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: ;">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  </div>
</nav>

<br>
<br>

 <div class="container">
 	<c:if test="${msgError !=null }">
 		<div class="alert alert-danger" role="alert">
 			<c:out value="${msgError}"></c:out> <!-- Captura el dato y lo imprime -->
	  	</div>
	</c:if>
 <h5 class="h5">POR FAVOR INGRESE CORRECTAMENTE SUS CREDENCIALES</h5>
        <form action="procesaLogin" method="post">
            <label for="Login" class="form-label">Login:</label>
            <input type="text" class="form-control" id="login" name="login" placeholder="Ingrese aquí su login"><br>
            <label for=" password" class="form-label">Password:</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Ingrese aquí su password">
            <br>
            <br>
            <!--botones-->
            <button type="submit" class="btn btn-outline-dark bg-gradient mb-4 p-2">Entrar</button>
        </form>
        <div class="text-center">
        	<img src="https://blog.desafiolatam.com/wp-content/uploads/2019/02/desafio-latam-logo-orizontal.png" title="Soy el Logo de la Empresa" alt="Logo Empresa de Repuestos"
					style="width: 150px; height: 50px; margin-right:40px">
		</div>
    </div>


<!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js " integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p " crossorigin="anonymous "></script>

 
</body>
</html>