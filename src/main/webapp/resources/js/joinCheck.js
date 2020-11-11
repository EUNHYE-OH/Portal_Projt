function studentIdCheck() {
	var studentId = $('#studentId').val() ;
	if (studentId.length<4) {
	  $('#studentIdMessage').html('학번은 4자 이상 입력하세요');		
	  $('#studentId').focus();
	  return false;
 	}else if (studentId.replace(/[0-9]/gi,'').length>0) {
 		 $('#studentIdMessage').html('학번은 숫자로만 입력하세요');
 		$('#studentId').focus();
 		return false;
 	}else {
 		$('#studentIdMessage').html('');
 		return true;
 	}
} 

function passwordCheck() {
	var password=$('#password').val();	
	var passwordLength=password.length ; 
	if (password.length<4) {
		$('#passwordMessage').html('비밀번호는 4글자 이상 입력하세요');	
		$('#password').focus();
		return false;
	}else if (password.replace(/[!-*]/gi,'').length >= passwordLength ) {
		$('#passwordMessage').html('특수문자를 1개 이상 입력하세요');	
		$('#password').focus();
		return false;
	}else if (password.replace(/[0-9.!-*]/gi,'').length>0) {
		$('#passwordMessage').html('숫자와 특수문자 로만 입력하세요');	
		$('#password').focus();
		return false;
	}else {
		$('#passwordMessage').html('');	
		return true;
	} 
}  

function repasswordCheck() {
		var password=$('#password').val();
		var repassword=$('#repassword').val();
		if (password != repassword) {
			$('#repasswordMessage').html('비밀번호를 다시확인해주세요');
			$('#repassword').focus();
			return false;
		}else {
			$('#repasswordMessage').html('');
			return true;
	}
}

function nameCheck() {
	var name=$('#name').val();
	if (name.length<2) {
		$('#nameMessage').html('이름은 2글자 이상 입력하세요');
		$('#name').focus();
		return false;
	}else if (name.replace(/[a-z.가-힇]/gi,'').length>0) {
		$('#nameMessage').html('이름은 한글 또는 영문으로 입력하세요');
		$('#name').focus();
		return false;
	}else {
		$('#nameMessage').html('');
		return true;
	}
} 

function emailCheck() {
	var email=$('#email').val();	
	var emailLength=email.length ; 
	if (email.length<8) {
		$('#emailMessage').html('E-mail은 8글자 이상 입력하세요');	
		$('#email').focus();
		return false;
	}else if (email.replace(/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i,'').length>0) {
		$('#emailMessage').html('E-mail 은 영문과 숫자만 입력해주세요');	
		$('#email').focus();
		return false;
	}else if (email.replace(/[@]/gi,'').length >= emailLength ) {
		$('#emailMessage').html('E-mail는 ex) @와.com을 넣어주세요');	
		$('#email').focus();
		return false;
	}else {
		$('#emailMessage').html('');	
		return true;
	} 
}

function nationCheck() {
	var nation=$('#nation').val();
	if (nation.length<2) {
		$('#nationMessage').html('국가는 2글자 이상 입력하세요');
		$('#nation').focus();
		return false;
	}else if (nation.replace(/[a-z.가-힇]/gi,'').length>0) {
		$('#nationMessage').html('국가는 한글 또는 영문만 입력하세요');
		$('#nation').focus();
		return false;
	}else {
		$('#nationMessage').html('');
		return true;
	}
} 

function adressCheck() {
	var adress=$('#adress').val();
	if (adress.length<2) {
		$('#adressMessage').html('주소는 2글자 이상 입력하세요');
		$('#adress').focus();
		return false;
	}else if (adress.replace(/[a-z.가-힇.0-9]/gi,'').length>0) {
		$('#adressMessage').html('주소는 한글,영문,숫자만 입력하세요');
		$('#adress').focus();
		return false;
	}else {
		$('#adressMessage').html('');
		return true;
	}
}

function phoneCheck() {
	var phone=$('#phone').val();
	if (phone.length<10) {
		$('#phoneMessage').html('연락처는 10글자 이상 입력하세요');
		$('#phone').focus();
		return false;
	}else if (phone.replace(/[0-9]/gi,'').length>0) {
		$('#phoneMessage').html('연락처는 -를 제외한 숫자만 입력하세요');
		$('#phone').focus();
		return false;
	}else {
		$('#phoneMessage').html('');
		return true;
	}
}

function birthCheck() {
	var birth=$('#birth').val();
	if (birth.length!=10) {
		$('#birthMessage').html('달력 또는 숫자로 입력하세요');
		$('#birth').focus();
		return false;
	}else {
		$('#birthMessage').html('');
		return true;
	}
} 