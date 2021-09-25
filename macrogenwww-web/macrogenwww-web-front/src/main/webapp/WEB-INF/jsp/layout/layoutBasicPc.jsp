<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title><decorator:title />MACROGEN</title>
	<%@ include file="/WEB-INF/jsp/inc/htmlHead.jsp" %>
	<decorator:head />
</head>

<body bgurl="<decorator:getProperty property="body.bgurl" />"
	data-device-type="${DEVICE_TYPE }" data-language="${rc.locale.language}" data-layout="pc" data-layout-type="${layout_type }">

	<div class="wrap">

		<header class="header header-bg-white" id="header">
	    	<c:import url="/inc/header-inner-gnb" />
		</header>
		<script>
		    var gnb2depth = $('#gnb2Depth .box')
		    let gnbIndex = $('#gnb li')

		    $('#gnb li').mouseover(function () {
		        $(this).parents('#header').addClass('header-bg-white')
		        gnbIndex.removeClass('active');
		        $(this).addClass('active');
		        gnb2depth.removeClass('active');
		        let idx = $(this).index();
		        gnb2depth.eq(idx).addClass('active');
		        $('#gnb2Depth').css('border-bottom','1px solid #e9e9e9').css('border-top','1px solid #e9e9e9')
		    });

		     gnb2depth.mouseover(function () {
		         gnbIndex.removeClass('active');
		        let idx = $(this).index();
		         gnbIndex.eq(idx).addClass('active');
		     });

		    $('#header').on({
		        "mouseleave focusout" : function () {
		            gnb2depth.removeClass('active')
		            gnbIndex.removeClass('active')
		            $('#gnb2Depth').css('border','none')
		        }
		    })
		</script>

		<!-- 내용// -->
		<decorator:body />
		<!-- //내용 -->

		<footer>
			<c:import url="/inc/footer" />
		</footer>

	    <a href="#" class="btn btn-text btn-totop">
		    <i class="icon icon-arrow-top-long"></i>
		    <span>TOP</span>
		</a>
		<script>
		    $(document).ready(function(){
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

			$(function() {
				$('.icon-share').on('click', function(e) {
					copyUrlToClipboard();
					alert('링크 복사가 완료되었습니다.');
				});
		    });
		</script>

	</div>

</body>
</html>
