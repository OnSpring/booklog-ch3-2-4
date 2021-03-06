<%@ page pageEncoding="UTF-8"%> <!-- ① -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- ① -->
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/jspf/head.jspf"%>
<title>On Spring Post List</title>
</head>
<body>
	<section class="container">
		<div>
			<c:forEach var="post" items="${postList}"> <!-- ② -->
				<h2>${post.bookTitle}</h2>
				<div><fmt:formatDate value="${post.createdAt}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
				<a href="/post/${post.id}"> 
					<button type="button" class="btn btn-primary">Read</button>
				</a>
				<hr />
			</c:forEach>
		</div>
		<a href="/">
			<button type="button" class="btn btn-info">Main</button>
		</a>
		<a href="/post/write">
			<button type="button" class="btn btn-success">Write</button>
		</a>
	</section>
	<%@ include file="/WEB-INF/jspf/footer.jspf"%>
</body>
</html>
