<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<div class="logo"><a href="#"><img src="${ctx}images/logo.jpg" height="50"/></a></div>
</div>
<!-- top结束 -->

<!-- 导航开始 -->
<ul class="nav">
	<li style="width:33%"><a href="index.html" title="网站首页"><h2>网站首页</h2></a></li>
    <li style="width:34%"><a href="${ctx}essay.html" title="最新资讯"><h2>推理短文</h2></a></li>
    <li style="width:33%"><a href="${ctx}riddle.html" title="谜语大全"><h2>谜语大全</h2></a></li>
</ul>
<ul class="nav">
	<li style="width:33%"><a href="${ctx}mystery.html" title="未解之谜"><h2>未解之谜</h2></a></li>
    <li style="width:34%"><a href="${ctx}baike.html" title="推理百科"><h2>推理百科</h2></a></li>
    <li style="width:33%"><a href="${ctx}info.html" title="推理资讯"><h2>推理资讯</h2></a></li>
</ul>
<!-- 导航结束 -->
 
<!-- 推理短文讯开始 -->
<div class="Cons">推理短文<span><a href="${ctx}essay.html">更多>></a></span></div>
<div class="Cons_news">
	<ul>
		<c:forEach items="${essayList}" var="essay">
    		<li>
    			<a href="${ctx}essay/detail/${essay.id}.html">
    			<div class="Cons_img">
    				<img src="${imgContext}${essay.logoUrl}">
    				<h3>${essay.title}</h3>
    				<i class="read">阅读(${essay.clickTimes})</i> 
    				<i class="time"><fmt:formatDate value="${essay.createTime}" pattern="yyyy/MM/dd"/></i>
    			</div>
    			</a>
    		</li>
		</c:forEach>
    </ul>
</div>
<!-- 推理短文结束 -->

<!-- 谜语大全开始 -->
<div class="Cons">谜语大全<span><a href="${ctx}riddle.html">更多>></a></span></div>
<div class="Cons_news">
	<ul>
		<c:forEach items="${riddleList}" var="riddle">
	    	<li><a href="${ctx}riddle.html">​${riddle.question}<span>></span></a></li>
		</c:forEach>
    </ul>
</div>
<!-- 谜语大全结束 -->

<!--推理名家开始 -->
<div class="Cons">推理名家<span><a href="${ctx}famous.html">更多>></a></span></div>
<div class="brand">
	<ul>
		<c:forEach items="${famousList}" var="famous" varStatus="status">
			<c:if test="${status.count <= 6 }">
	        	<li><a href="${ctx}famous/detail/${famous.id}.html"><img src="${imgContext}${famous.logoUrl}"></a><p>${famous.title}</p></li>
			</c:if>
        </c:forEach>
    </ul>
</div>
<!-- 推理名家结束 -->


<!-- 推理百科开始 -->
<div class="Cons">推理百科<span><a href="${ctx}baike.html">更多>></a></span></div>
<div class="Cons_news">
	<ul>
		<c:forEach items="${baikeList}" var="baike" varStatus="status">
	    	<li><a href="${ctx}baike/detail/${baike.id}.html">
	    	<div class="Cons_img"><img src="${imgContext}${baike.logoUrl}">
	    	<h3>${baike.title}</h3><i class="read">阅读(${baike.clickTimes})</i> 
	    	<i class="time"><fmt:formatDate value="${baike.createTime}" pattern="yyyy/MM/dd"/></i></div></a></li>
		 </c:forEach>
    </ul>
</div>
<!-- 推理百科结束 --

<!-- 联系澳昇开始 -->
<div class="Cons">联系我们</div>
<div class="contrat">
<p>QQ：443340273</p>
<p>Email:443340273@qq.com</p>
<p>CopyRight 2015 粤 ICP备15094569号-2</p>
</div>
<!-- 联系澳昇结束 -->

</body>
</html>
