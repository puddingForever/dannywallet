<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="{pageContext.request.contextPath}" />

<html>
  <head>
    <title>회원가입 페이지</title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
    <script>
      $(function () {
        if ($("#errorMsg").text() != "")
      	{
      	  $("#errorMsg").removeClass("d-none");
      	}
      });
    </script>
  </head>
  <body>
    <div class="card">
      <h2 class="card-header">
		회원가입을 해주세요
      </h2>
      <div class="card-body">
        <form:form action="${contextPath }/user/register_pro" method="post" modelAttribute="registerUserBean">
          <div class="form-group">
            <form:label path="user_id">아이디</form:label>
            <form:input path="user_id" class="form-control" placeholder="아이디를 입력하세요"/>
             <form:label path="user_name">이름</form:label>
            <form:input path="user_name" class="form-control" placeholder="아이디를 입력하세요"/>
            <form:label path="user_email">이메일</form:label>
            <form:input path="user_email" class="form-control" aria-describedby="emailHelp" placeholder="이메일을 입력하세요"/>
            <small id="emailHelp" class="form-text text-muted">이메일의 정보는 공유되지 않습니다.</small>
          </div>
          <div class="form-group">
            <form:label path="user_password">비밀번호</form:label>
            <form:password path="user_password" class="form-control" placeholder="비밀번호를 입력하세요"/>
          </div>
          <div class="form-group">
            <form:label path="user_pw_confirm">비밀번호 확인</form:label>
            <form:password path="user_pw_confirm" class="form-control" placeholder="비밀번호를 입력하세요"/>
          </div>
          <button type="submit" class="btn btn-primary">등록</button>
        </form:form>
      </div>
    </div>
  </body>
</html>