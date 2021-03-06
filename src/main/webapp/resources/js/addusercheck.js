function usenameCheck() {
	var reg = /^[\u4e00-\u9fa5]{2,6}$/;
	var username = document.getElementById("username").value;
	if (username.length == 0) {
		var str = "× 姓名不能为空";
		document.getElementById("error1").innerHTML = str;
		return false;
	} else if (reg.test(username)) {
		document.getElementById("error1").innerHTML = "";
		document.getElementById("success1").innerHTML = "√";
		return true;
	} else {
		var str = "× 真实姓名为2-6个汉字"
		document.getElementById("username").value = "";
		document.getElementById("username").focus();
		document.getElementById("success1").innerHTML = "";
		document.getElementById("error1").innerHTML = str;
		return false;

	}

}

function checkCard() {
	var reg = /^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{4}$/;
	var idcard = document.getElementById("idcard").value;
	if (idcard.length == 0) {
		var str = "× 身份证号不能为空";
		document.getElementById("error2").innerHTML = str;
		return false;
	} else if (reg.test(idcard)) {
		document.getElementById("error2").innerHTML = "";
		document.getElementById("success2").innerHTML = "√";
		return true;
	} else {
		var str = "× 请输入真实的身份证号"
		document.getElementById("idcard").value = "";
		document.getElementById("idcard").focus();
		document.getElementById("success2").innerHTML = "";
		document.getElementById("error2").innerHTML = str;
		return false;

	}

}

function checkTell() {
	var reg = /^1[34578]\d{9}$/;
	var tell = document.getElementById("tell").value;
	if (tell.length == 0) {
		var str = "× 电话号码不能为空";
		document.getElementById("error3").innerHTML = str;
		return false;
	} else if (reg.test(tell)) {
		document.getElementById("error3").innerHTML = "";
		document.getElementById("success3").innerHTML = "√";
		return true;
	} else {
		var str = "× 请输入有效的电话号码"
		document.getElementById("tell").value = "";
		document.getElementById("tell").focus();
		document.getElementById("success3").innerHTML = "";
		document.getElementById("error3").innerHTML = str;
		return false;

	}

}
function checkAddress() {
	var reg = 一 - 龥;
	var address = document.getElementById("address").value;
	if (address.length == 0) {
		var str = "× 地址不能为空";
		document.getElementById("error4").innerHTML = str;
		return false;
	} else if (reg.test(address)) {
		document.getElementById("error4").innerHTML = "";
		document.getElementById("success4").innerHTML = "√";
		return true;
	} else {
		var str = "× 输入非法";
		document.getElementById("address").value = "";
		document.getElementById("address").focus();
		document.getElementById("success4").innerHTML = "";
		document.getElementById("error4").innerHTML = str;
		return false;

	}

}

function uidCheck() {
	//	var reg=/^[0-9a-z|A-Z]{6,12}$/; 
	var reg = /[a-zA-Z0-9]+$/;
	var uid = document.getElementById("uid").value;
	if (uid.length == 0) {
		var str = "× 用户名不能为空";
		document.getElementById("error5").innerHTML = str;
		return false;
	} else if (uid.length < 6 || uid.length > 12) {
		var str = "× 用户名不能小于6位且不能大于12位字母与数字的组合！";
		document.getElementById("uid").value = "";
		document.getElementById("uid").focus();
		document.getElementById("error5").innerHTML = str;
		return false;
	}
	/*else{

			 document.getElementById("error2").innerHTML="";
			// document.getElementById("useid").focus();
			 document.getElementById("error2").innerHTML="√";
		   } */
	else if (reg.test(uid)) {
		document.getElementById("error5").innerHTML = "";
		document.getElementById("success5").innerHTML = "√";
		return true;
	} else {
		var str = "× 用户名由6-12个数字和字母组成！"
		document.getElementById("uid").value = "";
		document.getElementById("uid").focus();
		document.getElementById("success5").innerHTML = "";
		document.getElementById("error5").innerHTML = str;
		return false;
	}
}


