function titleCheck() {
	var reg = /^[\u4e00-\u9fa5]{1,7}$|^[\dA-Za-z_]{4,40}$/;
	var vtitle = document.getElementById("vtitle").value;
	if (vtitle.length == 0) {
		var str = "× 标题不能为空";
		document.getElementById("error1").innerHTML = str;
		return false;
	} else if (reg.test(vtitle)) {
		document.getElementById("error1").innerHTML = "";
		document.getElementById("success1").innerHTML = "√";
		return true;
	} else {
		var str = "× 标题长度在2-20"
		document.getElementById("vtitle").value = "";
		document.getElementById("vtitle").focus();
		document.getElementById("success1").innerHTML = "";
		document.getElementById("error1").innerHTML = str;
		return false;

	}

}

function teacherCheck(){
	var reg = /^([A-Za-z]|[\u4E00-\u9FA5])+$/;
	var vteacher = document.getElementById("vteacher").value;
	if (vteacher.length == 0) {
		var str = "× 教师不能为空";
		document.getElementById("error5").innerHTML = str;
		return false;
	}
   else if (vteacher.length <2||vteacher.length >10){
	var str = "× 长度应该在2-10"
	document.getElementById("vteacher").value = "";
	document.getElementById("vteacher").focus();
	document.getElementById("success5").innerHTML = "";
	document.getElementById("error5").innerHTML = str;
	return false;

  }
	else if (reg.test(vteacher)) {
		document.getElementById("error5").innerHTML = "";
		document.getElementById("success5").innerHTML = "√";
		return true;
	}else {
			var str = "× 输入非法"
			document.getElementById("vteacher").value = "";
			document.getElementById("vteacher").focus();
			document.getElementById("success5").innerHTML = "";
			document.getElementById("error5").innerHTML = str;
			return false;
	}
}
function priceCheck() {
	var reg = /[0-9]+(\.[0-9]+)?/;
	var vprice = document.getElementById("vprice").value;
	if (vprice.length == 0) {
		var str = "× 价格不能为空";
		document.getElementById("error2").innerHTML = str;
		return false;
	} else if (reg.test(vprice)) {
		document.getElementById("error2").innerHTML = "";
		document.getElementById("success2").innerHTML = "√";
		return true;
	} else {
		var str = "× 输入格式错误"
		document.getElementById("vprice").value = "";
		document.getElementById("vprice").focus();
		document.getElementById("success2").innerHTML = "";
		document.getElementById("error2").innerHTML = str;
		return false;

	}

}
function contentCheck() {
	var reg = /^.{6,512}$/;
	var vcontent = document.getElementById("vcontent").value;
	if (vcontent.length == 0) {
		var str = "× 内容不能为空";
		document.getElementById("error3").innerHTML = str;
		return false;
	} else if (reg.test(username)) {
		document.getElementById("error3").innerHTML = "";
		document.getElementById("success3").innerHTML = "√";
		return true;
	} else {
		var str = "× 长度不符合规范"
		document.getElementById("vcontent").value = "";
		document.getElementById("vcontent").focus();
		document.getElementById("success3").innerHTML = "";
		document.getElementById("error3").innerHTML = str;
		return false;

	}

}
function educontentCheck() {
	var reg = /^.{6,1024}$/;
	var educontent = document.getElementById("educontent").value;
	if (educontent.length == 0) {
		var str = "× 内容不能为空";
		document.getElementById("error6").innerHTML = str;
		return false;
	} else if (reg.test(educontent)) {
		document.getElementById("error6").innerHTML = "";
		document.getElementById("success6").innerHTML = "√";
		return true;
	} else {
		var str = "× 长度不符合规范"
		document.getElementById("educontent").value = "";
		document.getElementById("educontent").focus();
		document.getElementById("success6").innerHTML = "";
		document.getElementById("error6").innerHTML = str;
		return false;

	}

}
function checkUrl() {
	//var reg = /^[0-9a-z|A-Z]{6,12}$/;
	var vurl = document.getElementById("vurl").value;
	if (vurl.length == 0) {
		var str = "× 图片不能为空";
		document.getElementById("error4").innerHTML = str;
		return false;
	} else {
		document.getElementById("error4").innerHTML = "";
		document.getElementById("success4").innerHTML = "√";
		return true;
	}
}
function checkeduUrl() {
	//var reg = /^[0-9a-z|A-Z]{6,12}$/;
	var eduurl = document.getElementById("eduurl").value;
	if (eduurl.length == 0) {
		var str = "× 视频不能为空";
		document.getElementById("error7").innerHTML = str;
		return false;
	} else {
		document.getElementById("error7").innerHTML = "";
		document.getElementById("success7").innerHTML = "√";
		return true;
	}
}

function videocheck() {  
    if( titleCheck() && teacherCheck() && priceCheck() && contentCheck() && checkeduUrl()){ 
    return true;  
    }else{
    	return false;
    }
}

function edunewscheck() {  
    if( titleCheck() && teacherCheck() && educontentCheck() && checkUrl()){ 
    return true;  
    }else{
    	return false;
    }
}
