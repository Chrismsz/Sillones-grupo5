<!DOCTYPE html>
<%@ page import = "java.io.*,java.util.*" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
.form{
	position: absolute;
	top: 20%; /* Buscamos el centro horizontal (relativo) del navegador */
	left: 50%; /* Buscamos el centro vertical (relativo) del navegador */
	width: 500px; /* Definimos el alto del objeto a centrar */
	margin-left:-250px;
	text-align: center
}
.tabla{
	position: absolute;
	top: 20%; /* Buscamos el centro horizontal (relativo) del navegador */
	left: 50%; /* Buscamos el centro vertical (relativo) del navegador */
	width: 500px; /* Definimos el alto del objeto a centrar */
	margin-left:-250px;
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

<div class="form">
<form action="SearchByState/${estado}" method="get">
	<p>Ingresar estado a buscar:</p>
	<form:select path="estado" cssClass="form-control">
        <option value="True">Disponible</option>
      	<option value="False">Ocupado</option>
     </form:select>
	<button class="btn btn-secondary" align="center" type="submit">Buscar</a>
</form>
</div>
</c:if>
<c:if test="${not empty sillones}">
    <div class="tabla" style="text-align:center;">
	<a class="center">Lista de sillones</a>
	<table class="table table-bordered table-dark">
		<thead class="thead-dark">
		<tr>
			<th>ID</th>
			<th>ESTADO</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="sillon" items="${sillones}" >
			<tr>
				<td>${sillon.id}</td>
				<c:if test="${sillon.estado == true}">
					<td>Disponible</td>
				</c:if>
				<c:if test="${sillon.estado == false}">
					<td>Ocupado</td>
				</c:if>
	        </tr>
		</c:forEach>
		</tbody>
	</table>

</c:if>



</body>
</html>