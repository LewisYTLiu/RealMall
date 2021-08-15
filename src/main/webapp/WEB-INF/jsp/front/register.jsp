<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

html,body{
	width: 100%;
	height: 100%;
	background-color:#F0FFF0; 
}

#container{
	width:100%; 
	height:100%;
}

#content{
	
	margin: auto;
	width:30%;
	
}

.login{
	margin-top:20%;
}

.register{
	margin-top:20%;
}

h3{
	text-align: center;
	height: 20px;
	font: 20px "microsoft yahei",Helvetica,Tahoma,Arial,"Microsoft jhengHei",sans-serif;
	line-height: 20px;
	padding:0 0 35px 0; 
}

.input_outer{
	height: 46px;
	padding: 0 5px;
	margin-bottom: 30px;
	border-radius: 50px;
	position: relative;
	border: rgba(0,0,0,0.2) 2px solid !important;
	background-color: white;
}

.submit{
	height: 46px;
	padding: 0 5px;
	margin-bottom: 30px;
	border-radius: 50px;
	position: relative;
	border: rgba(0,0,0,0.2) 2px solid !important;
	background-color: blue;
	
}

.links{
	height: 46px;
	padding: 0 5px;
	margin-bottom: 30px;
	position: relative;
}

a {
	text-decoration:none;
}

p {
	margin-left: 20px;
	float: bottom;
	color: red;
	font: 10px;
}

.text{
	width: 300px;
	height: 46px;
	outline: none;
	display: inline-block;
	font: 14px;
	margin-left: 30px;
	border: none;
	
	line-height: 46px;
	color: #000000 !important
}

input[type=submit] {
	width: 220px;
	height: 46px;
	outline: none;
	display: inline-block;
	font-size: 20px;
	margin-left: 80px;
	border: none;
	background: none;
	line-height: 60px;
	color: #000000 !important
}

*{ font-family:"microsoft yahei",Helvetica,Tahoma,Arial,"Microsoft jhengHei"; font-size:14px; padding:0; margin:0;}
</style>
<script>
    function validate_thisform(){
        
        	document.getElementById("username_error").innerHTML = null;
			document.getElementById("password_error").innerHTML = null;
			document.getElementById("password2_error").innerHTML = null;
			if (validate_required(register_name, "用户名不能为空!")==false){
				register_name.focus();
				return false;
			}
			else if (validate_required(register_passwd, "密码不能为空!")==false){
				register_passwd.focus();
				return false;
			}
			else if (validate_required(register_passwd2, "密码不能为空!")==false){
				register_passwd2.focus();
				return false;
			}
			return checkUsername() && checkPassword();
				
  		
    };

	function validate_required(field,alerttxt)
	{
		with (field){
		    if (value==null||value==""){
				alert(alerttxt);
				return false;
			}
		    else return true;
		}
	}
    
    function checkUsername(){
        var username = document.getElementById("register_name").value;
        var reg_username = /^\w{6,12}$/;
        var flag = reg_username.test(username);
        var s_username = document.getElementById("username_error");
        if(!flag){
            s_username.innerHTML = "长度必须在6-12位";
        }
        return flag;
    }
    
    function checkPassword(){
        var password = document.getElementById("register_passwd").value;
        var reg_password = /^\w{6,12}$/;
        var flag = reg_password.test(password);
        var s_password = document.getElementById("password_error");
        if(!flag){
            s_password.innerHTML = "长度必须在6-12位";
            return false;
        }
        var password2 = document.getElementById("register_passwd2").value;
        flag = (password == password2);  //compile error here, "==" rather than "eq"
        var s_password2 = document.getElementById("password2_error");
        if(!flag){
            s_password2.innerHTML = "两次输入的密码不一致";
            return false;
        }
        return flag;
    }
</script>


</head>
<body>
<%
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + request.getContextPath();
%>
<div id="container">
	<div id="content">
		<div class="register">
			<h3>欢迎您，顾客</h3>
			<form action="${pageContext.request.contextPath}/customer/register" onsubmit="return validate_thisform()" name="register_form" method="post">
				<div class="input_outer">
					<input id="register_name" name="register_name" class="text" type="text" placeholder="请输入账号"/>
					<p id="username_error"></p>
					
				</div>
				<div class="input_outer">
					<input id="register_passwd" name="register_passwd" class="text" type="password" placeholder="请输入密码"/>
					<p id="password_error"></p>
				</div>
				<div class="input_outer">
					<input id="register_passwd2" name="register_passwd2" class="text" type="password" placeholder="请再次输入密码确认"/>
					<p id="password2_error"></p>
				</div>
				<div class="submit">
					<input type="submit" value="注册"/>
				</div>
				<div class="links">
					<a href="<%=basePath%>/index">商城首页</a>
					<a href="<%=basePath%>/customer_login" style="float: right">已有账号，去登录</a>
					
				</div>
			</form>	
		</div>
	</div>
</div>
<script>
var result = '${result}';
if (result.indexOf("username") != -1) {
	document.getElementById("username_error").innerHTML = "用户已存在";
}

</script>
</body>
</html>