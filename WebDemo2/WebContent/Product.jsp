<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>

		<br/><br/><br/><br/>

		<form action="ProductController" method="post">

			<table align="center" cellspacing="2">
				<tr bgcolor="#00457d">
					<td colspan="2" align="center">
						<h2>
							<font face="monotype corsiva" color="#abe1fa" size="5">Product details</font>
						</h2>
					</td>
				</tr>
				<tr bgcolor="#00457d">
					<td colspan="2">
						<h2>
							<font face="monotype corsiva" color="red" size="5">${errorInfo}</font>
						</h2>
					</td>
				</tr>
				<tr>
					<td>Product Name</td>
					<td><input type="text" name="productName" required /></td>
				</tr>
				<tr>
					<td>Price</td>
					<td><input type="text" name="price" required /></td>
				</tr>
				<tr>
					<td>Description</td>
					<td><textarea cols="30" rows="5" name="desc" required></textarea></td>
				</tr>
				<tr>
					<td>Stock</td>
					<td><input type="text" name="stock" required /></td>
				</tr>
				<tr>
					<td>Category</td>
					<td>
						<select name="category" required>
							<option value="mobile">Mobile</option>
							<option value="PenDrive">PenDrive</option>
							<option value="HardDisk">HardDisk</option>
							<option value="Tripod">Tripod</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>Supplier</td>
					<td>
						<select name="supplier" required>
							<option value="CloudRetail">Cloud Retail</option>
							<option value="abcincorp">ABC Incorporation</option>
							<option value="CloudMap">Cloud Map</option>
							<option value="bigc">BigC</option>
						</select>
					</td>
				</tr>
				<tr bgcolor="purple">
					<td colspan="2" align="center">
						<input type="submit" value="Submit" />
					</td>
				</tr>
			</table>
		</form>

	</body>
</html>