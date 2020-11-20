<%@ page language="java" contentType="text/html" import="java.util.*"%>
<%@include file="CommonHeader.jsp" %>

		
		<h2>Normal Scriptlet</h2>

		<p style="font-family:monospace;font-size:16;">
			<% 
			Date today=new Date();
			out.println("<b>Today (Date and Time zone): </b> "+today);
			%>
		</p>
		<hr width="100%" height="5" color="blue"/>
		
		<h3>Expression Scriptlet</h3>
		100+50=<%=(100+50) %>

	</body>
</html>