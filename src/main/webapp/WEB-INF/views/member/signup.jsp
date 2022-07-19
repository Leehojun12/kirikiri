<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
 <!-- fontAwessome-->
<script src="https://kit.fontawesome.com/241134516c.js" crossorigin="anonymous"></script>
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet">
<style>
/* 눈누 폰트 */
@font-face {
    font-family: 'OTWelcomeRA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeRA.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: '양진체';
    src: url('https://cdn.jsdelivr.net/gh/supernovice-lab/font@0.9/yangjin.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
*{box-sizing: border-box;   font-family: 'OTWelcomeRA';}
body{
    background-color: #d2e3ec;
}
 /* header 반응형 */
 @media (max-width : 768px) {
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
.border-bottom{
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

@media (min-width : 768px) {
    #navibar {
        display: none;
    }
}

/* header 반응형 끝 */

#logoImg {
    width: 50%;
}

/* 바디*/
.signupBox{
    margin-top: 100px;
    width: 1000px;
    height: auto;
    border: 1px solid d2e3ec;
    text-align: center;
    margin: auto;
    background-color: #d2e3ec;
}
#userInfoBox{
    padding-top: 3px;
    margin-top: 100px;
    width: 100%;
    margin: auto;
    border: 1px solid d2e3ec;
    background-color: white;
    vertical-align: middle;
}

#userInfoBox > .row{
	margin-top: 10px;
}


#userInfoBox i {
	font-size:30px;
	margin-top: 2px;
	display: inline-block;
}
.bi-arrow-up-square-fill{
	margin:auto;
}

#userInfoBox > .row:first-child > img{
    margin-top: 20px;
}
#userInfoBox > .row:last-child{
    padding-bottom: 40px;
}

#userInfoBox-profile{
    padding-top: 10px;
    width: 93%;
    margin: auto;
    border: 1px solid d2e3ec;
    background-color: white;
    display: none;
}

#user_intro{
    height: 100%;
    width: 100%;
    resize: none;
}
#p_img{
    width: 150px;
    height: 150px;
}
#user_image{
    margin: auto;
    margin-bottom: 30px;
    width: 60%;
    border:1px solid black;
    display: none;
}

#profileSetting:hover{
	cursor: pointer;
}

.profile_imgContainer{
    width: 150px;
    height: 150px;
    border: 1px solid lightblue;
    border-radius: 50%;
    text-align: center;
    overflow: hidden;
    margin: auto;
}
#introMessage{
    height: 100%;
    width: 100%;
    display: inline;
}
.col-3{
    display: inline;
}
.form-control{
    width: 98%;
}
.hobby{
    width: 7%;
    height: 40%;
}

.circleLine:only-child{
    display: inline-block;
}
.circle{
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background-color: white;
}

.circleLine > div[class*=col]{
  margin: 0;
  padding: 0;
  display: flex;
  align-items: center;
  justify-content: center;
}
.circleLine > div[class*=col] > span{
  color: black;
  font-size: 20px;
}
.circleLine-line{
  height: 10%;
  width: 100%;
  background-color: white;
}
.circleLine-text{
    margin: auto; 
    text-align: center;
    margin-bottom: 70px;
    margin-top: 10px;
}
.circleLine-text span{
    font-size: 17px;
}
input{
    margin:  5px;
}
#user_intro_cnt{
	text-align : right;
	margin-top: 5px;
}

/* 회원단계 1*/
#signup-1{
    color: #030087;
    text-shadow: 1px 1px 2px darkblue;
}
.circelLine-text-left{
    color: #030087;
    text-shadow: 1px 2px 2px darkblue;
}

.circelLine-text-right{
    margin-left: 15px;
}

#nicknameCheck, #idCheck, #certificationBtn, #checkPhone {
    width: 80%;
    margin: 0px;
    padding: 0px;
    height: 90%;
}

#emailCheck{
	width: 80%;
    margin: 0px;
    padding: 0px;
    height: 100%;
    margin-top: 5px;
}

.user_gender{
    margin-bottom: 30px;
}

.email-domain-row{
	display:none;
}

#email-id{
	width: 87%;
	display: inline;
}

#email-domain-select{
    display: inline;
    width: 83%;
    padding-left: 0px;
    margin: 5px;
    margin-left: 12px; 
}
#email-domain{
	width: 100%;
	padding-left: 0px;
	display: inline-block;
	margin:5px; 
	margin-top : 0px;
	margin-left: 12px; 
}

#email-btn {
	display: block;
}

#emailCheckBox{
    display: none;
}

#emailCheckBox input{
    width: 100%;
}


#phone2,#phone3,#phone1{
    margin-left: 5px;
    display: inline;
    width: 30%;
}
#singupBackBtn, #completeBtn{
    display: none;
}
.checkBox .col:last-child{
    text-align: left;
}
.checkBox p {
    margin-top: 30px;
}
.checkBox .col-9:last-child{
    margin-bottom: 40px;
}

