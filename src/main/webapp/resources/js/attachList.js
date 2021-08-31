/**
 * 
 */
$(document).ready(function(){
	var bno=$("#bno").val();
	alert(bno);
	$.getJSON("getAttachList",{bno:bno},function(arr){
		//console.log(arr);
		var str="";
		$(arr).each(function(i,attach){
			// 첨부파일이 이미지이면,
			if(attach.filetype){
				var fileCallPath = encodeURIComponent( attach.uploadpath+ "/s_"+attach.uuid+"_"+attach.filename);	
				str+="<li data-path='"+attach.uploadpath+"' data-uuid='"+attach.uuid+"' data-filename='"+attach.filename+"' data-type='"+attach.filetype+"' ><div>";
				str+= "<img src='/display?filename="+fileCallPath+"'>";
				str+="</div></li>";
			}else{ //그렇지않으면
				str+="<li data-path='"+attach.uploadpath+"' data-uuid='"+attach.uuid+"' data-filename='"+attach.filename+"' data-type='"+attach.filetype+"' ><div>";
				str+="<span> "+attach.filename+"</span><br>";
				str+= "<img src='/display?filename="+fileCallPath+"'>";
				//str+= "<img src='/resources/img/attach.png'>";
				str+="</div></li>";
			}
			
		});// $(arr).each(function(i,attach) 끝
		$(".uploadResult ul").html(str);
		
	})//$.getJSON 끝	
})//$(document).ready(function() 끝