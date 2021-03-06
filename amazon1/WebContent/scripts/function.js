// JavaScript Document
window.onload = function() {
	showChater();
	scrollChater();
}
window.onscroll = scrollChater;
window.onresize = scrollChater;

function FocusItem(obj) {
	obj.parentNode.parentNode.className = "current";
	var msgBox = obj.parentNode.getElementsByTagName("span")[0];
	msgBox.innerHTML = "";
	msgBox.className = "";
}

function Checkexist() {
	var userName = document.getElementById("userName");
	var flag = true
	$.ajax({
		url : "CheckUserName",// 请求的servlet地址
		type : "POST",// 请求方式
		async : false,
		data : "userName=" + userName.value,// 发送到服务器的数据
		dataType : "text",// 设置返回数据类型
		success : function(test) {
			if (test == 1) {
				var msgBox = document.getElementById("uName");
				msgBox.style.display = "inline";
				msgBox.innerHTML = "Username exits!";
				flag = false;
			} else {
				var msgBox = document.getElementById("uName");
				msgBox.style.display = "inline";
				msgBox.innerHTML = null;
			}
		},// 响应成功后执行的回调方法data响应文本
		complete : function(XMLHttpRequest, statusText) {

		},// 响应完成后执行的回调方法
		error : function(XMLHttpRequest, statusText) {
			alert("Operation failure!")
		}// 响应失败后执行的回调方法
	})
	return flag;
}

function CheckItem(obj) {
	obj.parentNode.parentNode.className = "";
	var msgBox = obj.parentNode.getElementsByTagName("span")[0];
	var regEmail = /^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/;
	var regIdentity = /(^\d{15}$)|(^\d{17}([0-9]|X)$)/;
	var regMobile = /^1\d{10}$/;
	var regBirth = /^((19\d{2})|(200\d))-(0?[1-9]|1[0-2])-(0?[1-9]|[1-2]\d|3[0-1])$/;
	var regName = /^[a-zA-Z][a-zA-Z0-9]{3,15}$/;
	var regPass = /^[a-zA-Z0-9]{4,10}$/;
	switch (obj.name) {
	case "userName":
		if (obj.value == "" || regName.test(obj.value) == false) {
			msgBox.innerHTML = "User names cannot be empty and can only be the beginning of letters,ranging in length from 4 to 15";
			msgBox.className = "error";
			return false;
		} else {
			return Checkexist();
		}
		break;
	case "passWord":
		if (obj.value == "" || regPass.test(obj.value) == false) {
			msgBox.innerHTML = "Passwords cannot be empty and contain illegal characters, ranging in length from 4 to 10";
			msgBox.className = "error";
			return false;
		}
		break;
	case "rePassWord":
		if (obj.value == "") {
			msgBox.innerHTML = "Confirmation password cannot be empty";
			msgBox.className = "error";
			return false;
		} else if (obj.value != document.getElementById("passWord").value) {
			msgBox.innerHTML = "The passwords entered twice are different";
			msgBox.className = "error";
			return false;
		}
		break;
	case "veryCode":
		if (obj.value == "") {
			msgBox.innerHTML = "Verification code cannot be empty";
			msgBox.className = "error";
			return false;
		} else {
			return checkValidateCode();
		}
		break;
	case "birthday":
		if (obj.value == "" || regBirth.test(obj.value) == false) {
			msgBox.innerHTML = "The date of birth can not be empty, the format is (1990-01-01)";
			msgBox.className = "error";
			return false;
		}
		break;
	case "identity":
		if (obj.value == "" || regIdentity.test(obj.value) == false) {
			msgBox.innerHTML = "Input ID number is not the right length, or the number does not meet the requirements! The \n15 digit number should be all digits, and the last digit of the 18 digit number can be digits or X.";
			msgBox.className = "error";
			return false;
		}
		break;
	case "email":
		if (obj.value == "" || regEmail.test(obj.value) == false) {
			msgBox.innerHTML = "E-mail cannot be empty in web@sohu.com";
			msgBox.className = "error";
			return false;
		} else {
			return emailExist();
		}
		break;
	case "mobile":
		if (regMobile.test(obj.value) == false) {
			msgBox.innerHTML = "Mobile phones can't be empty. They must be 11 bits and only digital.";
			msgBox.className = "error";
			return false;
		}
		break;
	case "address":
		if (obj.value == "") {
			msgBox.innerHTML = "Address cannot be empty";
			msgBox.className = "error";
			return false;
		}
		break;
	}
	return true;
}

