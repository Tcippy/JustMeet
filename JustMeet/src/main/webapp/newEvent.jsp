
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

<title>Nuovo evento</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>
<body>
	<%@include file="assets/header.html"%>

	<div id="layoutSidenav_content">
		
    <div class="form-group">
        <form:form method="POST" modelAttribute="eventForm" class="form-signin" >
    <h2 class="form-signin"> Nuovo evento</h2>
      <form:label path="titolo">Titolo</form:label> <spring:bind path="titolo">
                <div class="form-group ${status.error ? 'has-error' : ''}"  >
                    <form:input type="text" path="titolo" class="form-control" placeholder="Titolo"
                                autofocus="true" ></form:input>
                                </div>
                                </spring:bind>
      <form:label path="descrizione">Descrizione</form:label> <spring:bind path="descrizione">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="descrizione" class="form-control" placeholder="Descrizione"
                                autofocus="true"></form:input>
                                </div>
                                </spring:bind>
      <form:label path="descrizione">Città</form:label> <spring:bind path="descrizione">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="citta" class="form-control" placeholder="Città"
                                autofocus="true"></form:input>
                                </div>
                                </spring:bind>
 	<form:label path="categoria">Categoria</form:label> <spring:bind path="categoria">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:select type="integer" path="categoria" class="form-control" placeholder="Categoria"
                                autofocus="true">
                       <optgroup label="SPORT">
                         <option value="CALCIO">CALCIO</option>
                         <option value="CALCETTO">CALCETTO</option>
                         <option value="PALLAVOLO">PALLAVOLO</option>
                         <option value="TENNIS">TENNIS</option>
                         <option value="BEACH_VOLLEY">BEACH VOLLEY</option>
                       </optgroup>
                       <optgroup label="SERVIZI">
                         <option value="RIPETIZIONI">RIPETIZIONI</option>
                         <option value="GIOCHI_DA_TAVOLO">GIOCHI DA TAVOLO</option>
                       </optgroup>
                       </form:select>
                                
                                </div>
                                </spring:bind>
      <form:label path="dataEvento">Data Evento</form:label> <spring:bind path="dataEvento">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="date" path="dataEvento" class="form-control" placeholder="DataEvento"
                                autofocus="true"></form:input>
                                </div>
                                </spring:bind>
     <form:label path="prezzo">Prezzo</form:label> <spring:bind path="prezzo">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="float" path="prezzo" class="form-control" placeholder="Prezzo"
                                autofocus="true"></form:input>
                                </div>
                                </spring:bind>
     
      <form:label path="scadenzaPagamento">Data Scadenza Pagamento</form:label> <spring:bind path="scadenzaPagamento">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="date" path="scadenzaPagamento" class="form-control" placeholder="scadenzaPagamento"
                                autofocus="true"></form:input>
                                </div>
                                </spring:bind>
   
      <form:label path="cauzione">Cauzione</form:label> <spring:bind path="cauzione">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="cauzione" class="form-control" placeholder="scadenzaPagamento"
                                autofocus="true"></form:input>
                                </div>
                                </spring:bind> 
    
    
                  <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
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