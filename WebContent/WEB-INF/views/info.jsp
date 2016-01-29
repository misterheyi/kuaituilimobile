<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>推理资讯_推理新闻_酷爱推理</title>
    <meta name="description" content="酷爱推理为“酷爱”而生。我们有最多的经典推理题及答案，侦探推理，恐怖推理，推理游戏，甚至酷爱还收集谜题，资讯，推理知识百科，让读者沉溺在悬疑的世界中，从而爱上分析，爱上推理，爱上“酷爱”。" />
    <meta name="keywords"  content="推理，侦探，侦探推理，恐怖推理，推理游戏，谜语，未解之谜，推理知识，推理题及答案" />
    <meta name="robots" content="index, follow" />
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
<div class="Cons"><a href="${ctx}index.html">首页</a> > 资讯</div>
<div class="Cons_news">
	<ul>
		<c:forEach items="${infoList}" var="info">
	    	<li><a href="${ctx}/info/detail/${info.id}.html">
	    	<div class="Cons_img">
	    	<img src="${imgContext}${info.logoUrl}">
	    	<h3>${info.title}</h3>
	    	<i class="read">阅读(${info.clickTimes})</i> 
	    	<i class="time"><fmt:formatDate value="${info.createTime}" pattern="yyyy/MM/dd"/></i></div></a></li>
		</c:forEach>    
	</ul>
	${pageText}
</div>
<!-- 推理短文结束 -->

</body>
</html>

