/**
 * 
 */	
function checkExtension(fileName, fileSize){
	// 정규식(파일의 확장자가 .exe, .sh, .zip, .alz등은 파일 첨부할 수 없게 정규식
	var regex=new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	var maxSize=5242880;//5MB
	if(fileSize >= maxSize){
		alert("파일 사이즈 초과");
		return false;
	}
	if(regex.test(fileName)){
		alert("해당 종류의 파일은 업로드 할 수 없습니다.");
		return false;
	}
	return true;
} //checkExtension end..
function showUploadResult(uploadResultArr){
	if(!uploadResultArr || uploadResultArr.length==0){return;}
	
	var uploadUL = $(".uploadResult ul");
	var str="";
	
	$(uploadResultArr).each(function(i,obj){
		//image형태
		if(obj.filetype){
			var fileCallPath=encodeURIComponent(obj.uploadpath+"/s_"+obj.uuid+"_"+obj.filename);
			str+="<li data-path='"+obj.uploadpath+"'";
			str+=" data-uuid='"+obj.uuid+"' data-filename='"+obj.filename+"' data-type='"+obj.filetype+"'"+"><div>";
			str+="<span>"+obj.filename+"</span>";
			str+="<button type='button' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button>";
			str+="<img src='/display?filename="+fileCallPath+"'>";
			str+="</div></li>";
		}else{// 그렇지 않은 형태
			var fileCallPath = encodeURIComponent(obj.uploadpath+"/"+obj.uuid+"_"+obj.filename);
			var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
			str += "<li><div>";
			str += "<span>"+ obj.filename +"</span>";
			str += "<button type='button' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
			str += "<img src='/resources/img/attach.png'>";
			str += "</div></li>";
		}
			
	})
	uploadUL.append(str);
}


$(document).ready(function(){
	// form 태그를 선택, - submit를 해야되니까.
	var formObj=$("form[role='form']");//(속성선택자)
	
	//글쓰기버튼을 클릭하면,
	$("input[type='submit']").on("click",function(e){
		
		e.preventDefault(); //원래 submit이 갖고 있는 성질을 제거.누르자마자 action을 실행하면 밑에 있는걸 실행하지않기때문에.잠깐 보류.
		
		var str = "";
		$(".uploadResult ul li").each(function(i,obj){//i 가 인덱스번호...each가 for문
			var jobj=$(obj);
			str+= "<input type='text' name='attachList["+i+"].filename' value='"+jobj.data("filename")+"'>";
			str+= "<input type='text' name='attachList["+i+"].uuid' value='"+jobj.data("uuid")+"'>";
			str+= "<input type='text' name='attachList["+i+"].uploadpath' value='"+jobj.data("path")+"'>";
			str+= "<input type='text' name='attachList["+i+"].filetype' value='"+jobj.data("type")+"'>";
			
		});
		//$(".uploadResult ul").html(str); //확인하기 위함.
		formObj.append(str).submit();
		// form 태그 submit실행하는데 append로 str(첨부파일 데이터)에 저장된 걸 같이 보냄.
		// action=register(BoardController에 있는 register)
		
	}) // $("input[type='submit']").on("click",function(e){ end...
	
	

	$("input[type='file']").change(function(e){
		//<form>와 같은 역할
		var formData = new FormData();
		var inputFile=$("input[name='uploadFile']");
		var files = inputFile[0].files;
		//console.log(files);
		for(var i=0; i<files.length; i++){
			//checkExtension 함수 호출(파일 종류, 파일 용량 체크)
			if(!checkExtension(files[i].name, files[i].size)){
				return false;
			}
			formData.append("uploadFile",files[i])
		}
		$.ajax({
			url:"/uploadAjaxAction",
			processData:false, // 파일업로드 시 무조건 false
			contentType:false,// 파일업로드 시 무조건 false
			data:formData,
			type:"post",
			dataType:"json",
			success:function(result){
				console.log(result);
				showUploadResult(result); // showUploadResult 함수 호출:업로드결과 처리함수
			}
		
		});//$.ajax끝
	})// 	$("input[type='file']").change(function(e){......end
}) // $(document).ready(function(){

