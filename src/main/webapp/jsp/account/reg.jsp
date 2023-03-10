<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>register</title>



</head>
<body>
	<form name="Reg" action="RegC" method="post" class="reg-container" onsubmit="return reg_Check()">
		<div class="reg-items">
			<div class="reg-item1">ID</div>
			<div class="reg-item2">
				<input name="id" class="reg-data" type="text" placeholder="한글 사용불가" />
			</div>
		</div>
		<div class="reg-items">
			<div class="reg-item1">비밀번호</div>
			<div class="reg-item2">
				<input name="pw" class="reg-data" type="password"
					placeholder="대,소,특수문자 각각 1글자 이상,8글자 이상" />
			</div>
		</div>
		<div class="reg-items">
			<div class="reg-item1">비밀번호 확인</div>
			<div class="reg-item2">
				<input name="repw" class="reg-data" type="password" />
			</div>
		</div>
		<div class="reg-items">
			<div class="reg-item1">이름</div>
			<div class="reg-item2">
				<input name="login_name" class="reg-data" type="text" />
			</div>
		</div>
		<div class="reg-items">
			<div class="reg-item1">전화번호</div>
			<div class="reg-item2">
				<input type="text" name="phonenumber" id="phonenumber"
					placeholder="핸드폰번호 입력" class="reg-data" maxlength="11" />
			</div>
		</div>
		<div class="reg-items">
			<div class="reg-item1">생년월일</div>
			<div class="reg-item2">
				<input type="date" name="birthday" class="reg-data" min="1920-01-01"
					max="9999-12-31" />
			</div>
		</div>
		<div class="reg-items">
			<div class="reg-item1">주소</div>
			<div class="reg-item2">
				<input type="text" id="address" name="address" class="reg-data" />
			</div>
		</div>
		<div class="items">
			<div class="item1"></div>
			<div class="item2">
				<div class="mb-3">
					<label for="userSex" class="reg-form-label">성별</label>
					<div
						class="reg-form_toggle row-vh d-flex flex-row justify-content-between">
						<div class="reg-form_radio_btn radio_male">
							<input id="radio-1" type="radio" name="gender" value="남" checked />
							<label for="radio-1">남성</label>
						</div>

						<div class="reg-form_radio_btn">
							<input id="radio-2" type="radio" name="gender" value="여" /> <label
								for="radio-2">여성</label>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="items item3">
			<div class="reg-button">
				<button>회원가입</button>
			</div>
		</div>
	</form>
</body>
</html>
