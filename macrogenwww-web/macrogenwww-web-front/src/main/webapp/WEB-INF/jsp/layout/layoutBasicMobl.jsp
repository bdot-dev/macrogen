<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<!DOCTYPE html>
<html lang="${rc.locale.language}">
<head>
	<%-- <title><decorator:title />MACROGEN</title> --%>
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

<body>
	<div class="wrap">
		<%--
			/*/company/*, /*/business/*, /*/rnd/institute/*, /*/main 제외
			non-bg
			container
		--%>
		<decorator:body />

		<%-- <footer class="footer" --%>
		<c:if test="${ empty MOBILE_NO_FOOTER or not MOBILE_NO_FOOTER }">
			<c:import url="/inc/footer" />
		</c:if>

	    <a href="#" class="btn-totop"></a>
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
				$('.btn-share').on('click', function(e) {
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
	<%-- modal gnb --%>
	<c:import url="/inc/header-inner-gnb" />
</body>
</html>
