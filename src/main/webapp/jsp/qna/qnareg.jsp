<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="QnaRegC" method="post" enctype="multipart/form-data">
			<input name="title" placeholder="제목을 입력하세요."><br>
			이미지 첨부 : <input name="img" type="file"><br>
			<textarea name="contents" placeholder="내용을 입력하세요"></textarea>
			<div class="qna_detail_buttonwrapper">
				<button>등록</button>
				<button type="button" onclick="history.back(-1)">취소</button>
			</div>
	</form>
</body>
</html>