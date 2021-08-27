/**
 * 
 */
$(document).ready(function(){
	//alert("aaa");
	// get.jsp에 있는
	// bno값 가져오기
	var bno=$("#bno").val();
	
	showList();
	
	function showList(){
		replyService.getList(
				{bno:bno},
				function(list){
					var str="";
					for(var i=0;i<list.length;i++){
						str+="<li>"+list[i].replyer+"</li>"		// str=str+"<li>"+list[i].replyer+"</li>"
						str+="<li><textarea rows='3' cols='30' id='modreply"+list[i].rno+"'>"+list[i].reply+"</textarea></li>"		// str=str+"<li>"+list[i].reply+"</li>"
						str+="<li>"+replyService.displayTime(list[i].replyDate)+"</li>"	// str=str+"<li>"+list[i].replydate+"</li>"
						str+="<li><button class='replymod' id='replymod' data-rno='"+list[i].rno+"'>댓글수정</button><button class='replydel' data-rno='"+list[i].rno+"'>댓글삭제</button></li>"
					}
					$("#replyList").html(str)
				}
		)
	};// showList 함수 끝
	
	// 댓글쓰기 버튼을 클릭하면,
	$("#replyadd").click(function(e){
		// reply값 가져오기
		var reply=$("#reply").val();
		//replyService.add( {reply:"aaa",replyer:"bbbb",bno:1},function(result){alert("cccccc");});
		replyService.add(
				{reply:reply,replyer:"bbbb",bno:bno},
				function(result){	// insert가 정상적으로 처리된 후 작업(callback)
					alert("결과는 : "+result);
					showList();
				}
		);
	});
	// 수정 버튼을 클릭하면,
	$("#replyList").on("click",".replymod",function(e){
		
		var rno=$(this).data("rno");
		var reply=$("#modreply"+rno).val();
		replyService.update(
			{reply:reply,rno:rno},
			function(result){	// update가 정상적으로 처리된 후 작업(callback)
				alert("결과는 : "+result);
				showList();
			}
		)
	});// 수정 끝
	// 댓글삭제버튼을 클릭하면,
	$("#replyList").on("click",".replydel",function(e){
		var rno=$(this).data("rno");
		replyService.remove(
			rno,
			function(result){ // remove가 정상적으로 처리된 후 작업(callback)
				alert("결과는 : "+result);
				showList();
			}// callback 끝
		)// 호출 끝 
		
	}); // 댓글삭제 끝
	
})

var replyService=(function(){
	function add(reply, callback, error){// add함수 시작(댓글쓰기 함수)
		//alert("aaaaa");
		console.log("add reply");
		$.ajax({
			type:"post",
			url:"/replies/new",	// ReplyController 연결부분
			data:JSON.stringify(reply),
			contentType:"application/json; charset=utf-8",
			success:function(result,status,xhr){
				if(callback){
					callback(result);
				}
			},
			error : function(xhr,status,er){
				if(error){
					error(er);
				}
			}
		})	
	}// add함수 끝
	function getList(param,callback,error){// getList함수 시작(댓글 목록 리스트)
		var bno=param.bno;
		$.getJSON("/replies/page/"+bno+".json",
			function(data){
				if(callback){
					callback(data);
				}
			}).fail(function(xhr,status,err){
				if(error){
					error(er);
				}
		});
	}// getList함수 끝
	function update(reply, callback, error){//update함수 시작
		console.log(reply.rno)
		$.ajax({
			type:"put",
			url:"/replies/"+reply.rno,
			data:JSON.stringify(reply),
			contentType:"application/json; charset=utf-8",
			success:function(result,status,xhr){
				if(callback){
					callback(result);
				}
			},
			error : function(xhr,status,er){
				if(error){
					error(er);
				}
			}
		})
	} // update함수 끝
	function remove(rno, callback, error){ //remove함수 시작
		$.ajax({
			type:"delete",
			url:"/replies/"+rno,
			success:function(result,status,xhr){
				if(callback){
					callback(result);
				}
			},
			error : function(xhr,status,er){
				if(error){
					error(er);
				}
			}
			
		})//ajax 끝 
		
	}//remove함수 끝
	
	//displayTime함수 시작
	function displayTime(timeValue) {

		var today = new Date();

		var gap = today.getTime() - timeValue;

		var dateObj = new Date(timeValue);
		var str = "";

		if (gap < (1000 * 60 * 60 * 24)) {

			var hh = dateObj.getHours();
			var mi = dateObj.getMinutes();
			var ss = dateObj.getSeconds();

			return [ (hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi,
					':', (ss > 9 ? '' : '0') + ss ].join('');

		} else {
			var yy = dateObj.getFullYear();
			var mm = dateObj.getMonth() + 1; // getMonth() is zero-based
			var dd = dateObj.getDate();

			return [ yy, '/', (mm > 9 ? '' : '0') + mm, '/',
					(dd > 9 ? '' : '0') + dd ].join('');
		}
	}
	;
	
	return{
		add:add,
		getList:getList,
		update:update,
		remove:remove,
		displayTime:displayTime
	};
})();




