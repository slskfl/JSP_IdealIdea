function boardCheck() {
	if(document.frm.name.value.length==0){ 
		alert("작성자를 입력하세요."); 
		document.frm.name.focus();
		return false; 
	} 
	if(document.frm.email.value.length==0){ 
		alert("이메일을 입력하세요."); 
		document.frm.email.focus();
		return false; 
	} 
	if(document.frm.title.value.length==0){ 
		alert("제목을 입력하세요."); 
		document.frm.title.focus();
		return false; 
	}
	if(document.frm.content.value.length==0){ 
		alert("내용을 입력하세요."); 
		document.frm.content.focus();
		return false; 
	}
	return true;
} 

function updateCheck() {
	if(boardCheck()){
		if(confirm("수정하시겠습니까?")){
			return true;
		} else{
			return false;
		}	
	}
	return false;
}

function deleteCheck(url) {
	if(confirm("삭제하시겠습니까?")){
		location.href=url;
		return true;
	}else {
		return false;
	}
	return true;
}