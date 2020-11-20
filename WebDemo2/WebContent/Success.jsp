<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>


		<div style="background-color:green">
			<h4>Welcome : ${requestScope.loginId}</h4>
		</div>

		<h2 align="center">Successfully Logged in</h2>
		
		<h4 align="center"><a href="Login.jsp">Logout</a></h4>

	</body>
</html>