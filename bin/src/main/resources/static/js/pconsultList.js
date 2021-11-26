$(function () {
	$('#writeclick').click(function () {
		location.href="pCountInsertForm?id=${id}";
	});
	
	$('#noclick').click(function() {
		var answer;
		answer = confirm("회원만 가능한 기능입니다. 로그인 하시겠습니까?");
		if(answer == true){
			location.href="pConsultCount";
		}else
			history.go(-1);
	});
	
});
