<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>${title }</title>
</head>
<body>

	<a href="${pageContext.request.contextPath}/locale.html?lang=en">English</a>
	|
	<a href="${pageContext.request.contextPath}/locale.html?lang=vi">Vietnamese</a>
	<br>
	<br> Current language: ${language }
	<br>
	Cuurent language: ${pageContext.response.locale}
	<br>
	<br>
	<a href="${pageContext.request.contextPath }/locale.html"><spring:message
			code="home.title"></spring:message></a> |
	<a href="${pageContext.request.contextPath }/locale/aboutus.html"><spring:message
			code="aboutus.title"></spring:message></a> |
	<a href="${pageContext.request.contextPath }/locale/news.html"><spring:message
			code="news.title"></spring:message></a>
	
	<br>
	<fmt:setLocale value="${currentLocale}"/>
	<br>
	
	<fmt:formatNumber var="fnumber" value="1234567" type="number"></fmt:formatNumber>
    Format number: ${fnumber} 
    
    <br>
	<fmt:formatNumber var="fcurrency" value="123456" type="currency"></fmt:formatNumber>
    Format currency: ${fcurrency} 
    <br>
    <fmt:formatNumber var="fpercent" value="0.123" type="percent" maxFractionDigits="4" ></fmt:formatNumber>
    Format percent: ${fpercent} 
	<br>
	<fmt:formatDate var="fdate" value="<%= new Date() %>" dateStyle="full"></fmt:formatDate>
    Format date: ${fdate}
	
	
</body>
</html>