<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="qnaconfirm_container">
		<form action="QnaPassckC" method="post">
			<div class="qnaconfirm_wrapper">
					<Strong>비밀번호 입력</Strong>
					<input id="passinput" name="pw" type="password" pattern="[0-9]*" maxlength="4" placeholder="숫자만 입력가능(4자리)" required="required">
					<div class="pschk_btn">
					<button class="btn btn-primary"name="no" value="${param.no }">확인</button>
					</div>
			</div>
					<div style="text-align: center;">${invalid }</div>
		</form>
	</div>
</body>
</html>