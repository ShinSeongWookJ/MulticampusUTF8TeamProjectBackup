<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:import url="/top"/>
<!-- Ajax 요청 처리 ---------------- -->
<!-- <script src="js/reviewAjax.js"></script> -->

<%@ include file="/WEB-INF/views/review/reviewScript.jsp"%>

<!-- ------------------------------ -->
<form method="post" enctype="multipart/form-data" name="rf" id="rf">
	<!-- hidden data------------------------------------ -->
		<input type="hidden" name="pnum_fk" id="pnum_fk" value="${prod.pnum}">
		<input type="hidden" name="userid" id="userid" value="${loginUser.userid}">
		<input type="hidden" name="mode" value="ajaxMode">
	<!-- ---------------------------------------------- -->
	<table class="table">
	<tr>
		<th colspan="4" class="text-center">
		<h3>::▶문구상품 리뷰 남기기◀::</h3>
		</th>
	</tr>
	<tr>
		<th>리뷰평가점수</th>     
		<td>
		<!-- <input type="hidden" name="score" id="score"> -->
		<label for="score1"><input type="radio" name="score" id="score1" value="1">별1개</label>ㅋ
		<label for="score2"><input type="radio" name="score" id="score2" value="2">별2개</label>
		<label for="score3"><input type="radio" name="score" id="score3" value="3">별3개</label>
		<label for="score4"><input type="radio" name="score" id="score4" value="4">별4개</label>
		<label for="score5"><input type="radio" name="score" id="score5" value="5">별5개</label>
		</td>
		
		<th>작성자</th>
		<td>[홍길동]</td>
		<%-- <td>${loginUser.name}[${loginUser.userid}]</td> --%>
	</tr>	
	<tr>
		<th>상품평</th>
		<td colspan="3">
		<textarea name="content" id="content"
		 rows="2" class="form-control"></textarea>	
		</td>
	</tr>
	<tr>
		<th>이미지업로드</th>
		<td colspan="2">
		<input type="file" name="mfilename" id="mfilename"
		 accept="image/*" class="form-control">
		</td>
		<td>
		<!-- 파일 업로드가 없는 일반적인 폼 데이터를 전송할 떄 => send()함수통해 ajax요청 -->
		<!-- <a type="button" class="btn btn-success"
				onclick="send()">글쓰기</a> -->
				
		<!-- default submit button -->
		<button class="btn btn-outline-success">글쓰기</button>
		</td>
	</tr>
</table>
</form>
<c:import url="/foot"/>