/* 회원가입과 관련된 스크립트 */
$(document).ready(function(){
	// 아이디 유효성 검사 정규식(대소문자+숫자조합 4~12자)
	var reg_id= RegExp(/^(?=.*[A-Za-z])(?=.*\d)[a-zA-Z\d$]{4,12}$/); //member.jsp가 레디되면 메모리에 올라가는 변수.// RegExp(/^정규식$/)
	// 비밀번호 유효성 검사 정규식
	var reg_pw= RegExp(/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,20}$/);
	// 이메일 유효성 검사
	var reg_email = RegExp(/^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/);
	//alert("aaa");
	
	
	
	$("#id").on("blur",function(){ //
		var id=$("#id").val();
		if(reg_id.test(id)){
			$("#idcheck").html("사용가능합니다.");
			$("#idcheck").css("color","blue");
		}else{
			$("#idcheck").html("영문자+숫자 조합 4~12자");
			$("#idcheck").css("color","red");
		}
		
	})
	
	$("#pw").on("blur",function(){ //
		var pw=$("#pw").val();
		if(reg_pw.test(pw)){
			$("#pwcheck").html("사용가능합니다.");
			$("#pwcheck").css("color","blue");
		}else{
			$("#pwcheck").html("영문자+숫자+특수문자 조합 8~20자");
			$("#pwcheck").css("color","red");
		}
		
	})

	$("#copw").on("blur",function(){
		var pw=$("#pw").val();
		var copw=$("#copw").val();
	
		if(pw == copw){
			$("#copwcheck").html("일치합니다.");
			$("#copwcheck").css("color","blue");
		}else{
			$("#copwcheck").html("다시 입력하세요.");
			$("#copwcheck").css("color","red");
		}
	})
	
})



