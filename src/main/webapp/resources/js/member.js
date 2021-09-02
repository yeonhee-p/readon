/* 회원가입과 관련된 스크립트 */
$(document).ready(function(){
	// 아이디 유효성 검사 정규식(대소문자+숫자조합 4~12자)
	var reg_id= RegExp(/^(?=.*[A-Za-z])(?=.*\d)[a-zA-Z\d$]{4,12}$/); //member.jsp가 레디되면 메모리에 올라가는 변수.// RegExp(/^정규식$/)
	// 비밀번호 유효성 검사 정규식
	var reg_pw= RegExp(/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,20}$/);
	
	
	
	
	$("#id").on("blur",function(){ //
		var id=$("#id").val();
		if(reg_id.test(id)){
			$("#idcheck").html("");
			$("#idcheck").css("color","blue");
		}else{
			$("#idcheck").html("영문자+숫자 조합 4~12자");
			$("#idcheck").css("color","red");
		}
		
	})
	
	//아이디 중복확인
	$("#id_check").click(function(){
		console.log("중복");
		var query = {id:$("#id").val()};
		$.ajax({
			url : "/member/id_check",
			type : "post",
			data : query,
			dataType:"json",
			success : function(result){
				if(result == 1){
					$(".msg").text("이미 사용중인 아이디입니다.");
					$(".msg").attr("style","color:#f00");
					$("#submit").attr("disabled","disabled");
				}else{
					$(".msg").text("사용가능");
					$(".msg").attr("style","color:#00f");
					
					$("#submit").removeAttr("disabled");
				}
			}
		
		});//ajax 끝
	
	});	//아이디 중복확인 끝
	
	$("#id").keyup(function(){
		$(".msg").text("아이디 중복 확인해주세요.");
		$(".msg").attr("style","color:#000");
		$("#submit").attr("disabled", "disabled");
	});
	
	
	
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



