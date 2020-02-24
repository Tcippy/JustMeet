<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
//by tommaso
<html xmlns="http://www.w3.org/1999/xhtml"
  xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="utf-8" />
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<title>Cerca evento</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
  rel="stylesheet">
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>
<body>
  <div class="form-group">
    <form:form method="POST" modelAttribute="searchForm"
      class="form-signin">
      <h2 class="form-signin">Cerca evento</h2>
      <label>Titolo</label>
      <spring:bind path="titolo">
        <div class="form-group ${status.error ? 'has-error' : ''}">
          <form:input type="text" path="titolo" class="form-control"
            placeholder="Titolo" autofocus="true"></form:input>
        </div>
      </spring:bind>
      <label>Categoria</label>
      <spring:bind path="categoria">
        <div class="form-group ${status.error ? 'has-error' : ''}">
          <form:select type="integer" path="categoria" class="form-control"
            placeholder="Categoria" autofocus="true">
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
      <label>Data Evento</label>
      <spring:bind path="dataEvento">
        <div class="form-group ${status.error ? 'has-error' : ''}">
          <form:input type="date" path="dataEvento" class="form-control"
            placeholder="DataEvento" autofocus="true"></form:input>
        </div>
      </spring:bind>

      <button class="btn btn-lg btn-primary btn-block" type="submit">Cerca</button>
  </div>
  </form:form>
  </div>
  <script
    src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>