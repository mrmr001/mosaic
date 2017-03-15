<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>item.jsp</title>

</head>
<body>
	<table class="table table-hover">
		<tr class="alert-info">
			
			<td>code</td>
			<td>name</a></td>
			<td>continent</td>
			<td>region</td>
			<td>surfaceArea</td>
			<td>indepYear</td>
			<td>population</td>
			<td>lifeExpectancy</td>
			<td>gnp</td>
			<td>gnpOld</td>
			<td>localName</td>
			<td>governmentForm</td>
			<td>headOfState</td>
			<td>capital</td>
			<td>code2</td>
		</tr>

		<tr>
			
			<td>${country.code}</td>
			<td>${country.name}</td>
			<td>${country.continent}</td>
			<td>${country.region}</td>
			<td>${country.surfaceArea}</td>
			<td>${country.indepYear}</td>
			<td>${country.population}</td>
			<td>${country.lifeExpectancy}</td>
			<td>${country.gnp}</td>
			<td>${country.gnpOld}</td>
			<td>${country.localName}</td>
			<td>${country.governmentForm}</td>
			<td>${country.headOfState}</td>
			<td>${country.capital}</td>
			<td>${country.code2}</td>
		</tr>
		<tr>
			<c:forEach var="city" items="${country.citys}" >
				<td>${city.id}</td>
				<td>${city.name}</td>
				<td>${city.countryCode}</td>
				<td>${city.district}</td>
				<td>${city.population}</td>
				<td>${city.country}</td>
			</c:forEach>
		</tr>
	</table>
</body>
</html>