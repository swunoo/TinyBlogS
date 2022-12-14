<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TinyBlogS</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
</head>
<body>
	<div class="topBar">
		<h2>TinyBlogS</h2>
		<a style="margin-left:auto;" href="/TinyBlogS/HomePage">Feed</a>
		<a href="/TinyBlogS/MePage">Me</a>
		<a href="/TinyBlogS/LogoutPage">Log out</a>
	</div>
	<hr/>
	
	<c:forEach var="blog" items="${ blogs }">
	
		<div class="blog">
			<h1>${blog.title}</h1>
			<div style="display:flex; width:100%; justify-content:space-between; align-items:center;">
				<p style="font-size:1.5rem;">
					<c:out value="${blog.author}"/>
				</p>
				<p>
					<c:out value="${blog.date}"/>
				</p>
			</div>
			<p>
				<c:out value="${blog.text}"/>
			</p>
		</div>

	
	</c:forEach>
	
	
</body>
</html>