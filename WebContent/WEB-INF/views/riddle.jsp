<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
    <title>谜语大全_谜语答案_酷爱推理</title>
    <meta name="description" content="酷爱推理为“酷爱”而生。我们有最多的经典推理题及答案，侦探推理，恐怖推理，推理游戏，甚至酷爱还收集谜题，资讯，推理知识百科，让读者沉溺在悬疑的世界中，从而爱上分析，爱上推理，爱上“酷爱”。" />
    <meta name="keywords"  content="推理，侦探，侦探推理，恐怖推理，推理游戏，谜语，未解之谜，推理知识，推理题及答案" />
	<meta name="author" content="" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<%@ include file="common.jsp"%>
</head>
<script type="text/javascript">
function updateRiddleClickTimes(id){
	$.post("riddle/updateRiddleClickTimes.html",{"id":id},function(result){
	});
}
</script>
<body>
<!-- top开始 -->
<div class="top">
	<div class="logo"><a href="${ctx}index.html"><img src="${ctx}images/logo.jpg" height="50"/></a></div>
</div>
<!-- top结束 -->
 
 
<!-- 推理短文讯开始 -->
<div class="Cons"><a href="${ctx}index.html">首页</a> > 谜语大全</div>

<div class="Cons_news">
	 <div class="module" id="module">
		<dl>
			<c:forEach items="${riddleList}" var="riddle">
				<dt>${riddle.question}</dt>
				<dd>
					<span class="trigger-show" onclick="updateRiddleClickTimes(${riddle.id})">显示答案</span>
					<p><span class="answer-hd">答案</span><span class="answer">${riddle.answer}</span></p>
				</dd>
			</c:forEach>
		</dl>	
	</div>
	${pageText}
</div>
<!-- 推理短文结束 -->
 <script type="text/javascript">
	<!--
	scroller();
	switchElem();
	share();
	//-->
	</script>
</body>
</html>
