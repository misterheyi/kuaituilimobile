<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>${info.title}_推理资讯_推理新闻_酷爱推理</title>
    <meta name="robots" content="index, follow" />
    <meta name="keywords" content="推理，侦探，侦探推理，恐怖推理，推理游戏，谜语，未解之谜，推理知识，推理题及答案" />
    <meta name="description" content="酷爱推理为“酷爱”而生。我们有最多的经典推理题及答案，侦探推理，恐怖推理，推理游戏，甚至酷爱还收集谜题，资讯，推理知识百科，让读者沉溺在悬疑的世界中，从而爱上分析，爱上推理，爱上“酷爱”。" />
	<meta name="author" content="" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<%@ include file="common.jsp"%>
</head>

<link rel="stylesheet" href="css/style.css" />

<body>
<!-- top开始 -->
<div class="top">
	<div class="logo"><a href="${ctx}index.html"><img src="${ctx}images/logo.jpg" height="50"/></a></div>
</div>
<!-- top结束 -->



<!-- 最终页介绍开始 -->
<div class="Cons"><a href="${ctx}index.html">首页</a> > <a href="${ctx}info.html">资讯</a> > <a href="consultation.html">${info.title}</a></div>
<div class="end">
	<div class="end_title">${info.title}</div>
    <div class="end_num">发布日期：<fmt:formatDate value="${info.createTime}" pattern="yyyy/MM/dd"/></div>
    <div class="end_time">文章浏览：${info.clickTimes}</div>
    <div class="end_con">
    	<img src="${imgContext}${info.logoUrl}">
    	${info.htmlText}
    </div>
	
	<div>
		<div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone"></a><a href="#" class="bds_tsina" data-cmd="tsina"></a><a href="#" class="bds_tqq" data-cmd="tqq"></a><a href="#" class="bds_renren" data-cmd="renren"></a><a href="#" class="bds_weixin" data-cmd="weixin"></a></div>
	<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdPic":"","bdStyle":"0","bdSize":"16"},"share":{},"image":{"viewList":["qzone","tsina","tqq","renren","weixin"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
	</div>
	
	<div class="detal_page" id="divPage">
		<a href="${ctx}info/detail/${next.id}.html" class="next"><span>上一篇 : </span>${next.title}</a>              
		<a href="${ctx}info/detail/${pre.id}.html" class="next" style="float:right"><span>下一篇 : </span>${pre.title}</a>         
		<h9 style="float:left" class="bnt">         <a href="${ctx}essay.html">返回列表</a>     </h9>
	</div>
	
	
</div>
<!-- 最终页介绍结束 -->


</body>
</html>