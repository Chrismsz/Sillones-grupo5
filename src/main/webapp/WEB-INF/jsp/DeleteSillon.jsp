<!DOCTYPE html>
<%@ page import = "java.io.*,java.util.*" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
html,body{
  height:100%;
  width:100%;
}
.tabla{
	position: absolute;
	top: 20%; /* Buscamos el centro horizontal (relativo) del navegador */
	left: 50%; /* Buscamos el centro vertical (relativo) del navegador */
	width: 500px; /* Definimos el alto del objeto a centrar */
	margin-left:-250px;
}
.aviso {
	position: absolute;
	top: 30%; /* Buscamos el centro horizontal (relativo) del navegador */
	left: 50%; /* Buscamos el centro vertical (relativo) del navegador */
	width: 700px; /* Definimos el alto del objeto a centrar */
	margin-left:-350px;
	font-size: 35px;
	text-align: center
}
.btn{
	margin-top: 15%;
}

}
</style>

<html>
<head>
	<meta charset="ISO-8859-1">
	<title>SIGIPAB</title>
	<%@include  file="Header.jsp" %>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">		
</head>


<body>

<c:if test="${empty sillones}">
	<div class="aviso">
    	<p class="aviso" align="center">Ups.. Aún no hay sillones para eliminar en el sistema</p>
    </div>
</c:if>

<c:if test="${not empty sillones}">
    <div class="tabla" style="text-align:center;">
	<a class="center">Selecciona un sillon para eliminar:</a>
	<table class="table table-bordered table-dark">
		<thead class="thead-dark">
		<tr>
			<th>ID</th>
			<th>ESTADO</th>
			<th></th>
		</tr>
		</thead>
		<tbody>

		<c:forEach var="sillon" items="${sillones}" >
		<tr>
			<c:url var="deleteLink" value="pallobby">
        		<c:param name="sillonId" value="${sillon.id}" />
       		</c:url>
       	
			<td>${sillon.id}</td>
			<c:if test="${sillon.estado == true}">
				<td>Disponible</td>
			</c:if>
			<c:if test="${sillon.estado == false}">
				<td>Ocupado</td>
			</c:if>
			<td>
				<a href="${deleteLink}" onclick="if (!(confirm('Seguro que quiere borrar este sillon?'))) return false">Delete</a>
			</td>
        </tr>
		</c:forEach>
		
		</tbody>
	</table>
	<a class="btn btn-secondary" align="center" href="${deleteLink}" role="button" ">Eliminar</a>
</c:if>

</div>
</body>

</html>