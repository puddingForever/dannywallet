<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GUEST의 가계부 카테고리</title>
</head>
<body>
	<div class="row">
				<table class="table">
				<%-- 
					지은의 가계부 
					집
					여가활동
					교육 ... 
					<c:forEach var="obj" items="${}">
						<tr>
							<td></td>
							<td><a href="${contextPath}/${budgetId}/category/+${cateId}">${contact.name}</a></td>
						</tr>
					</c:forEach>	 --%>
				</table>
				
	</div>
</body>
</html>