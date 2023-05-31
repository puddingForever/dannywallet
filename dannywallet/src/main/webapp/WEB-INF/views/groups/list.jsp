<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../myinclude/myheader.jsp" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />



<!-- 가계부 리스트 -->
<div class="container" style="margin-top:100px">

	<div class="card">
	  <div class="card-body">
		<h2>가계부 리스트</h2> 
			<div class="list-group">
					  <a href="#" class="list-group-item list-group-item-action">
					    <div class="d-flex w-100 justify-content-between">
					    <c:forEach var="group" items="${groupList }">
					      <h5 class="mb-1">${group.group_name }</h5>
					       </c:forEach>
					    </div>
				
					  </a>
			</div>	
	  </div>
	</div>						
						
	
	<div class="text-right">
			<input type="text" class="form-control" id="group_name" placeholder="가계부 이름을 입력해주세요" >
			<button type="button" class="btn btn-primary" onclick="addgroup()">등록</button>
	</div>	
</div>

<script>
   function addgroup(){
      var group_name = $('#group_name').val();
	     if(group_name.length==0){
    	       alert('가게부 이름을 입력하세요');
        	   return;
   				 } //end-if
   				 
	 var jsonData = {
   					"group_name" : group_name	 
   						 
   				 };
   $.ajax({
       url:"${contextPath}/groups/addGroup",
      type:"post",
     data: JSON.stringify(jsonData),
   dataType:"text", //받는 타입
   contentType: "application/json; charset=utf-8", //보내는 타입
   success:function(result){
     if(result.trim() == 'fail'){
       alert("등록이 실패하였습니다");
        return;
      }else{
    	  console.log(result);
   			alert("등록이 완료되었습니다.");
           // getGroupList(); // 등록후  가게부 불러오기 실행
       }  //end-else    
  	 }//end-success
    })//end-ajax
  }//end-addgroups


/* 

function getGroupList(){
    $.ajax({
        url:"${contextPath}/getGroupList",
       type:"get",
       success:function(result){
         alert("가계부 등록이 완료되었습니다");
          for(var i in result){
          result[i].group_name;
         }
      }
    })  
}
 */
</script>

</body>
</html>