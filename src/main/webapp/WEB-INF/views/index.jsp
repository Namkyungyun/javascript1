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