//.serialize()
$("button[name='loginBtn']").click(function() {
	var oldUsers = $("form[name='forms']");
	$.ajax({
		type : 'post',
		url : '/front/oldman/friend/updateAddress',
		data : oldUsers.serialize(),
		success : function(data) {
			if (data.toString() == "true") {
				window.location.href = "/"
			} else {
				alert(data.toString());
				sleepDate(3,data.toString());
			}
		}
	})
})


function sleepDate(times,data) {
	$("div[ErroyDiv]").css("display", "block");
	$("div[ErroyDiv]").empty();
	var t = '<label style="color: red">'+data+'</label>';
	$("div[ErroyDiv]").append(t);
    var s=times;
    var t=setInterval(function () {
        if(s>0){
            s--;
        }else {
            $("div[ErroyDiv]").css("display","none");
            clearInterval(t);
        }
    },1000);
}