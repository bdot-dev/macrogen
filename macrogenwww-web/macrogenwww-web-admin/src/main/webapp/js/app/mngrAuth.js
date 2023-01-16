var userOverlap = siteConfigs.bUserOverlap;
var environment = siteConfigs.environment;

$(function (e){
	console.info("중복여부::::::"+userOverlap);
	/* 운영일 경우 */
   /* if(environment == 'real'){
    	if(!userOverlap) {
	    	fncTimeOver.openUserOverlapLayer();
	    }
    }*/
    
	if(!userOverlap) {
    	fncTimeOver.overlapping();
    }
});

var fncTimeOver	=	{
		overlapping	:	function(){
		alert("동일계정으로 로그인되었습니다. 로그아웃 처리 됩니다.");
		location.href = '/logout';
	}	
};







