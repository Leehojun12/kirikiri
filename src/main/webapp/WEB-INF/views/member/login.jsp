<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<!-- 네이버 -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
<!-- fontAwessome-->
<script src="https://kit.fontawesome.com/241134516c.js"
	crossorigin="anonymous"></script>

<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
rel="stylesheet">
<!-- sweetAlert -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<style>
/* 눈누 폰트 */
@font-face {
	font-family: 'OTWelcomeRA';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeRA.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: '양진체';
	src:
		url('https://cdn.jsdelivr.net/gh/supernovice-lab/font@0.9/yangjin.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

* {
	box-sizing: border-box;
	font-family: 'OTWelcomeRA';
}

body {
	background-color: #d2e3ec;
}
/* header 반응형 */
@media ( max-width : 768px) {
	#navLogo {
		display: none;
	}
	#myPageIcon {
		display: none;
	}
	#cartIcon {
		display: none;
	}
	#menu {
		display: none;
	}
}

/* header */
.border-bottom {
	background-color: white;
}

#navLogo {
	width: 150px;
	height: 100px;
}

#logoImgs {
	width: 100%;
	height: 100%;
}

@media ( min-width : 768px) {
	#navibar {
		display: none;
	}
}

/* header 반응형 끝 */
#logoImg {
	width: 50%;
}

/* 바디*/
.loginBox {
	width: 1000px;
	height: auto;
	border: 1px solid d2e3ec;
	text-align: center;
	margin: auto;
	background-color: #d2e3ec;
	margin-bottom: 220px;
	margin-top: 70px;
}

#loginForm {
	padding-top: 20px;
	margin-top: 3000px;
	width: 93%;
	max-height:800px;
	height: 100%;
	margin: auto;
	border: 1px solid d2e3ec;
	background-color: white;
}

#loginForm .row, #loginForm .col {
	align-items: center;
}

#loginForm input {
	margin: auto;
	width: 60%;
	margin-bottom: 10px;
	padding: 5px;
}



#loginForm p {
	margin-bottom: 0px;
	color: #656565;
	display: inline;
	width: 12%;
}

#pw {
	font-family: none;
}

#toLoginBtn{
	width: 60%;
}

button {
	margin-bottom: 20px;
	width: 25%;
	height: 80%;
}

span {
	color: #656565;
	font-size: 16px;
}

.search {
	cursor: pointer;
}

h2 {
	margin-top: 30px;
}
#id-regex-span{
	color: red;
	margin-left: 10px;
	font-weight: bold;
}


/* 모달 */
.modal-header {
	display: flex;
	align-items: center;
	text-align: center;
}

#findId_body button, #findPw_body button {
	width: 80%;
	height: 60%;
}

#findPw-emailCheck-btn{
	width: 80%;
	height: 47%;
	margin-top: 18px;
}

.findId-box, .findPw-emailCheck-box {
	display: none;
	margin-bottom: 20px;
}
.findId-box >.col-md-3 , .findId-box >.col-md-5 {
	display: inline-block;
}
.findPw-emailCheck-box >.col-md-3 , .findPw-emailCheck-box >.col-md-5, .findPw-emailCheck-box >.col-md-4  {
	display: inline-block;
}

#authNum, #authNum {
	height: 60%;
}

.social {
	width: 100px;
	height: 100px;
	border-radius: 30px;
	border: 2px dotted #5653ee7c;
	padding: 12px;
	margin: 15px;
	margin-bottom: 30px;
	transition: 1s;
}

.social:hover {
	cursor: pointer;
	padding: 10px;
    transform: translateX(10px) rotate(360deg);
	
}

.social img {
	width: 100%;
	height: 100%;
	border-radius: 20px;
}

.social span {
	margin: auto;
	font-size: 20px;
	color: #030087;
}

/*풋터 영역*/
.footerBox {
	height: 0px;
}

footer.footer {
	padding-top: 2rem;
	padding-bottom: 2rem;
	background-color: white;
}

.footer a {
	text-decoration: none;
	color: black;
	font-weight: 40px;
	font-weight: bold;
}

.footer-imgBox {
	overflow: hidden;
}

