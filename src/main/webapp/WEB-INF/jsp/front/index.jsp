<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>瑞尔商城</title>
<style type="text/css">

html,body{
	width: 100%;
	height: 100%;
}

#page{
	width:100%; 
	height:100%;
}

.top{
	width:100%;
}

.top_nav {
	width:96%;
	height:25px;
	margin-left:2%;
}

a {
	text-decoration:none;
}

#goods_search {
	height:80px;
	margin-top:20px; 
	margin-left:30%;
}

.text {
	padding-left: 5px;
	width: 30%;
	height: 38px;

}

*{ font-family:"microsoft yahei",Helvetica,Tahoma,Arial,"Microsoft jhengHei"; font-size:16px; padding:0; margin:0;}

</style>
</head>
<body>
<%
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + request.getContextPath();
%>
<div id="page">
	<div class="top">
		<div class="top_nav">
	    	<p>
	    		<a href="<%=basePath%>/customer_info">个人中心</a>&nbsp;|&nbsp;
	    		<a href="<%=basePath%>/customer_order">我的订单</a>
	    		<span style="float: right">
					<a href="<%=basePath%>/customer_login" >登录</a>&nbsp;|&nbsp;
	    			<a href="<%=basePath%>/customer_register">注册</a>
	    		</span>
	        </p>
	    </div>
	    <div id="top_search">
			<div id="goods_search">
				<form name="goods_search" action="#" method="post">
					<input class="text" type="text" placeholder="请输入商品关键字"/>
					<button onclick="#">&nbsp;搜索&nbsp;</button>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>