	//重新产生验证码
	function changeValidateCode(obj) {
		// 获取当前的时间作为参数，无具体意义
		var timenow = new Date().getTime();
		// 每次请求需要一个不同的参数，否则可能会返回同样的验证码
		// 这和浏览器的缓存机制有关系，也可以把页面设置为不缓存，这样就不用这个参数了。
		obj.src = "randAction?d=" + timenow;
	}
	// $方法
	function $(id) {
		return document.getElementById(id);
	}
	// 验证用户名
	function userNameValidate() {
		var userName = $("userName").value;
		if (userName == null || userName == "") {
			pleaseInputUserName.style.display = "inline";
			$("userName").focus();
			return false;
		}
		return true;
	}
	// 验证密码
	function passWordValidate() {
		var passWord = $("passWord").value;
		if (passWord == null || passWord == "") {
			pleaseInputPassWord.style.display = "inline";
			$("passWord").focus();
			return false;
		}
		return true;
	}
	// 验证码验证
	function randValidate() {
		var rand = $("rand").value;
		if (rand == null || rand == "") {
			pleaseInputRand.style.display = "inline";
			$("rand").focus();
			return false;
		}
		return true;
	}
	// 全部验证
	function validateAll(){
		if(userNameValidate()&&passWordValidate()&&randValidate()){
			return true;
		}
		return false;
	}
	// 清空信息
	function clearUserNameMsg(){
		var userName = $("userName").value;
		if (userName != null || userName != "") {
			pleaseInputUserName.style.display = "none";
		}
	}
	function clearPassWordMsg(){
		var passWord = $("passWord").value;
		if (passWord != null || passWord != "") {
			pleaseInputPassWord.style.display = "none";
		}
	}
	function clearRandMsg(){
		var rand = $("rand").value;
		if (rand != null || rand != "") {
			pleaseInputRand.style.display = "none";
		}
	}
