/*//字符长度
function getLength(str){
	return str.replace(/[^\x00-xff]/g,"xx").length;
}
//判断是否有相同的字符串
function findStr(str,n){
	var tmp=0;
	for(i=0;i<str.length;i++){
		if(str.charAt(i)==n){
			tmp++;
		}
	}
	return tmp;
}

//function password(){
//	var password=document.getElementById("passwd")
//	if(password.length){
//		password.
//	}
//	
//}
window.onload=function(){
	var aInput=document.getElementsByTagName('input');
	var oName=aInput[0];
	var oRadio=aInput[1];
	var oRadio=aInput[2];
	var oCard=aInput[3];
	var odate=aInput[4];
	var otell=aInput[5];
	var oaddress=aInput[6];
	//var aInput=document.getElementsByTagName('select');
	var oarea=aselect[7];
	var ouid=aInput[8];
	var pwd=aInput[9];
	var pwd2=aInput[10];
	
	var aP=document.getElementsByTagName('p');
	var name_msg=aP[0];
	var radio_msg=aP[1];
	var radio_msg=aP[2];
	var card_msg=aP[3];
	var birthday_msg=aP[4];
	var tell_msg=aP[5];
	var address_msg=aP[6];
	var area_msg=aP[7];
	var uid_msg=aP[8];
	var pwd_msg=aP[9];
	var pwd2_msg=aP[10];
	var count=document.getElementsByTagName('count');
	var aEm=document.getElementsByTagName('em');
    var name_length=0;
    var re=/[^\u4e00-\u9fa5]/g;
	//\u4e00-\u9fa5
	// var re=/{^\w\ue400-\u9fa5}/g;
	//用户姓名
    oName.onfocus=function(){
		name_msg.style.display="block";
		name_msg.innerHTML='<i class="ati"></i>请输入真实姓名，2-6个汉字'
	}
    oName.onkeyup=function(){
		count.style.visibility="visible";
		name_length=getLength(this.value);
		count.innerHTML=name_length+"个字符";
		if(name_length==0){
			count.style.visibility="hidden";
		}
	}
    oName.onblur=function(){
		//含有非法字符
		
		if(re.test(this.value)){
			name_msg.innerHTML='<i class="err"></i>请输入真实姓名'
		}
		//不能为空
		else if(this.value==""){
			name_msg.innerHTML='<i class="err"></i>不能为空！'
		}
		//长度超过26个字符
		else if (name_length>12){
			name_msg.innerHTML='<i class="err"></i>输入不合法，长度超过出限制'	
		}
		//长度少于4个字符
		else if (name_length<4){
			name_msg.innerHTML='<i class="err"></i>姓名输入不合法'	
		}
        //OK
		else{
			name_msg.innerHTML='<i class="ok"></i>√OK!'	
		}
	}
//性别	
	oRadio.onfocus=function(){
		radio_msg.style.display="block";
		radio_msg.innerHTML='<i class="ati"></i>请选择您的性别'
	}
	
	//身份证号
		oCard.onfocus=function(){
			card_msg.style.display="block";
			card_msg.innerHTML='<i class="ati"></i>请输入您的身份证号'
		}
		oCard.onkeyup=function(){
			count.style.visibility="visible";
			card_length=getLength(this.value);
			count.innerHTML=card_length+"个字符";
			if(card_length==0){
				count.style.visibility="hidden";
			}
		}
		oCard.onblur=function(){
			//含有非法字符
			var regid = /^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{4}$/; 
			if(regid.test(this.value)){
				card_msg.innerHTML='<i class="ok"></i>OK!'	
			}
			//不能为空
			else if(this.value==""){
				card_msg.innerHTML='<i class="err"></i>不能为空！'
			}
			
	        //OK
			else{
				
					card_msg.innerHTML='<i class="err"></i>请输入真实身份证号'
			}
		}
	
	
		//生日	
		odate.onfocus=function(){
			birthday_msg.style.display="block";
			birthday_msg.innerHTML='<i class="ati"></i>请选择您的性别'
		}
		
	
		//用户电话
		otell.onfocus=function(){
			tell_msg.style.display="block";
			tell_msg.innerHTML='<i class="ati"></i>请输入手机号码'
		}
		oCard.onkeyup=function(){
			count.style.visibility="visible";
			tell_length=getLength(this.value);
			count.innerHTML=tell_length+"个字符";
			if(tell_length==0){
				count.style.visibility="hidden";
			}
		}
		otell.onblur=function(){
			//含有非法字符
			var realtell=/^1[34578]\d{9}$/;
			if(realtell.test(this.value)){
				tell_msg.innerHTML='<i class="ok"></i>OK!'	
			}
			//不能为空
			else if(this.value==""){
				tell_msg.innerHTML='<i class="err"></i>不能为空！'
			}
			
	        //OK
			else{
				
					tell_msg.innerHTML='<i class="err"></i>请输入真实号码'
			}
		}
	
	
		
		//用户住址
		oaddress.onfocus=function(){
			address_msg.style.display="block";
			address_msg.innerHTML='<i class="ati"></i>请输入居住地地址'
		}
		
		address.onblur=function(){
			//含有非法字符
			
			if(re.test(this.value)){
				address_msg.innerHTML='<i class="err"></i>含不合法字符'
			}
			//不能为空
			else if(this.value==""){
				address_msg.innerHTML='<i class="err"></i>不能为空！'
			}
			
	        //OK
			else{
				address_msg.innerHTML='<i class="ok"></i>OK!'	
			}
		}
	
		
		//地域
		oarea.onfocus=function(){
			area_msg.style.display="block";
			area_msg.innerHTML='<i class="ati"></i>请选择所属地域'
		}
		
		oarea.onblur=function(){
			//含有非法字符
			
			if(re.test(this.value)){
				area_msg.innerHTML='<i class="err"></i>请输入真实姓名'
			}
			//不能为空
			else if(this.value==""){
				area_msg.innerHTML='<i class="err"></i>不能为空！'
			}
			
	        //OK
			else{
				area_msg.innerHTML='<i class="ok"></i>OK!'	
			}
		}
		
		//用户uid
		oName.onfocus=function(){
			uid_msg.style.display="block";
			uid_msg.innerHTML='<i class="ati"></i>请输入登录账号，4-26个字符，由字母和数字组成'
		}
		ouid.onkeyup=function(){
			count.style.visibility="visible";
			uid_length=getLength(this.value);
			count.innerHTML=uid_length+"个字符";
			if(uid_length==0){
				count.style.visibility="hidden";
			}
		}
		ouid.onblur=function(){
			//含有非法字符
			
			if(re.test(this.value)){
				uid_msg.innerHTML='<i class="err"></i>含不合法字符'
			}
			//不能为空
			else if(this.value==""){
				uid_msg.innerHTML='<i class="err"></i>不能为空！'
			}
			//长度超过26个字符
			else if (name_length>12){
				uid_msg.innerHTML='<i class="err"></i>长度超过12个字符'	
			}
			//长度少于4个字符
			else if (name_length<5){
				uid_msg.innerHTML='<i class="err"></i>长度少于5个字符'	
			}
	        //OK
			else{
				uid_msg.innerHTML='<i class="ok"></i>OK!'	
			}
		}
		
		
		
	
	//密码
	pwd.onfocus=function(){
		pwd_msg.style.display="block";
		pwd_msg.innerHTML='<i class="ati"></i>6-16个字符，请使用字母加数字多符号组成，不能单独使用字母、数字或符号组合'
	}
	pwd.onkeyup=function(){
		//大于5字符为“中”
		if(this.value.length>5){
			aEm[1].className="active";
			pwd2.removeAttribute("disabled");
			pwd2_msg.style.display="block";
		}
		else{
			aEm[1].className="";
			pwd2.setAttribute("disabled");
			pwd2_msg.style.display="none";
		}
		//大于十字符“强”
		if(this.value.length>5){
			aEm[2].className="active";
		}
		else{
			aEm[1].className="";
		}
	}
	pwd.onblur=function(){
		//调用函数判断
		var m=findStr(pwd.value,pwd.value[0]);
		//声明一个全为字母的正则
		var re_n=/{^\d}/g
		var re_t=/{^a-zA-Z}/g
			//不能为空
		if(this.value==""){
			pwd_msg.innERhtml='<i class="err"></i>不能为空！'
		}
		//不能用相同字符
		else if(m==this.value.length){
			pwd_msg.innerHTML='<i class="err"></>不能有相同字符串'
		}
		//长度应为6-16个字符
		else if(this.value.length<6||this.value.length>16){
			pwd_msg.innerHTML='<i class="err"></i>长度应为6-16个字符'
		}
		//不能全为数字
		else if(!re_n.test(this.value)){
			pwd_msg.innerHTML='<i class="err"</i>不能全为数字!'
		}
		//不能全为字母
		else if(!re_T.test(this.value)){
			pwd_msg.innerHTML='<i class="err"</i>不能全为字母!'
		}
		//OK
		else{
			pwd_msg.innerHTML='<i class="ok"</i>OK'
		}
	}
	//确认密码
	pwd2.onblur=function(){
		if(this.value!==pwd.value){
			pwd2_msg.innerHTML='<i class="err"</i>两次输入的密码不一致'
		}
		else{
			pwd2_msg.innerHTML='<i class="ok"</i>OK'
		}
	}
}*/