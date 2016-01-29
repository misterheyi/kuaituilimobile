<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>酷爱推理</title>
    <meta name="robots" content="index, follow" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
	<meta name="author" content="" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<%@ include file="common.jsp"%>
</head>

<body>
<!-- top开始 -->
<div class="top">
	<div class="logo"><a href="${ctx}index.html"><img src="${ctx}images/logo.jpg" height="50"/></a></div>
</div>
<!-- top结束 -->
 
 
<!-- 推理短文讯开始 -->
<div class="Cons"><a href="${ctx}index.html">首页</a> > 名人</div>
<div class="Cons_news">
	<ul>
    	<c:forEach items="${famousList}" var="famous">
	    	<li><a href="${ctx}/famous/detail/${famous.id}.html">
	    	<div class="Cons_img">
	    	<img src="${imgContext}${famous.logoUrl}">
	    	<h3>${famous.title}</h3>
	    	<i class="read">阅读(${famous.clickTimes})</i> 
	    	<i class="time"><fmt:formatDate value="${famous.createTime}" pattern="yyyy/MM/dd"/></i></div></a></li>
		</c:forEach>
    </ul>
    ${pageText}
</div>
<!-- 推理短文结束 -->

</body>
</html>
