/**
 * 
 */


function titleIsNull(){
	var title = document.getElementById("title");
	if(title.value==""||title.value==null){
		alert("标题不能为空！");
		return false;
	}
	else if(getByte(title)>64){
		alert("长度超过限制！");
		document.getElementById("title").value="";
		return false;
	}
		priceIsNull();
}

function priceIsNull(){
	var price = document.getElementById("price");
	if(price.value==""){
		alert("请填写价格！");
		return false;
	}
	else if(price.value<0){
		alert("价格不可以为负数！");
		document.getElementById("price").value="";
		return false;
	}
		checkTeacher();
}

function checkTeacher(){
	var teacher = document.getElementById("teacher");
	if(teacher.value == null||teacher.value==""){
		alert("请填写教师姓名！");
		return false;
	}
	else if(getByte(teacher)>32){
		alert("教师名字过长，请重新输入！");
		document.getElementById("teacher").value="";
		return false;
	}
		checkLocation();	
}

function checkLocation(){
	var location = document.getElementById("location");
	if(location.value == null||location.value ==""){
		alert("请设置活动地址！");
		return false;
	}
	else if(getByte(location)>128){
		alert("字数过多，请重新输入！");
		document.getElementById("location").value="";
		return false;
	}
		checkStarttime();
}

function checkStarttime(){
	var starttime = document.getElementById("starttime");
	if(starttime.value==""||starttime.value==null){
		alert("请输入开始日期！");
		return false;
	}
	checkEndtime();
}

function checkEndtime(){
	var endtime = document.getElementById("endtime");
	if(endtime.value==""||endtime.value==null){
		alert("请输入结束日期");
		return false;
	}
	checkStoptime();
}

function checkStoptime(){
	var stoptime = document.getElementById("stoptime");
	if(stoptime.value==""||stoptime.value==null){
		alert("请输入截止日期");
		return false;
	}
	checkContext();
}

function checkContext(){
	var context = document.getElementById("context");
	if(context.value==null||context.value==""){
		alert("请输入具体描述！");
		return false;
	}
	else if(getByte(context)>512){
		alert("输入的内容太多了，请删除一些！");
		return false;
	}
	var f = document.getElementById("f");
	f.submit();
}




function getByte(subject){
	var sub = subject.value;
	var len = 0;
	for(var i = 0; i < sub.length; i++){
		var a = sub.charAt(i);
		if(a.match(/[^\x00-\xff]/ig)!=null){
			len += 2;
		}
		else{
			len += 1;
		}
	}
	return len;
}

/*function checkTitleLenth(title){
	
	var maxChars = 64;
	var restChars = maxChars - getTitleByte(title.value);
	if(restChars > 0){
		document.getElementById("checkLenth").innerHTML = restChars.toString;
	}
	else{
		document.getElementById("checkLenth").innerHTML = 0;
		document.getElementById("title").readonly = true;
	}
}*/

