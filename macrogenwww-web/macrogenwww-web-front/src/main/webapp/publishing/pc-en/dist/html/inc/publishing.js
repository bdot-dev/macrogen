/* 퍼블리싱용 JS 파일입니다. - 개발에 추가되지 않습니다. */
$(document).ready(function () {
    /* 인클루드 */
	$('#header').load('../inc/header.html');
    $('footer.footer').load('../inc/footer.html',function(){
        front.common.init();
        $('.footer').after('<a href="#" class="btn btn-text btn-totop"><i class="icon icon-arrow-top-long"></i><span>TOP</span></a>');

        $('.btn-totop').click(function(){
            $('html,body').animate( { scrollTop:0 },{duration : 100});
            $('.header').css({'display' : 'block'});
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