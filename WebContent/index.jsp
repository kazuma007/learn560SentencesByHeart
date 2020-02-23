<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>DUO 3.0</title>
	<!-- Bootstrap core CSS -->
	<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script>
			function clickBtn(id){
				var english = document.getElementById('english' + id).value;
				document.getElementById('button' + id).disabled = "true";
				console.log(info);
				var info = document.getElementById('info' + id);
				var h1Node = document.createElement('p');
				var textNode = document.createTextNode(english);
				h1Node.appendChild(textNode);
				info.appendChild(h1Node);
			}

			function Speech(id){
				var speech = new SpeechSynthesisUtterance();
				speech.text = document.getElementById('english' + id).value;
				speech.lang = "en-US";
				speech.rate = 1.0;
				speech.pitch = 1.0;
				speechSynthesis.speak(speech);
			}
	</script>
</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
		<div class="container">
			<a class="navbar-brand" href="./index.jsp">DUO 3.0</a>
		</div>
	</nav>
	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h1 class="mt-5">DUO 3.0</h1>
				<div style="padding-bottom: 10px; padding-top: 20px">
					<button class="btn page-link text-dark d-inline-block" onclick="location.href='./Shuffle'">シャッフル</button>
				</div>
				<c:forEach items="${list}" var="list" varStatus="status">
					<c:if test="${status.index < 10}">
						<div style="padding-bottom: 10px; padding-top: 20px">
							<p><c:out value="${list.id}. "/><c:out value="${list.japanese}"/></p>
							<input type="hidden" id="english<c:out value="${status.index}"/>" value="<c:out value="${list.english}"/>" />
						</div>
						<div id="info<c:out value="${status.index}"/>"></div>
					<input type="button" id="button<c:out value="${status.index}"/>" value="English" class="btn btn-primary rounded-pill" onclick="clickBtn(<c:out value="${status.index}"/>)">
					<input type="button" onclick = "Speech(<c:out value="${status.index}"/>)" value="Speak" class="btn btn-outline-primary">
					<hr>
					</c:if>
				</c:forEach>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.slim.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
