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


#bigdiv{
    width:100%;
    height:600px;
    border:2px solid orange;
    position:relative;
    overflow:hidden;
}

#littlediv{
  height:200px;
  width:200px;
  background-color:green;
  position:absolute;
  text-align: center;
/*   box-shadow:0 0 0 0 #000; */
/*   transition:box-shadow .1s linear; */
}
#txt{
top:50px;
position:absolute;
text-align: center;
margin: auto;


}
/* #littlediv > textarea{ */
/*   height:100px; */
/*   width:100px; */

/*   position:absolute; */
 
/* } */

/* #littlediv.addShadow{ */
/*     box-shadow:0 16px 36px 8px rgba(0,0,0,.4); */
  
/* } */
</style>
</head>
<body>
<!-- <div id="bigdiv"> -->
<!--   <div id="littlediv"></div> -->
<%-- 	<c:forEach var="m" items="${memos}"> --%>
<%-- 	<fmt:formatDate value="${m.memoDate}" pattern="yyyy-MM-dd" var="date"/> --%>
	
<!-- <!-- 	<div id="littlediv"> --> 
<!-- 	<textarea > -->
<!-- 		<ol> -->
<%-- 			<li>${m.memoId}</li> --%>
<%-- 			<li>${m.memoNo}</li> --%>
<%-- 			<li>${m.memoX}</li> --%>
<%-- 			<li>${m.memoY}</li> --%>
<%-- 			<li>${m.content}</li> --%>
<%-- 			<li>${date}</li> --%>
<!-- 		</ol> -->
<!-- 	</textarea> -->
<!-- <!-- 	</div> --> 
<%-- <%-- 			${m.memoId} / ${m.memoNo} / ${m.memoX} / ${m.memoY} / ${m.content} /${date} <br> --%> 
<%-- 	</c:forEach> --%>
	
	<div style="width: 100px; height: 100px;" id="create">click</div> 
<!-- </div> -->

<div id="littlediv">
<textarea id="txt" rows="2" cols="2"></textarea>


</div>

<script type="text/javascript">
$("#create").click(function() {
	  $(this).before("<div id='littlediv'>" 
			  		 +"<textarea id='txt' rows='2' cols='2'></textarea>"
			   		+"</div>");
	});

$(document).on('mousedown', mouseDown)
$(document).on('mouseup', mouseUp)

var startX = 0;
var startY = 0;
var boxX = 0;
var boxY = 0;
var box = $('#littlediv');

function mouseDown(e){
  if( box.is(e.target)  ){
      startX = e.clientX;
      startY = e.clientY;
      boxX = parseInt( box.css('left') );
      boxY = parseInt( box.css('top') );
      $(document).on('mousemove', mouseMove);  
  } 
}

function mouseMove(e){
    var deltaX = e.clientX - startX;
    var deltaY = e.clientY - startY;
    box.css({
      top : boxY + deltaY + 'px',
      left : boxX + deltaX + 'px'
    })
  }

function mouseUp(e){
  box.removeClass('addShadow');  
  $(document).off('mousemove', mouseMove);
  }

</script>

</body>
</html>