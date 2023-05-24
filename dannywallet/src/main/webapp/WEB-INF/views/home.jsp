<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ include file="./myinclude/myheader.jsp" %>

<div class="container" style="margin-top:100px;text-align:center;padding:100px0;">
      <div style="padding:20px">
         <h1>대니월랫에 오신 것을 환영합니다!</h1>
         <h5>지금 바로 나만의 가계부를 만들어보세요</h5>
        	<div style=" margin: 50px;">
				<a href="${contextPath}/user/login"  class="btn btn-primary btn-lg"  style="margin:10px">로그인</a>
				<a href="${contextPath}/user/register"  class="btn btn-primary btn-lg">회원가입</a>
			</div>
     </div>
    
</div>