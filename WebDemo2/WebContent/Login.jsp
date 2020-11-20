<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>

		<br/><br/><br/><br/>


		<form action="LoginController" method="post">
	
			<table align="center" cellspacing="2">
				<tr bgcolor="#00457d">
					<td colspan="2">
						<h2 align="center">
							<font color="#abe1fa" face="monotype corsiva" size="5">Log in here</font>
						</h2>
					</td>
				</tr>
				<tr>
					<td>Login</td>
					<td><input type="text" name="loginId" required /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="passwd" required /></td>
				</tr>
				<tr>
					<td>Country</td>
					<td>
						<select name="country">
							<option value="India">India</option>
							<option value="Srilanka">Srilanka</option>
							<option value="Bangladesh">Bangladesh</option>
							<option value="Australia">Australia</option>
						</select>
					</td>
				</tr>
				<tr bgcolor="green">
					<td colspan="2" align="center">
						<input type="submit" value="Log in" />
					</td>
				</tr>
			</table>
		</form>
		<br/>
		<h4 align="center">*To create new account: <a href="Register.jsp">Sign up here</a></h4>

	</body>
</html>