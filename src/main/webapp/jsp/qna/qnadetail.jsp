<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="qna_detail_container">
		<div class="qna_detail_titlewrapper">
			<Strong>${q.title }</Strong>
		</div>
		<div class="qna_detail_info">
			<div class="qna_contentinfo"><Strong>번호</Strong>${q.no }</div>
			<div class="qna_contentinfo"><Strong>작성자</Strong>${q.id }</div>
			<div class="qna_contentinfo_date"><Strong>작성일</Strong>${q.date }</div>
		</div>
		<div class="qna_detail_contentwrapper">
		<c:if test="${q.img != null}">
			<img src="jsp/qna/imgFolder/${q.img }">
		</c:if>
			<div class="contentwrapper_content">${q.contents }</div>
		</div>
		<div class="qna_detail_buttonwrapper">
			<button class="btn btn-primary" onclick="location.href='QnaUpdateC?no=${q.no}'">수정</button>
			<button class="btn btn-primary" onclick="delchk(${q.no})">삭제</button>
			<%-- location.href='QnaDeleteC?no=${q.no}' --%>
		</div>
	</div>
	<div>
		<table id="tblListComment" class="table table-bordered">
			<c:if test="${qnareply.size() == 0 }">
				<tr>
					<td colspan="2">답변을 기다려주세요.</td>
				</tr>
			</c:if>

			<c:forEach items="${ qnareply}" var="q">
				<tr id="comment-container-${q.r_no }">
					<td><input id="comment-content-${q.r_no }"
						value="${ q.r_content }" disabled="disabled"> <span>${ q.r_name }.
							${ q.r_date }</span></td>
					<c:choose>
						<c:when test="${sessionScope.account.l_id eq q.r_id }">
							<td><input id="button1-${q.r_no }" type="button" value="삭제하기"
								class="btn btn-default" onclick="modify_comment2('${q.r_no}')" />
							</td>
							<td>
								<input id="button2-${q.r_no }" type="button" value="수정하기"
								class="btn btn-default" onclick="modify_comment('${q.r_no}')"/>
							</td>
						</c:when>
						
						<c:when test="${sessionScope.account.l_id eq 'master' }">
							<td><input id="button1-${q.r_no }" type="button" value="삭제하기"
								class="btn btn-default" onclick="modify_comment2('${q.r_no}')" />
							</td>
							<td>
								<input id="button2-${q.r_no }" type="button" value="수정하기"
								class="btn btn-default" onclick="modify_comment('${q.r_no}')"/>
							</td>
						</c:when>
					</c:choose>
				</tr>
			</c:forEach>
		</table>
		<form action="QnaReplyC" method="get">
			<table id="tblAddComment" class="table table-bordered">
				<tr>
					<td><input type="text" name="r_content" id="r_content" class="form-control" required placeholder="내용을 입력하세요. "/></td>
					<td><input type="submit" value="등록" class="btn btn-primary" style="width: 100%" /></td>
				</tr>
			</table>	
			<input type="hidden" name="no" value="${q.no }">
		</form>
	</div>
</body>
</html>