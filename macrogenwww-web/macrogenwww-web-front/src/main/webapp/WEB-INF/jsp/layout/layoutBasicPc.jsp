<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<!DOCTYPE html>
<html lang="${rc.locale.language}">
<head>
	<title><decorator:title />MACROGEN</title>
	<c:import url="/inc/htmlHead" />
	<decorator:head />
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-80657214-2"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());
	  gtag('config', 'UA-80657214-2');
	</script>
</head>

<body class="<decorator:getProperty property="body.class" />" bgurl="<decorator:getProperty property="body.bgurl" />"
	data-device-type="${DEVICE_TYPE }" data-language="${rc.locale.language}" data-layout="pc" data-layout-type="${layout_type }">

	<div class="wrap">

		<header class="header header-bg-white" id="header">
	    	<c:import url="/inc/header-inner-gnb" />
		</header>
		<!-- 2023-04-27 스크립트내용 인클루드 파일로 이동 -->


		<!-- 내용// -->
		<decorator:body />
		<!-- //내용 -->

		<c:import url="/inc/footer" />

	    <a href="#" class="btn btn-text btn-totop">
		    <i class="icon icon-arrow-top-long"></i>
		    <span>TOP</span>
		</a>
		<script>
		    $(document).ready(function(){
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

			$(function() {
				$('.icon-share').on('click', function(e) {
					copyUrlToClipboard();
					<c:choose>
						<c:when test="${rc.locale.language eq 'ko'}">
							alert('링크 복사가 완료되었습니다.');
						</c:when>
						<c:otherwise>
							alert('The link copy is completed.');
						</c:otherwise>
					</c:choose>

				});
		    });
		</script>

	</div>

	<c:if test="${modal_media_library eq true }">
        <div class="modal" tabindex="-1" id="modalMediaLibrary" data-bs-backdrop="static">
            <div class="modal-dialog modal-dialog-centered modal-xl">
                <div class="modal-content modal-slider">modalMediaLibrary</div>
		    </div>
		</div>
		<script>
		    var modalMediaLibrary = new bootstrap.Modal(document.getElementById('modalMediaLibrary'));
		</script>

	</c:if>

</body>
</html>