.footer-imgBox>img {
	width: 100%;
	height: 100%;
}
</style>
</head>
<script>
    $(document).ready(function(){
    	let authNum;
    	let loginType = "general"
    	
    	$("input").on("keyup",function(key){   
    		if(key.keyCode==13) {  
    			if($("#id").val() == "" || $("#pw").val() == ""){
        			sweetAlertFail("아이디 혹은 비밀번호를 입력해주세요.");
        			return;
        		}else{
        			login(loginType);     
        		}
    		}
    	});
    	
        $("#toLoginBtn").click(function(){
        	if($("#id").val() == "" || $("#pw").val() == ""){
    			sweetAlertFail("아이디 혹은 비밀번호를 입력해주세요.");
    			return;
    		}
        	login(loginType);
        });
        
        $("#id").change(function(){
 		   let idRegex = /^[a-zA-Z0-9+-\_.]+@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
 		   
 		   if(!idRegex.test($("#id").val())){
 			  	$("#id-col").empty();
 				let span = $('<span>').attr('id', 'id-regex-span').css("color","red").html("이메일 형태로 적어주세요.");
 				$("#id-col").append(span);
 				$("#id").focus();
 			   return;
 		   }else{
 			   $("#id-col").empty();
 		   }
 	     });
        	
        $("#btnFindId").click(function(){
        	let phoneRegex = /^01{1}[016789]{1}[0-9]{7,8}$/;
        	
        	if( $("#findId_name").val() == "" || $("#find_phone").val() ==""){
        		sweetAlertFail("아이디 혹은 비밀번호를 입력해주세요.");
        		return; 
        		
        	}else if(!phoneRegex.test($("#find_phone").val())){
        		sweetAlertFail("유효하지 않은 핸드폰 번호입니다.");
        		return;
        		
        	}else{
        		$.ajax({
            		url : "/login/findId"
            		, type : "post"
            		, data : {user_name : $("#findId_name").val() , user_phone : $("#find_phone").val() }
            		, dataType : "text"
            		, success : function(result){
            			console.log(result);
            			if(result !== "nonmem"){
            				sweetAlertSuccess("입력하신 정보의 아이디입니다.");
            				$(".find-box").hide();
            				let span = $('<span>').css("color","black").html(result);
            				$("#findId-col").append(span);
            				$(".findId-box").show();
            				
            			}else{
            				sweetAlertFail("해당 정보로 가입된 아이디가 없습니다.");
            			}
            		}, error : function(e){
            			console.log(e);
            		}
            	})	
        	}
        	
        });
        
        
        $("#btnFindPW").click(function(){
        	let idRegex = /^[a-zA-Z0-9+-\_.]+@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
        	if($("#findPw_name").val() === "" || $("#findPw_email").val() === ""){
 				sweetAlertFail("이름과 이메일을 입력해주세요.");
 				
 				return; 
 				
        	}else if(!idRegex.test($("#findPw_email").val())){
        		sweetAlertFail("이메일 형식으로 입력해주세요");
        		return;
        		
        	}else{
        		$.ajax({
            		url : "/login/findPw"
            		, type : "post"
            		, data : {user_name : $("#findPw_name").val() , user_email : $("#findPw_email").val() }
            		, dataType : "text"
            		, success : function(result){
            			console.log(result);
            			if(result === "exist"){
            				$(".find-box").hide();
            				$(".findPw-emailCheck-box").show();
            				$("#authNum").focus();
            				sweetAlertSuccess("인증번호가 발송되었습니다. 해당 메일을 확인 후 인증번호를 입력해주세요.");
            				
            				$.ajax({
        						url : "/login/emailAuthFindPw"
        						, type : "post"
        						, data : {user_email :  $("#findPw_email").val() }
        						, success : function (data) {
        							authNum = data;
        							
        							
        						}, error : function(e){
        							console.log(e);
        						}			
        					});
            				
            			}else{
            				sweetAlertFail("해당 정보로 가입된 아이디가 없습니다.");
            			}
            		}, error : function(e){
            			console.log(e);
            		}
            	})	
        	}
        });
        
        $("#findPw-emailCheck-btn").click(function(){
        	
        	if($("#authNum").val() === ""){
        		sweetAlertFail("인증번호를 입력해주세요.");
        			
        		return;
        		
        	}else if($("#authNum").val() === authNum){
        		$(".find-box").hide();
				$(".findPw-emailCheck-box").show();
				$("#authNum").focus();
				
				$.ajax({
					url : "/login/tempPw"
					, type : "post"
					, data : {user_email :  $("#findPw_email").val() }
					, success : function (data) {
						if(data){
							$("#staticBackdrop2").modal("hide");
							loginType = "mypage";
							madalClear();
							sweetAlertSuccess("메일로 임시 비밀번호를 발송했습니다. 확인 후 로그인해주세요.");
						}
						
					}, error : function(e){
						console.log(e);
					}			
				});
        	}else{
        		sweetAlertFail("인증번호를 정확하게 입력해주세요.");
        		$("#authNum").val("");
        	}
        });
        
        $(".btn-close").click(function(){
        	madalClear();
        });
        
        

})// 레디 종료
    
 function login(loginType){
    	$.ajax({
    		url : "/login/general"
    		, type : "post"
    		, data : {user_email : $("#id").val() , user_pw : $("#pw").val() }
    		, dataType : "text"
    		, success : function(result){
    			if(result === "general"){
    				Swal.fire({
    					  title: '환영합니다 !',
    					  width: 600,
    					  padding: '3em',
    					  color: '#716add',
    					  background: '#fff url(/images/trees.png)',
    					  backdrop: `
    					    rgba(0,0,123,0.4)
    					    url("/images/nyan-cat.gif")
    					    left top
    					    no-repeat`
    				}); 
    				if(loginType === "general"){
    					location.href = "/";
    					
    				}else if(loginType === "mypage"){
    					location.href = "/mem/myPage";
    				}
    				
    			}else if(result === "loginFail"){
    				sweetAlertFail("아이디 혹은 비밀번호가 맞지 않습니다.");
    				
    			}else if(result === "error"){
    				Swal.fire('소셜 로그인으로 가입되어 있는 아이디입니다.');
    				
    			}else if(result === "nonmem"){
    				sweetAlertFail("가입이 되지 않은 아이디입니다.");
    				
    			}
    			
    		}, error : function(e){
    			console.log(e);
    		}
    	});
    };
    
    function madalClear(){
    	$(".find-box").show();
    	$("#findId_name").val("");
    	$("#find_phone").val("");
    	$(".findId-box").hide();
    	$("#findId-col").empty();
    	
    	$("#findPw_name").val("");
    	$("#findPw_email").val("");
    	$("#authNum").val("");
    	$(".findPw-emailCheck-box").hide();
    };
    
    function sweetAlertFail(content){
    	Swal.fire({
    		 icon: 'error',
    		 title: 'Oops...',
    		 text: content,
    		});  	
    };
    
    function sweetAlertSuccess(content){
    	Swal.fire({
    		  position: 'left-end',
    		  icon: 'success',
    		  title: content,
    		  showConfirmButton: false,
    		  timer: 1500
    		});
    };
    
