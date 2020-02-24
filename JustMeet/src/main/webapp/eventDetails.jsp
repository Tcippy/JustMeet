
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="utf-8" />
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>DETTAGLI</title>
<link href="css/styles.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"
	crossorigin="anonymous"></script>

<title>Nuovo evento</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>
<body>
	<%@include file="assets/header.html"%>

	<div id="layoutSidenav_content">

		<div class="form-group" align="center">
			<p></p>
			<div class="card">
				<div class="card-body">
					<h4 class="card-title">TITOLO: ${eventDetail.titolo}</h4>
					<p class="card-text">DESCRIZIONE :${eventDetail.descrizione}</p>   
					<p class="card-text">CATEGORIA: ${eventDetail.categoria}</p>
					<p class="card-text">DATA: ${eventDetail.dataEvento}</p>
					<p class="card-text">LUOGO: ${eventDetail.citta}</p>	
					<p class="card-text">CREATORE: ${eventDetail.owner}</p>

					<a href="addRequest?id=${eventDetail.id}"
						class="btn btn-lg btn-primary btn-block">Invia richiesta di
						partecipazione</a>
				</div>
			</div>
			<p></p>

		</div>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
		<%@include file="assets/footer.html"%>

	</div>

</body>
</html>
