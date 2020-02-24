<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"
  xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="utf-8" />
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<title>Modifica evento </title>

      <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>
<body>
    <div class="form-group">
        <form:form method="POST" modelAttribute="modifyEvent" class="form-signin" >
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
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>		
</html>