<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<!DOCTYPE html>
<html lang="${rc.locale.language}">
<head>
	<title><decorator:title />MACROGEN</title>
	<c:import url="/inc/htmlHead" />
	<decorator:head />
</head>

<body class="<decorator:getProperty property="body.class" />" data-device-type="${DEVICE_TYPE }" data-language="${rc.locale.language}" data-layout="pc" data-layout-type="${layout_type }">

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
					<c:if test="${remove_header_bg_white_unuse ne 'Y' }">
			            $('#header').removeClass('header-bg-white')
					</c:if>
		            $('#gnb2Depth').css('border','none')
		        }
		    })
		</script>
		<!-- //내용 -->

		<c:import url="/inc/footer" />

	    <a href="javascript:;" class="btn btn-text btn-totop">
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
		</script>
	</c:if>
	<c:if test="${modal_research_result_use eq true }">
		<div class="modal fade" tabindex="-1" id="Institute_01" data-bs-backdrop="static">
		    <div class="modal-dialog modal-dialog-centered modal-lg research">
		        <div class="modal-content"></div>
		    </div>
		</div>
		<script>
		    var modalResearchResult = new bootstrap.Modal(document.getElementById('Institute_01'));
		</script>
	</c:if>
</body>
</html>
