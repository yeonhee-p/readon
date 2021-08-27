/**
 * 
 */
$(document).ready(function(){
	$("#uploadBtn").on("click",function(e){ //클릭했을때 함수 안에 있는 것을 실행
		// alert("aaaa");
		var formData = new FormData(); //.jsp의 form태그와 같은 역할
		var inputFile=$("input[name='uploadFile']"); //속성 선택자(input 선택)
		var files = inputFile[0].files;
		//console.log(files);
		for(var i=0; i<files.length; i++){
			formData.append("uploadFile",files[i])
		}
		$.ajax({
			url:"/uploadAjaxAction",
			processData:false, // 파일업로드 시 무조건 false
			contentType:false,// 파일업로드 시 무조건 false
			data:formData,
			type:"post",
			success:function(result){
				alert("Uploaded");
			}
		
		});//$.ajax끝
	});
	
});