/**
 * 
 */


function commentCheck(){
	
	if($("[name=guestName]").val()==""){
		alert("Please enter your nickname!")
		return false;
	}
	
	if($("[name=guestTitle]").val()==""){
		alert("Please enter your title!")
		return false;
	}
	
	if($("[name=guestContent]").val()==""){
		alert("Please enter your comment!")
		return false;
	}
	
	return true;
}
