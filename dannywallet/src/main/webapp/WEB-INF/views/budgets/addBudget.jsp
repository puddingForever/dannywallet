<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../myinclude/myheader.jsp" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
	
	
<div class="container" style="margin-top:100px">
	<form id="frmBudget" method="post">
	  <div class="form-group row">
	    <label>가게부이름</label>
	    <div class="col-6">
	      <input type="text" class="form-control" name="budget_name" placeholder="가게부 이름을 등록하세요">
	    </div>
	  </div>
	
	  <!-- 카테고리  -->
	  <div class="form-group row">
	    <div class="col-sm-10">
	      <button type="button" class="btn btn-info" id="btnCategory" data-oper="category">카테고리 설정하기</button>
	      <button type="button" class="btn btn-primary" id="btnBudget" data-oper="budget">가계부 등록</button>
	    </div>
	  </div>
	</form>
</div>

<%@ include file="../myinclude/myfooter.jsp" %>

<script>
	var frmBudget = $("#frmBudget");
	
	$("button").on("click",function(){
		var operation = $(this).data("oper");
		
		if(operation == "category"){
			frmBudget.attr("action","${contextPath}/budgets/category").attr("method","get");
		}else if(operation=="budget"){
			frmBudget.attr("action","${contextPath}/budgets/addBudget");
			frmBudget.empty();
		}
		
		frmBudget.submit();
	})
</script>
