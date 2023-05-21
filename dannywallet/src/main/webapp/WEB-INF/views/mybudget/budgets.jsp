<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가계부 리스트</title>
</head>
<body>
<!-- 가계부 리스트 -->
<div class="container" style="margin-top:100px">

	<div class="card shadow">	
		<div class="card-body">
			<table class="table table-hover" id='board_list'>
				<thead>
					<tr>
						<th>GUEST님의 가계부 리스트</th>
					</tr>
				</thead>
				<tbody>
				<!-- 
					<c:forEach var='obj' items="${budgets }">
						<tr>
							<td><a href='${root }/budgets/${obj.budget_idx}/category'>${obj.budget_name}지은의 가계부</a></td>
						    <td><a href='${root }/budgets/${obj.budget_idx}/category'>${obj.budget_name}대니의 가계부</a></td>
						</tr>
					</c:forEach>
					 -->
				</tbody>
			</table>
		
			
			<div class="text-right">
				<a href="${root}budgets/budgets_pro" class="btn btn-primary">새로운 가계부 등록</a>
			</div>
			
		</div>
	</div>
	
</div>


</body>
</html>