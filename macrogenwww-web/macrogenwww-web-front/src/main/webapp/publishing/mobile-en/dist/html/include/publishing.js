/* 퍼블리싱용 JS 파일입니다. - 개발에 추가되지 않습니다. */
$(document).ready(function () {
    /* 인클루드 */
	$('#gnb').load('../include/gnb.html');
	$('header.header').load('../include/header.html');
    $('footer.footer').load('../include/footer.html',function(){
        front.common.init();
        $('.footer').after('<a href="#" class="btn-totop"></a>');

        $('.btn-totop').click(function(){
            $('html,body').animate( { scrollTop:0 },{duration : 100});
            return false;
        });
        $(window).on('scroll', function (){
            var scrollTop = $(window).scrollTop()
            if (scrollTop > 150) {
                $('.btn-totop').css({'opacity' : 1})
            } else {
                $('.btn-totop').css({'opacity' : 0})
            }
        })
    });
	/* //인클루드 */


    
    
})