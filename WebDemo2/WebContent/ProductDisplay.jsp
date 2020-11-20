<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="CommonHeader.jsp" %>

		<br/><br/><br/><br/>
		
		<table align="center" cellspacing="2" cellpadding="4">
		
			<tr bgcolor="#00457d" style="color:#abe1fa;">
				<td> Product ID </td>
				<td> Product Name </td>
				<td> Price </td>
				<td> Product Description </td>
				<td> Stock </td>
				<td> Category </td>
				<td> Supplier </td>
				<td> Manage </td>
			</tr>
			
			<c:forEach items="${productlist}" var="product">
				<tr bgcolor="#abe1fa">
					<td>${product.productId}</td>
					<td>${product.productName}</td>
					<td>${product.price}</td>
					<td>${product.description}</td>
					<td>${product.stock}</td>
					<td>${product.category}</td>
					<td>${product.supplier}</td>
					<td>
						<a href="DeleteProductController?productid=${product.productId}">Delete</a>
					</td>
				</tr>
			</c:forEach>
			
		</table>

	</body>
</html>