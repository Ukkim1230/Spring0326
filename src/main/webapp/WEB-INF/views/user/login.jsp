<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GameZone Login</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
<!-- JS는 script 태그로 -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
<style>
body{
	background-color: #19123B;
}
.card{
	border: none;
	border-top: 5px solid  rgb(176,106,252);
	background: #212042;
	color: #57557A;
}
p{
	font-weight: 600;
	font-size: 15px;
}
.fab{
	display: flex;
	justify-content: center;
	align-items: center;
	border: none;
	background: #2A284D;
	height: 40px;
	width: 90px;
}
.fab:hover{
	cursor: pointer;
}
.fa-twitter{
	color: #56ABEC;
}
.fa-facebook{
	color: #1775F1;
}
.fa-google{
	color: #CB5048;
}
.division{
	float: none;
	position: relative;
	margin: 30px auto 20px;
	text-align: center;
	width: 100%;
	box-sizing: border-box;
}
.division .line{
	border-top: 1.5px solid #57557A;;
	position: absolute;
	top: 13px;
	width: 85%;
}
.line.l{
	left: 52px;
}
.line.r{
	right: 45px;

}
.division span{
	font-weight: 600;
	font-size: 14px;
}
.myform{
	padding: 0 25px 0 33px;
}
.form-control{
	border: 1px solid #57557A;
	border-radius: 3px;
	background: #212042;
	margin-bottom: 20px;
	letter-spacing: 1px;
	
}
.form-control:focus{
	border: 1px solid #57557A;
	border-radius: 3px;
	box-shadow: none;
	background: #212042;
	color: #fff;
	letter-spacing: 1px;
}
.bn{
	text-decoration: underline;
}
.bn:hover{
	cursor: pointer;
}
.form-check-input {
    margin-top: 8px!important;
    }
.btn-primary{
background: linear-gradient(135deg, rgba(176,106,252,1) 39%,rgba(116,17,255,1) 101%);
border: none;
border-radius: 50px;
}
.btn-primary:focus{
	box-shadow: none;
	border: none;
}
small{
	color: #F2CEFF;
}
.far.fa-user{
	font-size: 13px;
}

@media(min-width: 767px){
	.bn{
		text-align: right;
	}
}
@media(max-width: 767px){
	.form-check{
		text-align: center;
	}
	.bn{
		text-align: center;
		align-items: center;
	}
}
@media(max-width: 450px){
	.fab{
		width: 100%;
		height: 100%;
	}
	.division .line{
		width: 50%;
	}
}
</style>

</head>
<body>
<div class="container">
<form method="POST" action="/user/login" onsubmit="return validation()">
	<div class="row d-flex justify-content-center mt-5">
		<div class="col-12 col-md-8 col-lg-6 col-xl-5">
			<div class="card py-3 px-2">
				<p class="text-center mb-3 mt-2">SE CONNECTER AVEC</p>
				<div class="row mx-auto ">
					<div class="col-4">
						<i class="fab fa-twitter"></i>
					</div>
					<div class="col-4">
						<i class="fab fa-facebook"></i>
					</div>
					<div class="col-4">
						<i class="fab fa-google"></i>
					</div>
				</div>
				<div class="division">
					<div class="row">
						<div class="col-3"><div class="line l"></div></div>
						<div class="col-6"><span>Login</span></div>
						<div class="col-3"><div class="line r"></div></div>
					</div>
				</div>
				<form class="myform">
					<div class="form-group">
    					<input type="text" class="form-control" id="uiId" name="uiId" placeholder="아이디">
  					</div>
 					<div class="form-group">
    					<input type="password" class="form-control" id="uiPwd" name="uiPwd" placeholder="비밀번호">
  					</div>
  					<div class="row">
  						<div class="col-md-6 col-12">
  							<div class="form-group form-check">
    							<input type="checkbox" class="form-check-input" id="exampleCheck1" value="remember-me">
    							<label class="form-check-label" for="exampleCheck1">아이디 기억하기</label>
  							</div>
  						</div>
  						<div class="col-md-6 col-12 bn"><a href="/views/user/join" class="text-light">회원가입</a></div>
  					</div>
  					<div class="form-group mt-3">
  						<button type="button" class="btn btn-block btn-primary btn-lg"><small><i class="far fa-user pr-2"></i>로그인</small></button>
  					</div>
				</form>
			</div>
		</div>
	</div>
	</form>
</div>
</body>
</html>