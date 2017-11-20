/**
 * 
 */

layui.use('layer',function() {
	var $ = layui.jquery, layer = layui.layer;
	
	$(document).on('click','button[name=signUp]',function(){
		var gidD=$(this);
		$.ajax({
			type:'post',
			url:'/front/groupbuying/addGroupDetail?gid='+gidD.val(),
			success:function(data){
				switch (data) {
				case "login":
					window.location.href="/gotoFront/login";
					break;
				case "have":
					layer.msg("亲，您已经报名过了哦,等凑够人数即可下单哦~", {
						tiem : 3000
					}, {
						icon : 2
					});
					break;
				default:
					layer.msg("恭喜亲报名成功，等凑够人数即可下单哦~", {
						tiem : 5000
					}, {
						icon : 2
					});
					break;
				}
			},
			error:function(){
				layer.msg("网络错误", {
					tiem : 2000
				}, {
					icon : 2
				});
			}
		})
	})
})