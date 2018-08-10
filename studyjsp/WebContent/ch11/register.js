//id 로 기능만들어주는 파일 모든코드는 조각단위로 작성 
var status = true;// 플리그 기법 : 미리변수 status 설정함으로써 데이터 입력에 문제가 있을시 false 정상적 입력할때 true
var checked = false;

$(document).ready(function(){
	//[ID중복확인]버튼을 클릭하면 자동실행
	//입력한 아이디 값을 갖고 confirmId.jsp페이지 실행
	$("#checkId").click(function(){
	  if($("#id").val()){
		//아이디를 입력하고 [ID중복확인]버튼을 클릭한 경우
		var query = {id:$("#id").val()};
		//var query = {id:$("#id").val()}; 실행으로 검증
	    $.ajax({
	    	type:"post",//요청방식
	    	url:"confirmId.jsp",//요청페이지
	    	data:query,//파라미터
	    	success:function(data){//요청페이지 처리에 성공시
	    		if(data == 1){//사용할 수 없는 아이디
	    			alert("사용할 수 없는 아이디");
	    	    	$("#id").val("");
	    	     }else if(data == -1)//사용할 수 있는 아이디
	    	  	   {
	    	    	
	    	    	 alert("사용할 수 있는 아이디");
	    	  	   	checked =true;
	    	  	   }
	    	  	   }
	    });
	  }else{//아이디를 입력하지 않고 [ID중복확인]버튼을 클릭한 경우
		  alert("사용할 아이디를 입력");
		  $("#id").focus();
	  }
	});
	
	//[가입하기]버튼을 클릭하면 자동실행
	//사용자가 가입폼인 registerForm.jsp페이지에 입력한 내용을 갖고
	//registerPro.jsp페이지 실행
	//2 번코드 
	$("#process").click(function(){
	   checkIt(); //입력폼에 입력한 상황 체크  개별적함수를 만들었을때 참트루 작성
	   
	   if(status){// false 나오면 값을 다입력한것이 아니기에 종료  그래서 위에 true 설정 
		  var query = {id:$("#id").val(), 
				  passwd:$("#passwd").val(),
			      name:$("#name").val(),
			      address:$("#address").val(),
			      tel:$("#tel").val()};
		  
		  $.ajax({
		      type:"post",
		      url:"registerPro.jsp",
		      data:query,
		      success:function(data){
		    	  /*
		    	   * 다음 문법은 크롬에서는  동작안함
		    	   *  window.location.href("main.jsp");
		    	   */
		    	  window.location.href="main.jsp";
		 	  }
		  });
	   }
	});
	
	//[취소]버튼을 클릭하면 자동실행
	$("#cancle").click(function(){
		/*
		window.location.href("main.jsp");
		*/
		window.location.href="main.jsp";
	});

 });
//3 번
//사용자가 입력폼에 입력한 상황을 체크
function checkIt() {
	status = true;
	
    if(!$("#id").val()) {//아이디를 입력하지 않으면 수행
        alert("아이디를 입력하세요");
        $("#id").focus();
        status = false;
        return false;//사용자가 서비스를 요청한 시점으로 돌아감 (문제가있을시 종료 ) 더이상 진행 되지않게 리턴폴스함
        // 이상없으면 밑으로 넘어감
    }
    
    if(!$("#passwd").val()) {//비밀번호를 입력하지 않으면 수행
        alert("비밀번호를 입력하세요");
        $("#passwd").focus();
        status = false;
        return false;
    }
    //비밀번호와 재입력비밀번호가 같지않으면 수행
    if($("#passwd").val() != $("#repass").val()){
        alert("비밀번호를 동일하게 입력하세요");
        $("#repass").focus();
        status = false;
        return false;
    }
    
    if(!$("#name").val()) {//이름을 입력하지 않으면 수행
        alert("사용자 이름을 입력하세요");
        $("#name").focus();
        status = false;
        return false;
    }
    
    if(!$("#address").val()) {//주소를 입력하지 않으면 수행
        alert("주소를 입력하세요");
        $("#address").focus();
        status = false;
        return false;
    }
    
    if(!$("#tel").val()) {//전화번호를 입력하지 않으면 수행
        alert("전화번호를 입력하세요");
        $("#tel").focus();
        status = false;
        return false;
    }  
}