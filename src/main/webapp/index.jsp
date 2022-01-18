<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>

	<%--EXEMPLO--%>
	<%!
	String today(){
		java.text.SimpleDateFormat dt = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		return dt.format(new java.util.Date());
	}
	%>
	
	<c:set var="variavel" value="Primeira página JSP utilizando JSTL"/>
	<c:out value="${variavel}"/>
	<c:set var="formatar" value="true"/>
	<c:set var="d1" value="<%=new java.util.Date() %>"/>
	<h1>A data de hoje é: <c:out value="${d1}"/></h1>
	<h1>A data de hoje é: <fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${d1}"/></h1>
	<c:if test="${formatar == true}">
		<p>Variável formatar = <c:out value="${formatar}"/><p>
	</c:if>	
	<h1>A data de hoje é: <c:choose>
							<c:when test="${formatar == true}">
								<c:out value="<%=today() %>"/>
							</c:when>
							<c:otherwise>
								<c:out value="${d1}"/>
							</c:otherwise>
						  </c:choose></h1>
						  
	
						
						  
	
	<%--PARTE 1--%>
	<div class="container mt-5" style="color:primary;">
		<c:set var="numero" value="20"/>
		<c:set var="resultado" value="${numero = numero - 1}"></c:set>
		
		
		
		<h1>Tendo número inicial de: <c:out value="${numero}"/></h1>
		
		<h1><c:out value="${numero}"/> <c:choose>
								<c:when test="${numero >= 1}">
									<c:out value="${resultado}"/>
								</c:when>
								<c:otherwise>
									<c:out value="Fim do programa"/>
								</c:otherwise>
							  </c:choose></h1>
							  
		<c:if test="${numero != 20}">
			<c:out value="Fim do programa"/>
		</c:if>	
		
		<%--<c:redirect url = "pagina.jsp"/>--%>	
		
		<button type="button" class="btn btn-primary">Salvar</button> 
	</div>		
</body>
</html>