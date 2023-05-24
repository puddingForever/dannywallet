<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../myinclude/myheader.jsp" %>
	
<form>
  <div class="form-group row">
    <label for="groupName" class="col-sm-2 col-form-label">가게부이름</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="groupName" id="groupName" placeholder="가게부 이름을 등록하세요">
    </div>
  </div>
  <!-- 가게부 이름  -->
  <div class="form-group row">
    <label for="cateName" class="col-sm-2 col-form-label">가게부에서 사용할 카테고리도 등록해보세요</label>
  	  <div class="col-sm-10">
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" value="house" name="cateName">
			  <label class="form-check-label" for="house">
				집(전기세,수도세,관리비,월세 등등)
			  </label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" value="education" name="cateName">
			  <label class="form-check-label" for="education">
			    교육(학원비,통근비,간식비 등등)
			  </label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" value="leisure" name="cateName">
			  <label class="form-check-label" for="leisure">
			    여가(여행비용,동호회비용,외식 등등)
			  </label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" value="grocery" name="cateName">
			  <label class="form-check-label" for="grocery">
			    쇼핑(친구선물,식료품구매 등등)
			  </label>
			</div>
			<div class="form-check">
			  <input type="text" name="cateName">
			  <label class="form-check-label" for="etc">
					직접 카테고리 이름을 지정해보세요 ! 
			  </label>
			</div>
    	</div>
  </div>
  <!-- 카테고리  -->
  <div class="form-group row">
    <div class="col-sm-10">
      <button type="submit" class="btn btn-primary">가계부 등록</button>
    </div>
  </div>
</form>

