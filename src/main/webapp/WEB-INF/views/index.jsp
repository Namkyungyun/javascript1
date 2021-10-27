<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

function confirm(){
	debugger;
	if(!test("test1")){
		return false;
	}
	if(!test("test2")){
		return false;
	}
	if(!test("test3")){
		return false;
	}
		
	document.write("확인완료!");
	
}

	
	function test(id){
		var test_val = $('#'+id).val();
		console.log(test_val);
		if(test_val.length < 2){
			alert("2보다 작음");
			return false;
			
		}
		else if(test_val.length >=2 && test_val.length <=5){
			alert("5보다 작음");
			return false;
		}
		else{
			return true;
		}
	
	}
	function test2(id){
		var test_val = $('#'+id).val();
		test_val = null;
	}

//정규식 정리 =========================================================================
// 특수문자 기입 방지 [영어 한글만 가능하도록 => onkey로 함수 부르기]
	function special_str_prv(id,msg){
		 $(id).keyup(function(event){
			 if(!(event.keyCode >= 37 && event.keyCode <= 40)){
				 var input_val = $(this).val();
				 var special_str = /[~!@#$%^&*()_+|<>?:{}]/gi;
				 if(special_str.test(input_val)){
					 $(this).val("");
					 $(this).focus;
					 $(msg).html("이름 입력 시 특수문자 입력이 불가합니다.").css("color","red");
				 }
			 }
		 });
	 }

  //비밀번호 유효성 검사[ 숫자, 영문, 특수문자 조합이 있는지 검사]
    function chk_pw(id,box){
	   	let pw = $(id).val();
	   	let num = pw.search(/[0~9]/g);
	   	let eng = pw.search(/[a-zA-Z]/gi);
	   	let spec = pw.search(/[~!@#$%^&*()_+<>?:{}]/);
	   	//비밀번호 자릿수
	   	if( pw.length < 8 || pw.length > 20){
	   		$(box).html("8~20자리 이내로 입력해주십시오.").css("color","red");
	   		return false;
	   	}
			//자릿수, 영문, 특수문자 확인
	   	if( num < 0 || eng < 0 || spec < 0 ){
	   		$(box).html("영문, 숫자, 특수문자를 혼합하여 입력해주십시오.").css("color","red");
	   		return false;
	   	}else{
	   		$(box).html("");
	   		return true;
	   	}
   } 

	 //한글과 특수문자 입력방지 [영어(소문자), 숫자 허용 ]
	function chk_hang_spec_str(id,msg){
		var han = /[ㄱ-ㅎ가-힣]/gi;
		var spec = /[~!@#$%^&*()_+<>?:{}]/;
	  $(id).keyup(function(event){
			if(!(event.keyCode >=37 && event.keyCode <= 40)){
				var input_val = $(this).val();
				if(han.test(input_val)){
					$(msg).html("영문과 숫자만 입력가능합니다.").css("color","red");
					$(this).val("");
				}
				if(spec.test(input_val)){
					$(msg).html("영문과 숫자만 입력가능합니다.").css("color","red");
					$(this).val("");
				}
			}
	});
	}
</script>
<style>
	#test1{
		border: 1px solid black;
		width: 30px;
		height: 20px;
	}
	#test2{
		border: 1px solid black;
		width: 30px;
		height: 20px;
	}
	#test3{
		border: 1px solid black;
		width: 30px;
		height: 20px;
	}
</style>
<body>
	<h1>환영합니다 방명록 사이트입니다.</h1>
	<form action="session" method="post">
		
		닉네임: <input type="text" name="nickname" id="nickname"><br>
		
		<input type="submit" value="접속">
		
	</form>
	<h1>테스트</h1>
	<input type="text" id="test1">
	<input type="text" id="test2">
	<input type="text" id="test3">
	<button onclick="confirm();">확인</button>
</body>
</html>
