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
<title>Dashboard - SB Admin</title>
<link href="css/styles.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"
	crossorigin="anonymous"></script>


<title>Cerca evento</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>
<body>
           <%@include file="assets/header.html"%>

    <div class="form-group">
        <form:form method="GET" modelAttribute="showDetails" class="form-signin">
    <h2 class="form-signin">Dettagli evento: </h2>
      <label>Titolo Evento</label> 
                <div class="form-group ${status.error ? 'has-error' : ''}"  >
                <form method="GET"> Titolo: ${event.titolo}</form>
                                </div>
                                
 <label>Categoria</label> 
                <div class="form-group ${status.error ? 'has-error' : ''}"  >
                <form method="GET"> Categoria: ${event.categoria}</form>
                                </div>
      <label>Data Evento</label>                
                 <div class="form-group ${status.error ? 'has-error' : ''}"  >
                <form method="GET">DataEvento: ${event.dataEvento}</form>
                                </div>
  
     <label>Prezzo</label> 
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form method="GET">Prezzo: ${event.prezzo}</form>
                                </div>
                                
     
      <label>Data Scadenza Pagamento</label> 
                <div class="form-group ${status.error ? 'has-error' : ''}">
                   <form method="GET">Data scadenza pagamento: ${event.scadenzaPagamento}</form>
                                </div>
                               
      <label>Cauzione</label> 
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form method="GET">Cauzione: ${event.cauzione}</form>
                                </div>
                                 
                  <button onclick="addRequest.jsp" >Unisciti</button>               
  </form:form>
  </div>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
               <%@include file="assets/footer.html"%>
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