.bthday{
    display: inline-block;
    text-align: left;
    width: 20%;
}

#password-regex-span, #password-check-span ,#name-check-span, #nickname-regex-span{
	color: red;
	margin-left: 10px;
	font-weight: bold;
}

.text-align-left-col{
	text-align: left;
	margin: auto;
}
.condition{
	color: black;
	font-size: 0.050rem;
	margin-left: 10px;
}
#user_pw, #pwCheck{
	font-family: none;
}

/*공통 요소*/
h1{
    margin-top: 30px;
}

p{
    margin-top: 10px;
}
label{
    margin: 5px;
}
button{
    margin: 30px;
    margin-bottom: 70px;
    width: 14%;
    height: 30%;
}

span{
    color: white;
    font-size: 0.05rem;
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
.footer-imgBox{
    overflow: hidden;
}
.footer-imgBox > img{
    width: 100%;
    height: 100%;
}
</style>
</head>
<script>
   $(document).ready(function(){
	   let code ; 
	   let auth ;
	   let nicknameConfirm;
	   let phoneConfirm;
	   
       $("#singupBackBtn").click(function(){ // 뒤로가기 
           back();
      
       });
       
       $('#email-domain-select').change(function () { //이메일 셀렉트
              let state = "";
              state = $('#email-domain-select option:selected').val();
              $('#email-domain').val(state);
              if (state == 99) {
                $('.email-domain-row').show();
                $('#email-domain').val("");
              } else {
                $('.email-domain-row').hide();
              }
        });
       
		$("#emailCheck").click(function(){ //이메일 중복체크
   	   
   	  		 let emailRegex = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;    
      		 if($("#email-domain").val() === "1"){
      			 alert("도메인을 선택 혹은 입력해주세요.");
      			 return;
      		
      		 }else if(!emailRegex.test($("#email-domain").val())){
       	 		 alert("올바르지 않은 이메일 형식입니다.");
	       	 	 return;
	       	 	 
	      	 }else{
	      		 
		      	  let user_email = $("#email-id").val()+"@"+$("#email-domain").val();
		      	  
	       	  	  $.ajax({
	        		url : "/signup/emailCheck"
	        		, type : "post"
	        		, data : {user_email : user_email }
	        		, dataType : "text"
	        		, success : function(result){
	        			if(result === "impossibility"){
	        				alert("사용 중인 이메일입니다.");
	        				$("#eamail-id").focus();
	        				
	        			}else if(result === "possibility"){
	        				let answer = confirm("사용 가능한 이메일입니다. 해당 이메일로 인증하시겠습니까?");
	        				
	        				if(answer){
	        					alert('인증번호가 전송되었습니다.');
	        					$("#emailCheckBox").show();
	        					
	        					$.ajax({
	        						url : "/signup/emailAuth"
	        						, type : "post"
	        						, data : {user_email : user_email }
	        						, success : function (data) {
	        							code = data;
	        							$("#authNum").focus();
	        							
	        						}, error : function(e){
	        							console.log(e);
	        						}			
	        					});
	        					
	        				}else{
	        					return;
	        				}
	        			}
	        	
	        		}, error : function(e){
	        			console.log(e);
	        		}
	        	})
      	   }
   	   
   	   });
		
		$("#certificationBtn").click(function(){
			if($("#authNum").val() === code){
				alert("인증에 성공하였습니다!");
				$("#email-id").attr('readonly',true);
				$("#email-domain").attr('readonly',true);
				$('#email-domain-select').attr('disabled',true);
				auth = "comfirm";
				return;
				
			}else{
				alert("인증 번호가 다릅니다. 다시 입력해주세요.");
				$("#authNum").focus();
				return;
			}
			
		});
		
		$("#email_id").change(function(){
			auth = "deny";
		});
		
		$("#user_nickname").change(function(){
			nicknameConfirm = "deny";
		});
		
		$("#user_nickname").change(function(){
			$("#nickname-col").empty();
			let nicknameRegex = /^[0-9a-zA-Z가-힣]{2,12}$/;   
			
			if(!nicknameRegex.test($("#user_nickname").val())){
				invalidNickname();
	       	 	return;
			}
		});
	   
		$("#nicknameCheck").click(function(){ //이메일 중복체크
  	  		 let nicknameRegex = /^[0-9a-zA-Z가-힣]{2,12}$/;    
     
  	  		 if(!nicknameRegex.test($("#user_nickname").val())){
      	 		 alert("올바르지 않은 닉네임 형식입니다.");
      	 		 $("#nicknameCheck").focus();
	       	 	 return;
	       	 	 
	      	 }else{
		      	  let user_nickname = $("#user_nickname").val();
		      	  
	       	  	  $.ajax({
	        		url : "/signup/nicknameCheck"
	        		, type : "post"
	        		, data : {user_nickname : user_nickname }
	        		, dataType : "text"
	        		, success : function(result){
	        			console.log(result);
	        			if(result === "impossibility"){
	        				alert("사용 중인 닉네임입니다.");
	        				$("#user_nickname").focus();
	        				
	        			}else if(result === "possibility"){
	        				alert("사용 가능한 닉네임입니다.");
	        				nicknameConfirm = "confirm";
	        			}
	        	
	        		}, error : function(e){
	        			console.log(e);
	        		}
	        	})
     	   }
  	   });
		
	   $("#user_name").change(function(){
		   let nameRegex = /^[가-힣]+$/;
		   
		   if(!nameRegex.test($("#user_name").val())){
			   invalidName();
			   return;
		   }else{
			   $("#name-col").empty();
		   }

	   });
		
       $("#email-btn").click(function(){ //이메일 직접입력 취소
    	   $(".email-domain-row").hide();
    	   $("#email-domain").val("");
       });
       
       $("#user_pw").change(function(){ //비밀번호
    	   let passwordRegex = /^[a-z0-9!@#$]{8,20}$/
    	   
    	   if(!passwordRegex.test($("#user_pw").val())){
    		   invalidPw();
    		   return;
    	   }else if($("#email-id").val() === $("#user_pw").val()){
    		   idEqPw();
    		   return;
    	   }else{
    		   validPw();
    	   }
       });
       
       $("#pwCheck").change(function(){ //비밀번호확인
    	   if($("#user_pw").val() != $("#pwCheck").val()){
    		   checkPw();
    	   }else{
    		   $("#check-col").empty();
    	   }
       
       });
       
       
       $("#checkPhone").click(function(){ //이메일 중복체크
    	   let phoneRegex = /^01{1}[016789]{1}[0-9]{7,8}$/;
    	   let phone = $("#phone1 option:selected").val() + $("#phone2").val() + $("#phone3").val();
   
	  		 if(!phoneRegex.test(phone)){
    	 		 alert("올바르지 않은 전화번호 형식입니다.");
	       	 	 return;
	       	 	 
	      	 }else{
		      	  
	       	  	  $.ajax({
	        		url : "/signup/phoneCheck"
	        		, type : "post"
	        		, data : {user_phone : phone }
	        		, dataType : "text"
	        		, success : function(result){
	        			console.log(result);
	        			if(result === "impossibility"){
	        				alert("사용 중인 전화번호입니다.");
	        				
	        			}else if(result === "possibility"){
	        				alert("사용 가능한 전화번호 입니다.");
	        				$('#phone1').attr('disabled',true);
	        				$("#phone2").attr('readonly',true);
	        				$("#phone3").attr('readonly',true);
	        				phoneConfirm = "confirm";
	        			}
	        	
	        		}, error : function(e){
	        			console.log(e);
	        		}
	        	})
   	   }
	   });
       
       
       $("#nextBtn").click(function(){ //다음으로
    	   let nameRegex = /^[가-힣]+$/;
       	   
      	   let bdRegex = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
		   let bd = $("#year").val() + $("#month").val() + $("#day").val();
		   
		   let phoneRegex = /^01{1}[016789]{1}[0-9]{7,8}$/;
		   let phone =  $("#phone1 option:selected").val() + $("#phone2").val() + $("#phone3").val(); 
		   
		   let emailRegex = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;   
	       	 	 
           if(!nameRegex.test($("#user_name").val())){
        	   alert("올바르지 않은 이름입니다.");
        	   $("#user_name").focus();
        	   return;   
           
           }else if(!emailRegex.test($("#email-domain").val())){
      	 	   alert("올바르지 않은 이메일 형식입니다.");
      	 	   $("#email-domain").focus();
 	       	   return;   
 	       	auth = comfirm;
           }else if(auth !== "comfirm"){
      	 	   alert("이메일 인증을 완료해주세요.");
      	 	   $("#email_id").focus();
 	       	   return;   
 	       	
           }else if($("#user_pw").val() === "" || $("#pwCheck").val() === ""){
        	   alert("비밀번호를 입력해주세요.");
           	   return;
           	   
           }else if($("#email-id").val() === $("#user_pw").val()){
    		   alert("아이디와 비밀번호를 다르게 설정해주세요.");
    		   return;
        	   
           }else if($("#user_pw").val() != $("#pwCheck").val()){
        	   alert("비밀번호가 다릅니다.");
        	   $("#pwCheck").focus();
        	   return;
        	   
           }else if(nicknameConfirm !== "confirm"){
        	   alert("닉네임 중복확인을 해주세요.");
        	   $("#user_nickname").focus();
        	   return;
        	   
           }else if($("#month").val() + $("#day").val() === "0230" || $("#month").val() + $("#day").val() === "0231"){
        	   alert("생일을 정확하게 입력해주세요.");
        	   $("#day").focus();
        	   return;
        	   
           }else if(!bdRegex.test(bd)){
        	   alert("생일을 정확하게 입력해주세요.");
        	   return;
        	   
           }else if(phoneConfirm !== "confirm"){
        	   alert("핸드폰 중복확인을 해주세요.");
        	   return;
        	   
           }else if(!$('input:radio[name="user_gender"]').is(":checked")){
        	   alert("성별을 선택해주세요.");
        	   return;
        	   
           }else{
        	   next();
           }
       });
       
       // 뒷 페이지
       
       $("#profileSetting").click(function(){ //프로필사진
    	   $("#user_image").show();
       });	
       
       $("#user_image").change(function(){
    	   let result = checkFile(this);
    	   console.log(result);
    	   if(result){
    		   let reader = new FileReader();
        	   reader.readAsDataURL(this.files[0])
        	   
        	   reader.onload = function(e){
        		   $("#p_img").attr("src", e.target.result);
        	   }
    	   }
       });
       
       $('#user_intro').on('change', function() {  // 자기소개
           $('#user_intro_cnt').html("("+$(this).val().length+" / 500)");
           const top = $('#user_intro').prop('scrollHeight');
           $('#user_intro').scrollTop(top);
           
           if($(this).val().length > 500) {
               $(this).val($(this).val().substring(0, 500));
               $('#user_intro_cnt').html("(500 / 500)");
           }
       });
       
       $('input:checkbox[name="hobby"]').click(function(){
    	   let hobbyCnt = $('input:checkbox[name="hobby"]:checked').length; 
    	  
    	   if(hobbyCnt>3){
    	    alert('취미는 최대 3개까지 선택이 가능합니다.');
    	    $(this).prop('checked', false);
    	   }
    	});
       
	   $('input:checkbox[name="area"]').click(function(){
    	   let areaCnt = $('input:checkbox[name="area"]:checked').length;  
    	  
    	   if(areaCnt>3){
    	    alert('관심지역은 최대 3개까지 선택이 가능합니다.');
    	    $(this).prop('checked', false);
    	   }
    	});
       
	   $("#completeBtn").click(function(){
		  if(!$('input:radio[name="user_job"]').is(':checked')){
		   	  alert("직업을 선택해주세요.");
		   	  return;
			  
	      }else if($('input:checkbox[name="hobby"]:checked').length == 0){
		      alert("취미는 적어도 1개는 선택해주세요.");
		      return;
				
		  }else if($('input:checkbox[name="area"]:checked').length == 0){
			  alert("관심 지역은 적어도 1개는 선택해주세요.");
			  return;
		  }
		  $("#user_bd").val($("#year").val() + $("#month").val() + $("#day").val());
		  $("#user_phone").val($("#phone1 option:selected").val() + $("#phone2").val() + $("#phone3").val());
		  $("#user_email").val($("#email-id").val()+"@"+$("#email-domain").val());
		  $("#signupForm").submit();
		  
	   });

   })
function back(){ //뒤로가기
 	$("#signup-1").css("text-shadow","1px 2px 2px darkblue");
    $(".circelLine-text-left").css({"color":"#030087","text-shadow":"1px 2px 2px darkblue"});
    $("#signup-2").css("text-shadow","none");
    $("#circelLine-text-middle").css({"color":"white","text-shadow":"none"});
    $("#backPageBtn").show();
    $("#nextBtn").show();
    $("#userInfoBox").show();
    $("#userInfoBox-profile").hide();
    $("#singupBackBtn").hide();
    $("#completeBtn").hide();
}
function next(){ //다음페이지
	$("#signup-1").css("text-shadow","none");
    $(".circelLine-text-left").css({"color":"white","text-shadow":"none"});
    $("#signup-2").css("text-shadow","1px 2px 2px darkblue");
    $("#circelLine-text-middle").css({"color":"#030087","text-shadow":"1px 2px 2px darkblue"});
    $("#backPageBtn").hide();
    $("#nextBtn").hide();
    $("#userInfoBox").hide();
    $("#userInfoBox-profile").show();
    $("#singupBackBtn").show();
    $("#completeBtn").show();
} 

function invalidName(){
	$("#name-col").empty();
	let span = $('<span>').attr('id', 'name-check-span').css("color","red").html("올바르지 않은 이름입니다.");
	$("#name-col").append(span);
	$("#user_name").focus();
}

function validPw(){
	$("#regex-col").empty();
    let span = $('<span>').attr('id', 'password-regex-span').css("color","green").html("사용가능한 비밀번호 입니다.");
    $("#regex-col").append(span);
    $("#user_pw").focus();
}

function invalidPw(){
	$("#regex-col").empty();
    let span = $('<span>').attr('id', 'password-regex-span').css("color","red").html("올바르지 않은 비밀번호 형식입니다.");
    $("#regex-col").append(span);
}

function idEqPw(){
	$("#regex-col").empty();
    let span = $('<span>').attr('id', 'password-regex-span').css("color","red").html("아이디와 비밀번호를 다르게 설정해주세요.");
    $("#regex-col").append(span);
}

function checkPw(){
	$("#check-col").empty();
    let span = $('<span>').attr('id', 'password-check-span').css("color","red").html("비밀번호가 다릅니다.");
    $("#check-col").append(span);
    $("#checkPw").focus();
}

function invalidNickname(){
	$("#nickname-col").empty();
    let span = $('<span>').attr('id', 'nickname-regex-span').css("color","red").html("올바르지 않은 아이디 형식입니다.");
    $("#nickname-col").append(span);
    $("#user_nickname").focus();
}

function validNickname(){
	$("#nickname-col").empty();
    let span = $('<span>').attr('id', 'nickname-regex-span').css("color","green").html("사용 가능한 닉네임입니다.");
    $("#nickname-col").append(span);
    $("#user_nickname").focus();
}

function checkFile(obj) {
	 let fileKind = obj.value.lastIndexOf('.');
	 let fileName = obj.value.substring(fileKind+1,obj.length);
	 let fileType = fileName.toLowerCase();
     
	 if(fileType == "jpg" || fileType == "gif" || fileType == "png" || fileType == "jpeg" || fileType == "bmp"){
		 return true;
	 }else{
		 alert("이미지 파일만 선택할 수 있습니다.");
		 let parentObj = obj.parentNode;
		 let node = parentObj.replaceChild(obj.cloneNode(true),obj);
		 $("#user_image").val("");
		 $("#p_img").attr("src", "/resources/images/profile.jpg");
		 return false;
	 }
	 
	 if(fileType == "bmp"){
		 answer = confirm("BMP 파일은 웹상에서 사용하기엔 적절한 이미지 형식이 아닙니다. /n 사용하시겠습니까?");
		 if(!answer)return false;
	 }
	}

</script>
<body>
<!--네비바-->
  <header class="mb-3 border-bottom">
      <div class="container">
          <!-- 접혔을 때 nav -->
          <nav id="navibar" class="navbar navbar-expand-md navbar-light" aria-label="Main navigation">
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
                          <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                              data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
                              aria-expanded="false" aria-label="Toggle navigation">
                              <span class="navbar-toggler-icon"></span>
                          </button>
                      </div>
                      <!-- 메뉴 -->
                      <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                          <ul class="navbar-nav mb-2 mb-lg-0">
                              <li class="nav-item"><a class="nav-link" href=" ">자유게시판</a></li>
                              <c:choose>
                                  <c:when test="${empty loginSession}">
                                      <li class="nav-item"><a class="nav-link" href="/login/toLogin">로그인</a></li>
                                      <li class="nav-item"><a class="nav-link" href=" ">회원가입</a></li>
                                  </c:when>
                                  <c:otherwise>
                                      <li class="nav-item"><a class="nav-link" href=" ">마이페이지</a></li>
                                      <li class="nav-item"><a class="nav-link" href="/login/toLogout">로그아웃</a></li>
                                  </c:otherwise>
                              </c:choose>


                          </ul>

                      </div>
                  </div>

              </div>
          </nav>

          <!-- 펼쳐졌을 때 nav -->
          <nav id="menu" class="navbar navbar-expand-md w-100 navbar-light" aria-label="Main navigation">
              <div class="row w-100 align-items-center">
                  <div class="col-5 d-flex justify-content-center">
                      <ul class="navbar-nav mb-2 mb-lg-0">
                          <li class="nav-item"><a class="nav-link mx-2" href="">자유 게시판</a></li>
                      </ul>
                  </div>
                  <!-- logo -->
                  <div class="col-2">
                      <a href="/toHome.home" id="navLogo" class="mb-2 mb-lg-0">
                          <img id="logoImgs" src="/resources/images/kiri.jpg">

                      </a>
                  </div>
                  <div class="col-5">
                      <div class="row align-items-center justify-content-center">
                          <div class="col-auto">
                              <ul class="navbar-nav mb-2 mb-lg-0 me-2">
                                  <c:if test="${empty loginSession}">
                                      <li class="nav-item"><a class="nav-link" href="/toLogin.mem">로그인</a></li>
                                      <li class="nav-item"><a class="nav-link" href="/toSignUp.mem">회원가입</a></li>
                                  </c:if>
                              </ul>
                          </div>

                          <div class="col-auto user">
                              <c:if test="${not empty loginSession}">
                                  <div class="dropdown text-end">
                                      <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle"
                                          id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                                          <img src="/final/images/profile.jpg" alt="mdo" width="32" height="32"
                                              class="rounded-circle">
                                      </a>
                                      <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1">
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

<form id="signupForm" action="/signup/signup" method="post" enctype="multipart/form-data">
<div class="container signupBox">
    <div class="row">
        <div class="col"><h1>회원 가입</h1></div>
    </div>
    <div class="row circleLine justify-content-center">
        <div class="col-1 circle">
          <span id="signup-1">1</span>
        </div>
        <div class="col-3">
          <div class="circleLine-line"></div>   
        </div>
        <div class="col-1 circle" >
          <span id="signup-2">2</span>
        </div>
        <div class="col-3">
            <div class="circleLine-line"></div>   
        </div>
        <div class="col-1 circle" >
          <span>3</span>
        </div>
    </div>
    <div class="row circleLine-text justify-content-center">
        <div class="col-2">
            <span class="circelLine-text-left">회원 정보 입력</span>
        </div>
        <div class="col-5">
            <span id="circelLine-text-middle">회원 프로필 입력</span>
        </div>
        <div class="col-2">
            <span class="circelLine-text-right">회원가입 완료</span>
        </div>
    </div>
<!-- info 영역-->
    <div id="userInfoBox">
        <div class="row">
            <div class="col">
                <img src="/resources/images/kirilogo.png" alt="오류발생">
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <p>이름</p>
            </div>
            <div class="col-md-7">
                <input type="text" id="user_name" name="user_name" class="form-control">
            </div>
            <div class="col-2"></div>
        </div>
         <div class="row">
        	<div class="col-md-3">
        	</div>
        	<div class="col-md-7 text-align-left-col" id="name-col" >
        	
        	</div>
        	<div class="col-2 text-align-left-col"></div>
        </div>
        <div class="row emailRow" >
            <div class="col-md-3">
                <p>이메일</p>
            </div>
            <div class="col-md-3 pr-0">
                <input type="text" id="email-id" name="email" class="form-control">
               	<span style="color: black; font-size: 15px;">@</span>
            </div>
            <div class="col-md-2" style="text-align: left">
            	<div class="row">
	                <select name="email-domain-select" id="email-domain-select" class="form-control">
	                    <option value="1" selected>선택해주세요</option>
	                    <option value='naver.com'>naver.com</option>
	                    <option value='hanmail.net'>hanmail.net</option>
	                    <option value='nate.com'>nate.com</option>
	                    <option value='yahoo.co.kr'>yahoo.co.kr</option>
	                    <option value='hotmail.com'>hotmail.com</option>
	                    <option value='empal.com'>empal.com</option>
	                    <option value='paran.com'>paran.com</option>
	                    <option value='lycos.co.kr'>lycos.co.kr</option>
	                    <option value='gmail.com'>gmail.com</option>
	                    <option value='99'>직접입력</option>
	                </select>
                </div>
                <div class="row email-domain-row">
                	<div class="col-md-7 p-0">
                		<input type="text" id="email-domain" name="email-domain" class="form-control" value="1">
                		<input type="hidden" id="user_email" name="user_email" />
                	</div>
                	<div class="col-md-5 d-flex align-items-center">
                		<i id="email-btn" class="bi bi-arrow-up-square-fill"></i>
                	</div>
                </div>
            </div>
            <div class="col-md-2">
            	<div class="row">
            		<div class="col">
            			<button type="button" class="btn btn-secondary" id="emailCheck">중복확인</button>
            		</div>
            	</div>
            </div>
            <div class="col-2"></div>
            <div id="emailCheckBox">
                <div class="row">
                    <div class="col-md-3">
                        <p>이메일 인증</p>
                    </div>
                    <div class="col-md-5">
                        <input type="text" id="authNum" name="authNum" class="form-control">
                    </div>
                    <div class="col-md-2">
                        <button type="button" class="btn btn-secondary" id="certificationBtn">인증번호 확인</button>
                    </div>
                    <div class="col-2"></div>
                </div>
            </div>
        </div>
        <div class="row"  >
            <div class="col-md-3">
                <p>비밀번호</p>
            </div>
            <div class="col-md-7">
                <input type="password" id="user_pw" name="user_pw" class="form-control">
            </div>
            <div class="col-md-2 p-0 text-align-left-col">
            </div>
        </div>
        <div class="row">
        	<div class="col-md-3">
        	</div>
        	<div class="col-md-7 text-align-left-col" >
        		<span class="condition">
            		*한글, 영어, 숫자, !, @, #, $을 사용하여 최소 8, 최대 20자리까지 설정해주세요.
            	</span>
        	</div>
        	<div class="col-2 text-align-left-col"></div>
        </div>
         <div class="row">
        	<div class="col-md-3">
        	</div>
        	<div class="col-md-7 text-align-left-col" id="regex-col">
        	
        	</div>
        	<div class="col-2 text-align-left-col"></div>
        </div>
        <div class="row" >
            <div class="col-md-3">
                <p>비밀번호 확인</p>
            </div>
            <div class="col-md-7" style="text-align: left;" >
                <input type="password" id="pwCheck" name="pwCheck" class="form-control">
            </div>
            <div class="col-2"></div>
        </div>
        <div class="row">
        	<div class="col-md-3">
        	</div>
        	<div class="col-md-7 text-align-left-col" id="check-col" >
        	
        	</div>
        	<div class="col-2 text-align-left-col"></div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <p>닉네임</p>
            </div>
            <div class="col-md-5">
                <input type="text" id="user_nickname" name="user_nickname" class="form-control">
            </div>
            <div class="col-md-2">
                <button type="button" class="btn btn-secondary" id="nicknameCheck">중복확인</button>
            </div>
            <div class="col-2"></div>
        </div>
        <div class="row">
        	<div class="col-md-3">
        	</div>
        	<div class="col-md-7 text-align-left-col" >
        		<span class="condition">
            		*한글, 영어, 숫자을 사용하여 최소 2, 최대 12자리까지 설정해주세요.
            	</span>
        	</div>
        	<div class="col-2 text-align-left-col"></div>
        </div>
        <div class="row">
        	<div class="col-md-3">
        	</div>
        	<div class="col-md-7 text-align-left-col" id="nickname-col" >
        	
        	</div>
        	<div class="col-2 text-align-left-col"></div>
        </div>
        <div class="row" >
            <div class="col-md-3">
                <p>생년월일</p>
            </div>
            <div class="col-md-9 d-flex justify-content start align-items-center">
                <input type="text" id="year" name="year" class="form-control bthday" maxlength="4" required><label for="year">년</label>
                <input type="text" id="month" name="month" class="form-control bthday" maxlength="2" required><label for="month">월</label>
                <input type="text" id="day" name="day" class="form-control bthday" maxlength="2" required><label for="day">일</label>
                <input type="hidden" id="user_bd" name="user_bd" class="form-control"></intput>
            </div>
        </div> 
        <div class="row" >
            <div class="col-md-3">
                <p>휴대전화</p>
            </div>
            <div class="col-md-5" style="text-align: left;">
                <select name="phone1" id="phone1" class="form-control" required>
                    <option value="010" selected>010</option>
                    <option value="011">011</option>
                    <option value="016">016</option>
                    <option value="017">017</option>
                    <option value="018">018</option>
                    <option value="019">019</option>
                </select>
                <input type="text" id="phone2" name="phone2" class="form-control" maxlength="4" required>
                <input type="text" id="phone3" name="phone3" class="form-control" maxlength="4" required>
                <input type="hidden" id="user_phone" name="user_phone">
            </div>
            <div class="col-md-2">
            	<button type="button" id="checkPhone" class="btn btn-secondary" >중복확인</button>
            </div>
            <div class="col-2"></div>
        </div>
        <div class="row justify-content-center" >
            <div class="col-md-3">
                <p>성별</p>
            </div>
            <div class="col-md-7">
                <input class="user_gender" type="radio" id="men" name="user_gender" value="남자" required>
                <label for="men">남자</label>
                <input class="user_gender" type="radio" id="women" name="user_gender" value="여자" required>
                <label for="women">여자</label>
            </div>
            <div class="col-2"></div>
        </div>
        <div class="row">
        	<div class="col">
        		<span class="condition" style="font-size: 20px;">*모든 정보를 입력해주세요.</span>
        	</div>
        </div>
    </div>

    <div id="userInfoBox-profile">
        <div class="row" style="text-align: center;">
            <div class="col">
                <div>
                    <img src="/resources/images/kiriLogo.jpg" alt="오류가 발생했습니다.">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <p id="profileSetting">프로필 설정</p>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <input type="file" class="form-control" id="user_image" name="file" accept="image/jpeg, image/png">
            </div>
        </div>
        <div class="row">
            <div class="col-3">
                <p style="margin-top: 50px;">자기소개</p>
            </div>
            <div class="col-7" style="height: 120px;">
                <textarea class="form-control" name="user_intro" id="user_intro" maxlength="500" placeholder="500자 이내로 작성해주세요. 작성하지 않아도 가입은 가능합니다."></textarea>
            </div>
            <div class="col-2"></div>
        </div>
        <div class="row">
            <div class="col-3">
            </div>
            <div class="col-7" id="user_intro_cnt">
            	0/500
            </div>
            <div class="col-2"></div>
        </div>
        <div class="row">
            <div class="col-3">
                <p  style="margin-top: 10px;">직업</p>
            </div>
            <div class="col-8" style="text-align: left;">
                <input type="radio" class="user_job" id="student" name="user_job" value="학생"><label for="student">학생</label>
                <input type="radio" class="user_job" id="employee" name="user_job" value="회사원"><label for="employee">회사원</label>
                <input type="radio" class="user_job" id="unemployed" name="user_job" value="무직"><label for="unemployed">무직</label>
                <input type="radio" class="user_job" id="other" name="user_job" value="기타"><label for="other">기타</label>
            </div>
            <div class="col-1"></div>
        </div>
        <div class="row checkBox" >
            <div class="col-3">
                <p >좋아하는 취미<br>(최대 3개 선택)</p>
            </div>
            <div class="col-9">
                    <div class="row" >
                        <div class="col">
                            <input type="checkbox"  id="travel" name="hobby" class="checkbox" value="아웃도어/여행"><label for="travel">아웃도어/여행</label>
                            <input type="checkbox"  id="sports" name="hobby" class="checkbox" value="운동/스포츠"><label for="sports">운동/스포츠</label>
                            <input type="checkbox"  id="fgn-language" name="hobby" class="checkbox" value="외국어/언어"><label for="sports">외국어/언어</label>
                            <input type="checkbox"  id="pets" name="hobby" class="checkbox" value="반려동물"><label for="pets">반려동물</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <input type="checkbox"  id="music" name="hobby" class="checkbox" value="음악/악기"><label for="music">음악/악기</label>
                            <input type="checkbox"  id="making" name="hobby" class="checkbox" value="공예/만들기"><label for="making">공예/만들기</label>
                            <input type="checkbox"  id="dance" name="hobby" class="checkbox" value="댄스/무용"><label for="dance">댄스/무용</label>
                            <input type="checkbox"  id="reading" name="hobby" class="checkbox" value="인문학/책/글"><label for="reading">인문학/책/글</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <input type="checkbox"  id="photographic" name="hobby" class="checkbox" value="사진/영상"><label for="photographic">사진/영상</label>
                            <input type="checkbox"  id="game" name="hobby" class="checkbox" value="게임/오락"><label for="game">게임/오락</label>
                            <input type="checkbox"  id="cooking" name="hobby" class="checkbox" value="요리/제조"><label for="cooking">요리/제조</label>
                            <input type="checkbox"  id="culture" name="hobby" class="checkbox" value="문화/공연/축제"><label for="culture">문화/공연/축제</label>
                        </div>
                    </div>
            </div>
        </div>
        <div class="row checkBox" >
            <div class="col-3">
                <p style="margin-top: 10px">선호지역<br>(최대 3개 선택)</p>
            </div>
            <div class="col-9">
                <div class="row" >
                    <div class="col">
                        <input type="checkbox" id="seoul" name="area" class="checkbox" value="서울"><label for="seoul">서울</label>
                        <input type="checkbox" id="incheon" name="area" class="checkbox" value="인천"><label for="incheon">인천</label>
                        <input type="checkbox" id="gyeonggi-do" name="area" class="checkbox" value="경기도"><label for="gyeonggi-do">경기도</label>
                        <input type="checkbox" id="gangwon-do" name="area" class="checkbox" value="강원도"><label for="gyeonggi-do">강원도</label>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <input type="checkbox" id="chungcheong-do" name="area" class="checkbox" value="충청도"><label for="chungcheong-do">충청도</label>
                        <input type="checkbox" id="gyeongsang-do" name="area" class="checkbox" value="경상도"><label for="gyeongsang-do">경상도</label>
                        <input type="checkbox" id="jeolla-do" name="area" class="checkbox" value="전라도"><label for="jeolla-do">전라도</label>
                        <input type="checkbox" id="jeju-do" name="area" class="checkbox" value="제주도"><label for="jeju-do">제주도</label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <button type="button" id="backPageBtn" class="btn btn-secondary">취소</button>
            <button type="button" id="nextBtn" class="btn btn-primary">확인</button>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <button type="button" id="singupBackBtn" class="btn btn-secondary">뒤로가기</button>
            <button type="button" id="completeBtn" class="btn btn-primary">가입하기</button>
        </div>
    </div>
</div>
</form>

<!-- Footer-->
<footer class="footer">
    <div class="container">
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
				<li class="list-inline-item"><a href="member/toSignup">회원가입</a></li>
				<li class="list-inline-item">⋅</li>
				<li class="list-inline-item"><a href="/login/toLogin">로그인</a></li>
			</c:otherwise>
		</c:choose>
		<li class="list-inline-item">⋅</li>
		<li class="list-inline-item"><a href="#!">책임의 한계 및 법적고지</a></li>
		<li class="list-inline-item">⋅</li>
		<li class="list-inline-item"><a href="#!"
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
                    <li class="list-inline-item me-4"><a href="https://ko-kr.facebook.com"><i
                            class="bi-facebook fs-3"></i></a></li>
                    <li class="list-inline-item me-4"><a href="https://twitter.com/?lang=ko"><i
                            class="bi-twitter fs-3"></i></a></li>
                    <li class="list-inline-item"><a href="https://www.instagram.com/"><i
                            class="bi-instagram fs-3"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
</body>
</html>