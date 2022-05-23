<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>



<body>
<script>
	alert("비밀번호 변경을 성공했습니다. \n 로그인 화면으로 이동합니다.");
	
	window.parent.location.href="<%=request.getContextPath()%>/common/loginForm.do";
</script>

</body>