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

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>
	<fmt:formatNumber value="${city.population}" type="number" var="city_pop" />
	<fmt:formatNumber value="${city.country.population}" type="number" var="country_population" />
	<fmt:formatNumber value="${city.country.surfaceArea}" type="number" 	var="country_surfaceArea" />
	<fmt:formatNumber value="${city.country.gnp}" type="number" var="country_gnp" />
	<fmt:formatNumber value="${city.country.gnpOld}" type="number" var="country_gnpOld" />
	<div class="text-center table-responsive">
		<table class="table table-hover">
			<tr class="alert-info"
				onclick="location.href='/city/page/${param.pageNo}'"
				style="cursor: pointer">
				<td>id</td>
				<td>countryCode</td>
				<td>name</td>
				<td>district</td>
				<td>population</td>
				<td><button class="btn btn-info btn-xs" type="button"
						onclick="location.href='/city/page/${param.pageNo}'">BACK</button></td>
			</tr>
		
			<tr>
				<td>${city.id}</td>
				<td>${city.countryCode}</td>
				<td>${city.name}</td>
				<td>${city.district}</td>
				<td>${city_pop}</td>
			</tr>
			<tr>
				<td colspan="6"></td>
			</tr>
			<tr class="alert-success">
				
				<td></td>
				<td>code</td>
				<td>code2</td>
				<td>name</td>
			</tr>
			
			<tr>
				
				<td></td>
				<td>${city.country.code}</td>
				<td>${city.country.code2}</td>
				<td>${city.country.name}</td>
			</tr>
			<tr class="alert-success">
				<td></td>
				<td>localName</td>
				<td>continent</td>
				<td>region</td>
				<td>governmentForm</td>
			</tr>
			<tr>
				<td></td>
				<td>${city.country.localName}</td>
				<td>${city.country.continent}</td>
				<td>${city.country.region}</td>
				<td>${city.country.governmentForm}</td>
			</tr>
			<tr class="alert-success">
				<td></td>
				<td>headOfState</td>
				<td>surfaceArea</td>
				<td>indepYear</td>
				<td>population</td>
			</tr>
			
			<tr>
				<td></td>
				<td>${city.country.headOfState}</td>
				<td>${country_surfaceArea}</td>
				<td>${city.country.indepYear}</td>
				<td>${country_population}</td>
			</tr>
			<tr class="alert-success">
				<td></td>
				<td>lifeExpectancy</td>
				<td>gnp</td>
				<td>gnpOld</td>
				<td>capital</td>
			</tr>

			<tr>
				<td></td>
				<td>${city.country.lifeExpectancy}</td>
				<td>${country_gnp}</td>
				<td>${country_gnpOld}</td>
				<td>${city.country.capital}</td>
			</tr>



			
		</table>
	</div>
	<%-- 	<a href="/city/page/${param.pageNo}">이전 Page List로....</a> --%>
</body>
</html>