function checkForm(frm) {
	var els = frm.getElementsByTagName("input");

	for (var i = 0; i < els.length; i++) {

		if (!CheckItem(els[i]))
			return false;
	}
	return true;
}

/*function showChater() {
	var _chater = document.createElement("div");
	_chater.setAttribute("id", "chater");
	var _dl = document.createElement("dl");
	var _dt = document.createElement("dt");
	var _dd = document.createElement("dd");
	var _a = document.createElement("a");
	_a.setAttribute("href", "#");
	_a.onclick = openRoom;
	_a.appendChild(document.createTextNode("在线聊天"));
	_dd.appendChild(_a);
	_dl.appendChild(_dt);
	_dl.appendChild(_dd);
	_chater.appendChild(_dl);
	document.body.appendChild(_chater);
}*/

function openRoom() {
	window.open("chat-room.jsp", "chater",
			"status=0,scrollbars=0,menubar=0,location=0,width=600,height=400");
}

function scrollChater() {
	var chater = document.getElementById("chater");
	var scrollTop = document.documentElement.scrollTop;
	var scrollLeft = document.documentElement.scrollLeft;
	chater.style.left = scrollLeft + document.documentElement.clientWidth - 92
			+ "px";
	chater.style.top = scrollTop + document.documentElement.clientHeight - 25
			+ "px";
}

function inArray(array, str) {
	for (a in array) {
		if (array[a] == str)
			return true;
	}
	return false;
}

function emailExist() {
	var flag = true
	var email = $("[name=email]").val()
	$.ajax({
		url : "CheckEmail",// 请求的servlet地址
		type : "POST",// 请求方式
		data : "email=" + email,// 发送到服务器的数据
		async : false,
		dataType : "text",// 设置返回数据类型
		success : function(test) {
			if (test == 1) {
				var msgBox = document.getElementById("uemail");
				msgBox.style.display = "inline";
				msgBox.innerHTML = "This email has been registered!";
				flag = false;
			} else {
				var msgBox = document.getElementById("uemail");
				msgBox.style.display = "inline";
				msgBox.innerHTML = null;

			}
		},// 响应成功后执行的回调方法data响应文本
		complete : function(XMLHttpRequest, statusText) {

		},// 响应完成后执行的回调方法
		error : function(XMLHttpRequest, statusText) {
			alert("Operation faliure!")
		}// 响应失败后执行的回调方法
	})
	return flag;
}

function checkValidateCode() {
	var veryCode = $("[name=veryCode]").val()
	var flag = true;
	$.ajax({
		url : "checkCode",// 请求的servlet地址
		type : "POST",// 请求方式
		async : false,
		data : "veryCode=" + veryCode,// 发送到服务器的数据
		dataType : "text",// 设置返回数据类型
		success : function(test) {
			if (test != 1) {
				var msgBox = document.getElementById("Code");
				msgBox.style.display = "inline";
				msgBox.innerHTML = "Verification code wrong!";
				flag = false;
			} else {
				var msgBox = document.getElementById("Code");
				msgBox.style.display = "inline";
				msgBox.innerHTML = null;
			}
		}
	})
	return flag
}

function loginCheck() {

	if ($("[name=userName]").val() == "") {
		alert("Please enter your username!")
		return false;
	}

	if ($("[name=passWord]").val() == "") {
		alert("Please enter your password!")
		return false;
	}

	if ($("[name=veryCode]").val() == "") {
		alert("Please enter the verification code!")
		return false;
	} else {
		return checkValidateCode();
	}

}

//找回密码
function repasswordCheck() {
	
	if ($("[name=userName]").val() == "") {
		alert("Please enter your username!")
		return false;
	}
	
	if ($("[name=uName]").val() == "") {
		alert("Please enter your real name!")
		return false;
	}
	
	if ($("[name=email]").val() == "") {
		alert("Please enter your e-mail address!")
		return false;
	} 
}
