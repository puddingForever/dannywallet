<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
  <head>
    <title>Login</title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
    <script>
      $(function () {
	    $("#registerBtn").click(function () {
	      	location.href = '${contextPath}/user/register';
	    });
      });
    </script>
  </head>
  <body>
  
	<div class="container" style="margin-top:100px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="card-body">
					    <c:if test="${fail ==true }">
						<div class="alert alert-danger">
							<h3>로그인 실패</h3>
							<p>아이디 비밀번호를 확인해주세요</p>
						</div>
						</c:if>
						<form:form action="${root }user/login_pro" method="post" modelAttribute="loginUserBean">
							<div class="form-group">
								<form:label path="user_id">아이디</form:label>
								<form:input path="user_id" class="form-control"/>
							</div>
							<div class="form-group">
								<form:label path="user_password">비밀번호</form:label>
								<form:password path="user_password" class="form-control" />
							</div>
							<div class="form-group text-right">
								<form:button class="btn btn-primary">로그인</form:button>
								<a href="${contextPath}/user/register" class="btn btn-danger">회원가입</a>
							</div>
						</form:form>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>

  </body>
</html>