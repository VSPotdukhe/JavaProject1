<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>


		<br/><br/><br/><br/>
	
		<form action="RegisterController" method="post">
	
			<table align="center" cellspacing="2">
				<tr bgcolor="#00457d">
					<td colspan="2">
						<h2>
							<font face="monotype corsiva" color="#abe1fa" size="5">Sign up here</font>
						</h2>
					</td>
				</tr>
				<tr bgcolor="gray">
					<td colspan="2">
						<h2>
							<font face="monotype corsiva" color="red" size="10">${errorInfo}</font>
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
					<td>Customer Name</td>
					<td><input type="text" name="customerName" required /></td>
				</tr>
				<tr>
					<td>Email ID</td>
					<td><input type="email" name="emailId" required /></td>
				</tr>
				<tr>
					<td>Mobile</td>
					<td><input type="text" name="mobileNo" pattern="[789]\d{9}"
						placeholder="Enter Mobile No of 10 digits" required /></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><textarea cols="30" rows="5" name="addr"></textarea></td>
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
				<tr bgcolor="yellow">
					<td colspan="2" align="center">
						<input type="submit" value="Sign up" />
					</td>
				</tr>
			</table>
		</form>
		<br/>
		<h4 align="center">*Already created account: <a href="Login.jsp">Log in here</a></h4>

	</body>
</html>