function passwordCheck() {
	var reg = /^[0-9a-z|A-Z]{6,20}$/;
	var password = document.getElementById("password").value;
	if (password.length == 0) {
		var str = "× 密码不能为空";
		document.getElementById("error6").innerHTML = str;
		return false;
	} else if (reg.test(password)) {
		document.getElementById("error6").innerHTML = "";
		document.getElementById("success6").innerHTML = "√";
		return true;
	} else {
		var str = "× 密码由6-20个数字和字母组成！"
		document.getElementById("password").value = "";
		document.getElementById("password").focus();
		document.getElementById("success6").innerHTML = "";
		document.getElementById("error6").innerHTML = str;
		return false;
	}
}

function pass_wdCheck() {
	var passwd = document.getElementById("password").value;
	var pass_wd = document.getElementById("pass_wd").value;
	if (pass_wd.length == 0) {
		var str = "× 不能为空！"
		document.getElementById("pass_wd").value = "";
		document.getElementById("pass_wd").focus();
		document.getElementById("success7").innerHTML = "";
		document.getElementById("error7").innerHTML = str;
		return false;
	} else {
		if (pass_wd == passwd) {
			document.getElementById("error7").innerHTML = "";
			document.getElementById("success7").innerHTML = "√";
			return true;
		} else {
			var str = "× 两次输入的密码不一致！"
			document.getElementById("pass_wd").value = "";
			document.getElementById("pass_wd").focus();
			document.getElementById("success7").innerHTML = "";
			document.getElementById("error7").innerHTML = str;
			return false;
		}
	}

}

/*验证图片格式*/
function checkFile(ext) {
	if (!ext.match(/.mp4/i)) {
		return false;
	}
	return true;
}
function checkUrl() {
	//var reg = /^[0-9a-z|A-Z]{6,12}$/;
	var userurl = document.getElementById("userurl").value;
	if (userurl.length == 0) {
		var str = "× 图片不能为空";
		document.getElementById("error8").innerHTML = str;
		return false;
	} else if (!checkFileExt(eduurl)) {
		var str = "× 您上传的不是图片,请重新上传！";
		document.getElementById("error8").innerHTML = str;
		return false;
	} else if (size > 1024) {
		var str = "× 您上传的图片大小控制 在1M以内,请重新上传！";
		document.getElementById("error8").innerHTML = str;
		return false;
	} else if (checkFileExt(eduurl) && (size < 1024)) {

		document.getElementById("error8").innerHTML = "";
		document.getElementById("success8").innerHTML = "√";
		return true;
	} else {
		var str = "× 上传错误,请重新上传！";
		document.getElementById("error8").innerHTML = str;
		return false;
	}
}

function checkBirthday() {
	var birthday = document.getElementById("birthday").value;
}
if (birthday.length == 0) {
	var str = "× 日期不能为空";
	document.getElementById("error9").innerHTML = str;
	return false;
} else {
	document.getElementById("error9").innerHTML = "";
	document.getElementById("success9").innerHTML = "√";
	return true;
}

//为用户充值
function balanceCheck() {
	var reg = /[0-9]+(\.[0-9]+)?/;
	var balance = document.getElementById("balance").value;
	if (balance.length == 0) {
		var str = "× 金额不能为空";
		document.getElementById("error10").innerHTML = str;
		return false;
	} else if (reg.test(balance)) {
		document.getElementById("error10").innerHTML = "";
		document.getElementById("success10").innerHTML = "√";
		return true;
	} else {
		var str = "× 输入格式错误"
		document.getElementById("balance").value = "";
		document.getElementById("balance").focus();
		document.getElementById("success10").innerHTML = "";
		document.getElementById("error10").innerHTML = str;
		return false;

	}

}

function userscheck() {
	if (usenameCheck() && checkCard() && checkTell() && checkAddress()
		&& uidCheck() && passwordCheck() && pass_wdCheck() && checkUrl() && checkBirthday()) {
		return true;
	} else {
		return false;
	}
}
function checkbalance() {
	if (balanceCheck()) {
		return true;
	} else {
		return false;
	}
}
