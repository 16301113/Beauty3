function addToCart(pid) {
	
	var stock=$("#stock").html()
	var count=$("#count").val()
	
	if(parseInt(count)>parseInt(stock)){
		alert("The quantity you choose exceeds the inventory!")
	}else{
		$.ajax({
			url : "addToCart",// 请求的servlet地址
			type : "POST",// 请求方式
			data : "Pid=" + pid+"_"+count,// 发送到服务器的数据
			dataType : "text",// 设置返回数据类型
			success : function(total) {
				$("#cartCount").html(total);
				alert("Successfully added to the shopping cart!")
			},// 响应成功后执行的回调方法data响应文本
			complete : function(XMLHttpRequest, statusText) {
				
			},// 响应完成后执行的回调方法
			error : function(XMLHttpRequest, statusText) {
				alert("Failed to add to shopping cart!")
			}// 响应失败后执行的回调方法
		})
	}

}

function goingToBuy(pid) {
	window.location.href="goingToBuy?id="+pid+"_"+$("#count").val();
	
}

//-按钮事件
function minus(){

	if($("#count").val()==1){
		$("#count").val(1)
	}else if($("#count").val()>=2){
		var old=$("#count").val()
		$("#count").val(parseInt(old)-1)
	}
}

//+按钮事件
function add(){
	var stock=$("#stock").html()
	var old=$("#count").val()
	if(parseInt(old)<parseInt(stock)){
		$("#count").val(parseInt(old)+1)
	}else{
		alert("The quantity you choose exceeds the inventory!")
	}
	
}



function checkStock(){
	var stock=$("#stock").html()
	var old=$("#count").val()
	if(parseInt(old)>parseInt(stock)){
		alert("The quantity you choose exceeds the inventory!")
	}
}



function remaind() {
	alert("Please Login in first!")
	window.location.href="login.jsp"
}




