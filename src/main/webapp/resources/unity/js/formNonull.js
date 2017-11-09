/**
 * 
 */

function formInputNoNull() {
	var data = $("input[NoNull]");
	var flg = true;
	if (data != undefined) {
		data.each(function(index, element) {
			var va_txt = $(element).val();
			if (va_txt.trim().length < 1) {
				$(element).focus();
				flg = false;
				$(element).after('<label err="" style="width: 140px;font-size: 10px;line-height: 35px;margin-left: 10px;color: red;" >该项不能为空</label>');
				return false;
			}
		})
	}
	return flg;
}

function formTextNoNull() {
	var data = $("textarea[NoNull]");
	var flg = true;
	// var h = '<label err="" style="color:red;font-size:12px"
	// for="exampleInputName2">不能为空</label>';
	if (data != undefined) {
		data.each(function(index, element) {
			var va_txt = $(element).val();
			if (va_txt.trim().length < 1) {
				$(element).focus();
				flg = false;
				dcooxx($(element), false);
				// $(element).after(h);
				return false;
			}
		})
	}
	return flg;
}

function rmvErr() {
	var x = 3;
	var data = $("label[err]");
	var interval = setInterval(function() {
		if (x <= 0) {
			if (data != undefined) {
				data.each(function(index, element) {
					$(element).remove();
				})
			}
		}
		x--;
	}, 1000)

}

function dcooxx(d, tag) {
	if (tag) {
		if (d.next().text() != "✔") {
			d.after('<label succ="" style="width: 140px;font-size: 24px;line-height: 35px;margin-left: 10px;color: green;" >✔</label>');
		}
	} else {
		if (d.next().text() != "✘") {
			d.after('<label err="" style="width: 140px;font-size: 24px;line-height: 35px;margin-left: 10px;color: red;" >✘</label>');
		}
	}
}

// 中文验证
function isChinese() {
	var data = $("input[china]");
	var flg = false;
	if (data != undefined) {
			var va_txt = data.val();
			if(va_txt.trim().length>=6){
				var pattern = /^[\u4E00-\u9FA5]{6,16}$/;
				flg = !pattern.test(va_txt);
				dcooxx(data,flg);
				if(flg==false){
					data.focus();
					return false;
				}
			}else{
				dcooxx(data,false);
			}
	}
	return flg;
}

// 电话验证
function isPhones() {
	var pattern = /^1[34578]\d{9}$/;
	var p = $("input[phone]");
	var tgl = false;
	if (p != undefined) {
			var va_txt = p.val();
			tgl = pattern.test(va_txt);
			dcooxx($("input[phone]"), tgl);
			if (tgl == false) {
				p.focus();
				return false;
			}
	}
	return tgl;
}

// 验证身份证
function isCardNo() {
	var pattern = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
	var p=$("input[idcard]");
	var tgl = false;
	if (p != undefined) {
			var va_txt = p.val();
			tgl = pattern.test(va_txt);
			dcooxx(p,tgl);
			if(tgl==false){
				p.focus();
				return false;
			}
	}
	return tgl;
}
//密码验证
function isPassword(){
	var pattern=/^[0-9a-zA-Z_]{6,16}$/;
	var p=$("input[name='password']");
	var tgl = false;
	if (p != undefined) {
		p.each(function(index, element) {
			var va_txt = $(element).val();
			tgl = pattern.test(va_txt);
			dcooxx($(element),tgl);
			if(tgl==false){
				$(element).focus();
				return false;
			}
		})
	}
	return tgl;
}
