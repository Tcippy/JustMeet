
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

<link href="css/styles.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"
	crossorigin="anonymous"></script>

<title>CERCA</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>
<body>
	<%@include file="assets/header.html"%>

	<div id="layoutSidenav_content">

		<c:if test="${searchResults.size()==0}">
			<h4>Nessun evento trovato, riprova</h4>
		</c:if>
		<div class="form-group">
			<p></p>
			<h2 class="form-signin">Risultati della ricerca:</h2>
			<form:form method="POST" modelAttribute="searchResults"
				class="form-signin">
				<c:forEach var="event" items="${searchResults}">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">TITOLO: ${event.titolo}</h4>
							<p class="card-text">DESCRIZIONE :${event.descrizione}</p>
							<p class="card-text">CATEGORIA: ${event.categoria}</p>
							<p class="card-text">DATA: ${event.dataEvento}</p>
							<a href="eventDetails?id=${event.id}"
								class="btn btn-lg btn-primary btn-block">Dettagli</a>
						</div>
					</div>
					<p></p>
				</c:forEach>
			</form:form>
		</div>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
		<%@include file="assets/footer.html"%>

	</div>

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/datatables-demo.js"></script>
</body>
</html>