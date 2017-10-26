/**
 * 
 */

$(document).ready(function() {
			readyFriends()
		})
						
		function readyFriends(){
			$.ajax({
						type : "get",
						url : '/front/oldUsers/friend/friends',
						success : function(data) {
							if(data!=null){
								var divs = $("#oldManFriends");
								//清除好友列表
								divs.empty();
								//添加好友列表
								for ( var k in data) {
									var btns1 = '<div class="layui-col-md12" >'
											+ '<div class="layui-col-md3" >'
											+ '<img src="/files/'+data[k]['oldUsers'][0]['userurl']+'" style="height:100%;width:100%;float:left" /></div>'
											+ '<div class="layui-col-md5">'
											+ '<div class="layui-col-md12" style="height:30%; float:left"><span style="font-size:16px">账号:</span>'
											+ data[k]['uidfoot']
											+ '</div>'
											+ '<div class="layui-col-md12" style="height:30%; float:left"><span style="font-size:16px">性别:</span>'
											+ getsexInt(data[k]['oldUsers'][0]['sex'])
											+ '</div>'
											+ '<div class="layui-col-md12" style="height:30%; float:left"><span style="font-size:16px">姓名:</span>'
											+ data[k]['oldUsers'][0]['username']
											+ '</div></div>'
											+ '<div class="layui-col-md4">'
											+ '<div class="layui-inline">'
											+ '<button class="layui-btn  layui-btn-radius layui-btn-small layui-btn-normal" id="select" value="'+data[k]['uidfoot']+'">查看信息</button>'
											+ '<button class="layui-btn  layui-btn-radius layui-btn-small layui-btn-normal" id="message" value="'+data[k]['uidfoot']+'">留言</button><br/>'
											+ '<button class="layui-btn  layui-btn-radius layui-btn-small layui-btn-normal" id="delete" value="'+data[k]['uidfoot']+'">删除好友</button>'
											+ '</div></div></div><hr/>';
									divs.append(btns1);
								}
								var btnsOver = '<span style="width:100%" class="layui-btn layui-btn-disabled">已经没有更多了</span>';
								divs.append(btnsOver);
							}
							}
							
					})
		}
		//详情
		$(document).on("click","#select",function(){
			var f=$(this).val();
			window.location.href='/front/oldUsers/selectByUid?uid='+f;
		})
		//留言
		$(document).on("click","#message",function(){
			var f=$(this).val();
			window.location.href='/front/oldUsers/speak/getMessage?uidfoot='+f;
		})
		//删除
		$(document).on("click","#delete",function(){
			var f=$(this).val();
			if(confirm("确定删除该好友?")){
				$.ajax({
					type:'get',
					url:'/front/oldUsers/friend/deleteFriend?uidfoot='+f,
					success:function(data){
						if(data=="true"){
							window.location.href='/gotoFront/oldUser/friend';
						}else{
							alert(data.toString());
						}
					}, 
					error:function(){
						alert("网络错误！");
					}
				})
			}
		})
		//判断男女
		function getsexInt(sex) {
			var s;
			switch (sex) {
			case 1:
				s = "女"
				break;
			default:
				s = "男"
				break;
			}
			return s;
		}
//查询好友
$("button[name='findsbtn']").click(function(){
	if(validateNotNull()){
		var oldUsers=$("form[name='formFinds']")
		$.ajax({
			type:'post',
			url:'/front/oldUsers/friend/findFriend',
			data:oldUsers.serialize(),
			success:function(data){
				var divs=$("#findFriend")
				divs.empty();
				if(data!=null){
					for(var k in data){
						var fhtml='<div class="layui-col-md12" >'
							+ '<div class="layui-col-md3" >'
							+ '<img src="/files/'+data[k]['userurl']+'" style="height:100%;width:100%;float:left" /></div>'
							+ '<div class="layui-col-md5">'
							+ '<div class="layui-col-md12" style="height:40%; float:left"><span style="font-size:16px">账号:</span>'
							+ data[k]['uid']
							+ '</div>'
							+ '<div class="layui-col-md12" style="height:40%; float:left"><span style="font-size:16px">姓名:</span>'
							+ data[k]['username']
							+ '</div></div>'
							+ '<div class="layui-col-md4">'
							+ '<div class="layui-inline">'
							+ '<button class="layui-btn  layui-btn-radius layui-btn-small layui-btn-normal" friend="select" value="'+ data[k]['uidfoot']+ '" >查看信息</button>'
							+ '<button class="layui-btn  layui-btn-radius layui-btn-small layui-btn-normal" friend="add" onClick="getaddFriend()" value="'+data[k]['uid']+'" >添加好友</button>'
							+ '</div></div></div><hr/>';
						divs.append(fhtml);
					}
				}
				var overs='<span style="width:100%" class="layui-btn layui-btn-disabled">已经没有更多了</span>';
				divs.append(overs);
			}
		})
	}
})

function getaddFriend(){
	var uid=$("button[friend='add']").val();
	alert(uid)
	$.ajax({
		url:'/front/oldUsers/friend/addFriend?uid='+uid,
		success:function(data){
			if(data=="true"){
				readyFriends();
			}else {
				alert(">>>:"+data)
			}
		},
		error:function(){
			alert("网络错误!")
		}
	})
}

function selectFriend(){
	var uid=$("button[friend='select']").val();
	alert(uid)
	$.ajax({
		url:'/front/oldUsers/selectByUid?uid='+uid,
		success:function(data){
			if(data=="true"){
				readyFriends();
			}else {
				alert(data)
			}
		},
		error:function(){
			alert("网络错误!")
		}
	})
}

//self.location=document.referrer;返回上一个页面
	//输入框不能为空,有空的输入框返回false
    function validateNotNull() {
        var data=$("input[NoNull]");
        var flg=true;
        if(data!=undefined){
            data.each(function (index,element) {
                var va_txt = $(element).val();
                if(va_txt.trim().length<1){
                    $(element).focus();
                    flg=false;
                    $(element).val("必要信息不能为空!");
                    return false;
                }
            })
        }
        return flg;
    }