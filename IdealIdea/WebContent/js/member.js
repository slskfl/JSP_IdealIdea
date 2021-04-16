function joinCheck(){
	 var input=document.frm;
	 if(!input.userid.value){
	      alert("아이디 입력하세요.");
	      input.userid.focus();
	      return false;
	 }else if(input.userid.value.length<4){
	      alert("아이디는 4글자 이상 입력해주세요.");
	      input.userid.focus();
	      return false;
	 }else if(!input.name.value){
	      alert("이름을 입력하세요.");
	      input.name.focus();
	      return false;
	 }else if(!input.pw.value){
		   alert("암호는 반드시 입력해야합니다.");
		   input.pw.focus();
		   return false; 
	 }else if(input.pw.value != input.pw_check.value ){
		   alert("암호가 일지하지 않습니다.");
		   input.pw.focus();
		   return false; 
	 }else if(!input.tel.value){
		   alert("전화번호는 반드시 입력해야합니다.");
		   input.tel.focus();
		   return false; 
	 }else if(!input.pw.value){
		   alert("이메일은 반드시 입력해야합니다.");
		   input.email.focus();
		   return false; 
	 }else if(!input.address.value){
		   alert("주소는 반드시 입력해야합니다.");
		   input.address.focus();
		   return false; 
	 }
	 if(input.reid.value.length == 0 ){
		   alert("아이디 중복 체크를 해야합니다.");
		   input.userid.focus();
		   return false; 
	   } 
	   return true;
}

//아이디 중복체크
function idCheck(){

	if(document.frm.userid.value==""){
		alert("아이디를 입력해주세요.")
		document.frm.userid.focus();
		return;
	}
	var url="member.do?command=member_idCheck&userid="+document.frm.userid.value;
	window.open(url, "idcheck", "width=450, height=200");
}
//아이디 중복 체크 후 아이디 사용
function idOK(){
	opener.frm.userid.value = document.frm.userid.value;
	opener.frm.reid.value = document.frm.userid.value;
	self.close();
}

function loginCheck(){
	var input=document.frm;
	 if(!input.userid.value){
	      alert("아이디 입력하세요.");
	      input.userid.focus();
	      return false;
	 }else if(!input.pw.value){
		   alert("암호는 반드시 입력해야합니다.");
		   input.pw.focus();
		   return false; 
	 }
	 return true;
}

//등급 확인
function gradeCheck(grade) {
	if(grade!=-1){
		alert("관리자만 글쓰기가 가능합니다.");
		return false; 
	}
	
	return true;
}
	   