/**
 * 
 */


$("button[name='findsbtn']").click(function(){
	if(validateNotNull()){
		var oldUsers=$("form[name='formFinds']")
		$.ajax({
			type:'post',
			url:'/front/oldman/friend/findFriend',
			data:oldUsers.serialize(),
			success:function(data){
				var divs=$("#findFriend")
				divs.empty();
				if(data!=null){
					for(var k in data){
						var fhtml='<div class="layui-col-md12" >'
							+ '<div class="layui-col-md3" >'
							+ '<img src="/resources/producat_3015.jpg" style="height:100%;width:100%;float:left" /></div>'
							+ '<div class="layui-col-md5">'
							+ '<div class="layui-col-md12" style="height:40%; float:left"><span style="font-size:16px">账号:</span>'
							+ data[k]['uid']
							+ '</div>'
							+ '<div class="layui-col-md12" style="height:40%; float:left"><span style="font-size:16px">姓名:</span>'
							+ data[k]['username']
							+ '</div></div>'
							+ '<div class="layui-col-md4">'
							+ '<div class="layui-inline">'
							+ '<select class="layui-form-label" style="margin-top:10px;width:100%">'
							+ '<option value="1" selected="selected">查看信息</option>'
							+ '<option value="2" >添加好友</option>'
							+ '</select></div></div></div><hr/>';
						divs.append(fhtml);
					}
				}
				var overs='<span class="layui-btn layui-btn-disabled">已经没有更多了</span>';
				divs.append(overs);
			}
		})
	}
})

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