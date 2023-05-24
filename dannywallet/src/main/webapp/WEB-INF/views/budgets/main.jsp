<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../myinclude/myheader.jsp" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<script>
	$(document).ready(function(){
		if(${not empty redirectloginBean.user_name}){
			alert("${redirectloginBean.user_name}님 환영합니다");
		}
	})
</script>

<!-- 가계부 리스트 -->
<div class="container" style="margin-top:100px">

	<div class="card">
	  <div class="card-body">
		<h2>${loginUserBean.user_name}님의 가계부 리스트</h2> 
			<div class="list-group">
					  <a href="#" class="list-group-item list-group-item-action">
					    <div class="d-flex w-100 justify-content-between">
					      <h5 class="mb-1">푸딩의 가게부</h5>
					      <small>3 days ago</small>
					    </div>
					    <p class="mb-1">Some placeholder content in a paragraph.</p>
					    <small>And some small print.</small>
					  </a>
					    <a href="#" class="list-group-item list-group-item-action">
					    <div class="d-flex w-100 justify-content-between">
					      <h5 class="mb-1">회사용 가게부</h5>
					      <small>3 days ago</small>
					    </div>
					    <p class="mb-1">Some placeholder content in a paragraph.</p>
					    <small>And some small print.</small>
					  </a>
			</div>	
	  </div>
	</div>						
						
	<div class="text-right">
		<a href="${contextPath}/budgets/budget_add" class="btn btn-primary">새로운 가계부 등록</a>
	</div>
	
</div>


</body>
</html>