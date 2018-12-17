// JavaScript Document
function Delete(id)
{
	if(confirm("Sure to delete?")) {
		open("ProductClassServlet?action=remove&hpcId=" + id,"_self");
	}
}