</script>
<body>
	<!--네비바-->
	<header class="mb-3 border-bottom">
		<div class="container">
			<!-- 접혔을 때 nav -->
			<nav id="navibar" class="navbar navbar-expand-md navbar-light"
				aria-label="Main navigation">
				<div class="container-fluid">
					<div class="row">
						<div class="col-10">
							<a class="navbar-brand mb-2 mb-lg-0" href="#">
								<div class="title-box">
									<img id="logoImg" src="/resources/images/kiri.jpg">
								</div>
							</a>
						</div>
						<!-- toggle button -->
						<div class="col-2 d-flex align-items-center">
							<button class="navbar-toggler" type="button"
								data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
								aria-controls="navbarNavDropdown" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
						</div>
						<!-- 메뉴 -->
						<div class="collapse navbar-collapse justify-content-end"
							id="navbarNavDropdown">
							<ul class="navbar-nav mb-2 mb-lg-0">
								<li class="nav-item"><a class="nav-link" href=" ">자유게시판</a></li>
								<c:choose>
									<c:when test="${empty loginSession}">
										<li class="nav-item"><a class="nav-link" href=" ">로그인</a></li>
										<li class="nav-item"><a class="nav-link" href=" ">회원가입</a></li>
									</c:when>
									<c:otherwise>
										<li class="nav-item"><a class="nav-link" href=" ">마이페이지</a></li>
										<li class="nav-item"><a class="nav-link" href=" ">로그아웃</a></li>
									</c:otherwise>
								</c:choose>
							</ul>
						</div>
					</div>

				</div>
			</nav>

			<!-- 펼쳐졌을 때 nav -->
			<nav id="menu" class="navbar navbar-expand-md w-100 navbar-light"
				aria-label="Main navigation">
				<div class="row w-100 align-items-center">
					<div class="col-5 d-flex justify-content-center">
						<ul class="navbar-nav mb-2 mb-lg-0">
							<li class="nav-item"><a class="nav-link mx-2" href="">자유
									게시판</a></li>
						</ul>
					</div>
					<!-- logo -->
					<div class="col-2">
						<a href="/toHome.home" id="navLogo" class="mb-2 mb-lg-0"> <img
							id="logoImgs" src="/resources/images/kiri.jpg">
						</a>
					</div>
					<div class="col-5">
						<div class="row align-items-center justify-content-center">
							<div class="col-auto">
								<ul class="navbar-nav mb-2 mb-lg-0 me-2">
									<c:if test="${empty loginSession}">
										<li class="nav-item"><a class="nav-link"
											href="/toLogin.mem">로그인</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/toSignUp.mem">회원가입</a></li>
									</c:if>
								</ul>
							</div>

							<div class="col-auto user">
								<c:if test="${not empty loginSession}">
									<div class="dropdown text-end">
										<a href="#"
											class="d-block link-dark text-decoration-none dropdown-toggle"
											id="dropdownUser1" data-bs-toggle="dropdown"
											aria-expanded="false"> <img
											src="/final/images/profile.jpg" alt="mdo" width="32"
											height="32" class="rounded-circle">
										</a>
										<ul class="dropdown-menu text-small"
											aria-labelledby="dropdownUser1">
											<li><a class="dropdown-item" href="#">마이페이지</a></li>
											<li><a class="dropdown-item" href="#">로그아웃</a></li>
										</ul>
									</div>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</header>

	<!--바디-->
	<div class="container loginBox">
		<!-- 로그인영역-->
		<form id="generalLogin" action="/login/general" method="post">
			<div id="loginForm">
				<div class="row">
					<div class="col">
						<img src="/resources/images/kirilogo.png" alt="오류발생">
					</div>
				</div>
				<div class="row">
					<div class="col">
						<h2>
							<Strong>Login</Strong><br> Welcome Back!
						</h2>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<input type="text" id="id" name="id" class="form-control">
					</div>
				</div>
				<div class="row">
		        	<div class="col" id="id-col" >
		        	</div>
		        </div>
				<div class="row">
					<div class="col">
						<input type="password" id="pw" name="pw" class="form-control"
							autocomplete="off">
					</div>
				</div>
				<div class="row m-3">
					<div class="col-12 d-flex justify-content-center">
						<p data-bs-toggle="modal" data-bs-target="#staticBackdrop1"
							class="search">아이디 찾기&emsp;</p>
						<span>/</span>
						<p data-bs-toggle="modal" data-bs-target="#staticBackdrop2"
							class="search">&emsp;비밀번호 찾기</p>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<button type="button" id="toLoginBtn" class="btn btn-primary">로그인</button>
					</div>
				</div>
				<div class="row socialRow justify-content-center align-items-center">
					<a class="social" href="" target="_parent"><img
						class="social-img" src="/resources/images/kakoLogo.JPG"
						alt="오류가 발생했습니다."></a>
					<a class="social" href="${naverUrl}" target="_parent"><img
						class="social-img" src="/resources/images/naverLogo.JPG"
						alt="오류가 발생했습니다."></a>
					<div class="social d-flex align-items-center"
						onclick="location.href='/signup/toSignupAgree'">
						<span>회원가입</span>
					</div>
				</div>
			</div>
		</form>

		<!-- id찾기 -->
		<div class="modal fade" id="staticBackdrop1" data-bs-backdrop="static"
			data-bs-keyboard="false" tabindex="-1"
			aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel">아이디 찾기</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<form id="findIdForm" action="/findIdForm.mem" method="post">
						<div id="findId_body" class="modal-body">
							<div class="row find-box m-2">
								<div
									class="col-md-3 d-flex justify-content-center align-items-center">
									<label for="name" class="form-label">이름</label>
								</div>
								<div class="col-md-9 d-flex justify-content-center">
									<input type="text" class="form-control" placeholder="ex)홍길동"
										name="findId_name" id="findId_name">
								</div>
							</div>
							<div class="row find-box m-2 mt-4">
								<div class="col-md-3 d-flex justify-content-center">
									<label for="phone" class="form-label">전화번호</label>
								</div>
								<div class="col-md-9 d-flex justify-content-center">
									<input type="text" id="find_phone" name="find_phone"
										class="form-control" placeholder="ex)01012341234" maxlength="11">
								</div>
							</div>
							<div class="row find-box btns mt-4">
								<div class="col-md-12 d-flex justify-content-center">
									<button type="button" class="btn btn-primary" id="btnFindId">아이디
										찾기</button>
								</div>
							</div>
							<div class="row findId-box m-2 mt-4">
								<div class="col-md-3">
									<p>가입된 아이디</p>
								</div>
								<div class="col-md-5 " id="findId-col">
									 
								</div>
								<div class="col-md-4 d-flex justify-content-center">
								</div>
							</div>
						</div>

					</form>
					<div id="resultId" class="modal-body" style="display: none;">
						<!-- 가입된아이디 -->
						<div class="row find-box m-2">
							<div class="col-12 d-flex justify-content-center">
								<label for="name" class="form-label">가입된 ID</label>
							</div>
						</div>
						<div id="findId_result"></div>
						<div class="row anchor mt-4">
							<div class="col-12 d-flex justify-content-center">
								<a href="" id="findPw" data-bs-toggle="modal"
									data-bs-target="#staticBackdrop2">비밀번호 찾기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 비밀번호찾기-->
		<div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static"
			data-bs-keyboard="false" tabindex="-1"
			aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel">비밀번호 찾기</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>

					<form id="findPwForm">
						<div id="findPw_body" class="modal-body">
							<!-- 비밀번호찾는곳 -->
							<div class="row find-box m-2">
								<div class="col-3 d-flex justify-content-center">
									<label for="findPw_name" class="form-label">이름</label>
								</div>
								<div class="col-9 d-flex justify-content-center">
									<input type="text" class="form-control" placeholder="ex)홍길동"
										name="findPw_name" id="findPw_name">
								</div>
							</div>
							<div class="row find-box m-2 mt-4">
								<div class="col-3 d-flex justify-content-center">
									<label for="findPw_email" class="form-label">이메일</label>
								</div>
								<div class="col-9 d-flex justify-content-center">
									<input type="email" class="form-control" name="findPw_email"
										id="findPw_email" placeholder="ex)abc@gmail.com">
								</div>
							</div>
							<div class="row find-box mt-4">
								<div class="col-12 d-flex justify-content-center">
									<button type="button" class="btn btn-primary" id="btnFindPW">
										비밀번호찾기
									</button>
								</div>
							</div>
						</div>
						<div class="row findPw-emailCheck-box m-2 justify-content-center">
							<div class="col-md-3">
								<label for="email" class="form-label">이메일 인증</label>
							</div>
							<div class="col-md-4">
								<input type="text" id="authNum"
									name="authNum" class="form-control">
							</div>
							<div class="col-md-4">
								<button type="button" class="btn btn-primary"
									id="findPw-emailCheck-btn">인증번호 입력</button>
							</div>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>

