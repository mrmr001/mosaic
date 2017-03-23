<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>

<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>
<style type="text/css">
.row>div {
	border: 1px solid black;
	
}

.col-sm-3>.glyphicon {
	width: 100%;
	border-bottom: 1px solid black;
}

.col-sm-9 {
	height: 700px;
}

.col-sm-3 {
	height: 700px;
	overflow:auto;
}
</style>
</head>
<body>

	<div class="container ">
		<div class="row">
			<div class="col-sm-9" id="gg">1</div>

			<div class="col-sm-3">
				2 <a href="#" id="create" class="btn btn-default btn-sm"> <span
					class="glyphicon glyphicon-plus"></span>
				</a>
				<div id="cr" data-spy="scroll" data-offset="20">

					<c:forEach var="m" items="${memos}">
						<fmt:formatDate value="${m.memoDate}" pattern="yyyy-MM-dd"	var="date" />

						<span>${m.memoId}</span><br>
						<span>${m.memoNo}</span><br>
						<span>${m.memoNo}</span><br>
						<span>${date}</span><br>
						<span>${date}</span><br>
						<span>${date}</span><br>
						<br>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>




	<script type="text/javascript">
		$("#create").click(function() {
			$("#gg").html("<textarea></textarea><br>");
		});

		$(".panel-left").resizable({
			handleSelector : ".splitter",
			resizeHeight : false
		});
	</script>

</body>
</html>