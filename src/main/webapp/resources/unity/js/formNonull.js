/**
 * 
 */

function formInputNoNull() {
			var data = $("input[NoNull]");
			var flg = true;
			var h = '<label err="" style="color:red;font-size:12px" for="exampleInputName2">不能为空</label>';
			if (data != undefined) {
				data.each(function(index, element) {
					var va_txt = $(element).val();
					if (va_txt.trim().length < 1) {
						$(element).focus();
						flg = false;
						$(element).after(h);
						return false;
					}
				})
			}
			return flg;
		}

		function formTextNoNull() {
			var data = $("textarea[NoNull]");
			var flg = true;
			var h = '<label err="" style="color:red;font-size:12px" for="exampleInputName2">不能为空</label>';
			if (data != undefined) {
				data.each(function(index, element) {
					var va_txt = $(element).val();
					if (va_txt.trim().length < 1) {
						$(element).focus();
						flg = false;
						$(element).after(h);
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