<footer class="footer mt-5">
	<div class="row">
		<div class="col-lg-3 footer-imgBox">
			<img src="/resources/images/kirilogo.png" alt="오류가 발생했습니다.">
		</div>
		<div class="col-lg-6 h-100 text-center text-lg-start my-auto">
			<ul class="list-inline mb-2">
				<li class="list-inline-item"><a href="#!">공지사항</a></li>
				<li class="list-inline-item">⋅</li>
				<c:choose>
					<c:when test="${not empty loginSession}">
						<li class="list-inline-item"><a href="member/toMyPage">마이페이지</a></li>
						<li class="list-inline-item">⋅</li>
						<li class="list-inline-item"><a href="/login/toLogout">로그아웃</a></li>
					</c:when>
					<c:otherwise>
						<li class="list-inline-item"><a href="/signup/toSignupAgree">회원가입</a></li>
						<li class="list-inline-item">⋅</li>
						<li class="list-inline-item"><a href="/login/toLogin">로그인</a></li>
					</c:otherwise>
				</c:choose>
				<li class="list-inline-item">⋅</li>
				<li class="list-inline-item">
					<c:choose>
						<c:when test="${not empty loginSession}">
							<a href="/group/toCreateGroup">모임 만들기</a>
						</c:when>
						<c:otherwise>
							<a href="/login/toLogin">모임 만들기</a>
						</c:otherwise>
					</c:choose>
				</li>
				<li class="list-inline-item">⋅</li>
				<li class="list-inline-item"><a href="privacy"
					style="color: red; font-weight: bold;">개인정보처리방침</a></li>
			</ul>
			<p class="text-muted small mb-4 mb-lg-0">끼리끼리(주) 대표 : 이호준 |
				개인정보관리책임자 : 김영완 | 사업자등록번호 : 22-02-22</p>
			<p class="text-muted small mb-4 mb-lg-0">주소 : 서울특별시 영등포구 선유동2로
				57 이레빌딩</p>
			<p class="text-muted small mb-4 mb-lg-0">&copy; Your Website
				2022. All Rights Reserved.</p>
		</div>
		<div class="col-lg-3 h-100 text-center text-lg-end my-auto">
			<ul class="list-inline mb-0">
				<li class="list-inline-item me-4"><a
					href="https://ko-kr.facebook.com"><i class="bi-facebook fs-3"></i></a></li>
				<li class="list-inline-item me-4"><a
					href="https://twitter.com/?lang=ko"><i
						class="bi-twitter fs-3"></i></a></li>
				<li class="list-inline-item"><a
					href="https://www.instagram.com/"><i
						class="bi-instagram fs-3"></i></a></li>
			</ul>
		</div>
	</div>
</footer>
</body>
</html>