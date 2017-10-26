/**
 * 
 */

$("button[name='messageBtn']").click(function(){
	var speak={content:$("textarea[name='content']").val(),type:0,uidfoot:$("button[name='messageBtn']").val()}
	$.ajax({
		url:"/front/oldUsers/speak/addText",
		data:speak,
		success:function(data){
				if(data=="true"){
					window.location.href='/front/oldUsers/speak/getMessage?uidfoot='+$("button[name='messageBtn']").val();
				}else{
					alert(data)
				}
		},
		error:function(){
			alert("网络错误!")
		}
	})
	
})