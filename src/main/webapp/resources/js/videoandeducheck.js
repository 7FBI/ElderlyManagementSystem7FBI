//下拉框滚动条
function selectFocus(){  
        document.getElementById("select").setAttribute("size","6");  
    }  
    function selectClick(){  
        document.getElementById("select").removeAttribute("size");  
        document.getElementById("select").blur();  
        this.setAttribute("selected","");  
    } 

function titleCheck(){
	/*var reg = /^[\u4e00-\u9fa5]{2,20}$|^[\dA-Za-z_]{2,20}$/;*/
	var reg =/^([A-Za-z]|[\u4E00-\u9FA5])+$/;
	var vtitle = document.getElementById("vtitle").value;
	if (vtitle.length == 0) {
		var str = "× 标题不能为空";
		document.getElementById("error1").innerHTML = str;
		return false;
	}  else if (vtitle.length <2||vtitle.length >40){
		var str = "× 标题长度在2-40"
			document.getElementById("vtitle").value = "";
			document.getElementById("vtitle").focus();
			document.getElementById("success1").innerHTML = "";
			document.getElementById("error1").innerHTML = str;
			return false;
	}else if (reg.test(vtitle)) {
		document.getElementById("error1").innerHTML = "";
		document.getElementById("success1").innerHTML = "√";
		return true;
	} else {
		var str = "× 输入非法"
		document.getElementById("vtitle").value ="";
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
	var reg = /^.{50,200}$/;
	var vcontent = document.getElementById("vcontent").value;
	if (vcontent.length == 0) {
		var str = "× 内容不能为空";
		document.getElementById("error3").innerHTML = str;
		return false;
	} else if (reg.test(vcontent)) {
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
	/*var reg = /^.{200,5000}$/;
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

	}*/
	return true;

}
function checkUrl() {
	//var reg = /^[0-9a-z|A-Z]{6,12}$/;
	var eduurl = document.getElementById("eduurl").value;
	var size=findSize(eduurl);
	if (eduurl.length == 0) {
		var str = "× 图片不能为空";
		document.getElementById("error4").innerHTML = str;
		return false;
	}else if (!checkFileExt(eduurl)) {
            var str = "× 您上传的不是图片,请重新上传！";
    		document.getElementById("error4").innerHTML = str;
    		return false;
        }
	else if (size>1024) {
        var str = "× 您上传的图片大小控制 在1M以内,请重新上传！";
		document.getElementById("error4").innerHTML = str;
		return false;
    }
       else if (checkFileExt(eduurl)&&(size<1024)) {
    		       
            	document.getElementById("error4").innerHTML = "";
        		document.getElementById("success4").innerHTML = "√";
        		return true;  	
    }else {
    	var str = "× 上传错误,请重新上传！";
		document.getElementById("error4").innerHTML = str;
		return false;
	}
}
/*验证图片格式*/
function checkFileExt(ext) {
    if (!ext.match(/.jpg|.gif|.png|.bmp/i)) {
        return false;
    }
    return true;
}
/*验证图片大小*/
function findSize(field_id){
          var fileInput = $("#"+field_id)[0];
          byteSize  = fileInput.files[0].fileSize;
       return ( Math.ceil(byteSize / 1024) ); // Size returned in KB.
}
/*-=====*/
/*验证图片格式*/
function checkFile(ext) {
    if (!ext.match(/.mp4/i)) {
        return false;
    }
    return true;
}
/*验证图片大小*/
function findSize(field_id){
          var fileInput = $("#"+field_id)[0];
          byteSize  = fileInput.files[0].fileSize;
       return ( Math.ceil(byteSize / 1024) ); // Size returned in KB.
}
function checkvideoUrl() {
	//var reg = /^[0-9a-z|A-Z]{6,12}$/;
	var vurl = document.getElementById("vurl").value;
	if (vurl.length == 0) {
		var str = "× 视频不能为空";
		document.getElementById("error7").innerHTML = str;
		return false;
	} else if (!checkFile(vurl)) {
        var str = "× 请上传格式为MP4的视频！";
		document.getElementById("error7").innerHTML = str;
		return false;
    }else if (checkFile(vurl)) {
    
	document.getElementById("error7").innerHTML = "";
	document.getElementById("success7").innerHTML = "√";
	return true;  	
}else {
var str = "× 上传错误,请重新上传！";
document.getElementById("error7").innerHTML = str;
return false;
}
}

function videocheck() {  
    if( titleCheck() && teacherCheck() && priceCheck() && contentCheck() && checkvideoUrl()){ 
    return true;  
    }else{
    	return false;
    }
}

function edunewscheck() {  
    if(titleCheck() && teacherCheck() && educontentCheck() && checkUrl()){ 
    return true;  
    }else{
    	return false;
    }
}
//搜索框的验证
function searchContent() {  
	var reg = /^[\u4e00-\u9fa5]{2,16}$/;
	var mysearch = document.getElementById("mysearch").value;
	if (mysearch.length == 0) {
		var str = "× 请输入需要查询的内容";
		document.getElementById("error1").innerHTML = str;
		return false;
	} else if (reg.test(mysearch)) {
		document.getElementById("error1").innerHTML = "";
		document.getElementById("success1").innerHTML = "";
		return true;
	} else {
		var str = "× 输入不规范"
		document.getElementById("mysearch").value = "";
		document.getElementById("mysearch").focus();
		document.getElementById("success1").innerHTML = "";
		document.getElementById("error1").innerHTML = str;
		return false;
	}
}
function searchCheck() {  
    if(searchContent()){ 
    return true;  
    }else{
    	return false;
    }
}