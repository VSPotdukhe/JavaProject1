<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>

		<br/><br/><br/><br/>
		
		<table width="50%" align="center">
			<tr bgcolor="red">
				<td><center>Error Message</center></td>
			</tr>
			<tr align="center">
				<td><font color="red">${errorInfo}</font></td>
			</tr>
			<tr>
				<td><center><h3>Please try again on <a href="Login.jsp">Login Page</a></h3></center></td>
			</tr>
		</table>
		
		<br/>
		<h4 align="center">*If no account created: <a href="Register.jsp">Sign up here</a></h4>
	
	</body>
</html>