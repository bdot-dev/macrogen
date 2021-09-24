<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title><decorator:title />MACROGEN</title>
	<%@ include file="/WEB-INF/jsp/inc/htmlHead.jsp" %>
	<decorator:head />
</head>

<body data-device-type="${DEVICE_TYPE }" data-language="${rc.locale.language}" data-layout="pc" data-layout-type="${layout_type }">

	<div class="wrap <decorator:getProperty property="body.class" />">

		<!-- 내용// -->
		<decorator:body />
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
					<c:if test="${remove_header_bg_white_unuse ne 'Y' }">
			            $('#header').removeClass('header-bg-white')
					</c:if>
		        }
		    })
		</script>
		<!-- //내용 -->

		<footer>
			<c:import url="/inc/footer" />
		</footer>

	    <a href="javascript:;" class="btn btn-text btn-totop">
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
		</script>

	</div>

	<c:if test="${modal_winner_use eq true }">
		<%-- 수상자목록/상세 모달 --%>
		<div class="modal macrogen" tabindex="-1" id="modalListOfWinners" data-bs-backdrop="static">
		    <div class="modal-dialog modal-dialog-centered modal-lg">
		        <div class="modal-content"></div>
		    </div>
		</div>
		<script>
		    var modalListOfWinners = new bootstrap.Modal(document.getElementById('modalListOfWinners'));
		    console.log('new bootstrap.Modal()', modalListOfWinners);
		</script>
	</c:if>
</body>
</html>
