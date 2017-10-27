//字符长度
function getLength(str){
	return str.replace(/[^\x00-xff]/g,"xx").lentgh;
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
window.onload=function(){
	var aInput=document.getElementsByTagName('input');
	var oName=aInput[0];
	var pwd=aInput[1];
	var pwd2=aInput[2];
	var aP=document.getElementsByTagName('p');
	var name_msg=aP[0];
	var pwd_msg=aP[1];
	var pwd2_msg=aP[2];
	var count=document.getElementsByTagName('count');
	var aEm=document.getElementsByTagName('em');
var name_length=0;
	//\u4e00-\u9fa5
	// var re=/{^\w\ue400-\u9fa5}/g;
	//用户名
	oName.onfocus=function(){
		name_msg.style.display="block";
		name_msg.innerHTML='<i class="ati"></i>请输入真实姓名，4-26个字符， 汉字为两个字符，'
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
		var re=/{^\w\ue400-\u9fa5}/g;
		if(re.test(this.value)){
			name_msg.innerHTML='<i class="err"></i>含有非法字符'
		}
		//不能为空
		else if(this.value==""){
			name_msg.innerHTML='<i class="err"></i>不能为空！'
		}
		//长度超过26个字符
		else if (name_length>26){
			name_msg.innerHTML='<i class="err"></i>姓名长度不合法'		
		}
		//长度少于4个字符
		else if (name_length<4){
			name_msg.innerHTML='<i class="err"></i>姓名不合法，请输入真实姓名'		
		}
        //OK
		else{
			name_msg.innerHTML='<i class="ok"></i>OK'		
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
	pwd2.onfocus=function(){
		
	}
	pwd2.onkeyup=function(){
		
	}
	pwd2.onblur=function(){
		if(this.value!==pwd.value){
			pwd_msg.innerHTML='<i class="err"</i>两次输入的密码不一致'
		}
		else{
			pwd_msg.innerHTML='<i class="ok"</i>OK'
		}
	}
}