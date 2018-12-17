//上一页方法
function lastPage() {

	var totalPage = $("#totalPage").val()
	var cate = $("#cate").val()
	var pid = $("#pid").val()
	var pageNo = parseInt($("#currentPage").val())
	var name = $("#queryName").val()

	if (name == null) {
		name = 0;
	}

	if (pageNo == 1) {
		alert("It's already the first page!")
	} else {
		pageNo = pageNo - 1
		window.location.href = "ref?cate=" + cate + "&page=" + pageNo + "&pid="
				+ pid + "&qname=" + name
	}
}

// 下一页方法
function nextPage() {

	var totalPage = $("#totalPage").val()
	var cate = $("#cate").val()
	var pid = $("#pid").val()
	var pageNo = parseInt($("#currentPage").val())
	var name = $("#queryName").val()

	if (name == null) {
		name = 0;
	}

	if (pageNo == parseInt(totalPage)) {
		alert("It's already the last page!")
	} else {
		pageNo = pageNo + 1
		window.location.href = "ref?cate=" + cate + "&page=" + pageNo + "&pid="
				+ pid + "&qname=" + name
	}

}

function queryProducts() {
	var qname = $("#qname").val()
	if (qname == null) {
		alert("Please enter the name of product you want!")
	} else {
		window.location.href = "index.jsp?qname=" + qname

	}

}
