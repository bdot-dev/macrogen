<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title><decorator:title />MACROGEN</title>
	<%@ include file="/WEB-INF/jsp/inc/htmlHead.jsp" %>
	<decorator:head />
</head>

<body class="<decorator:getProperty property="body.class" />"
	data-device-type="${DEVICE_TYPE }" data-language="${rc.locale.language}" data-layout="pc">

	<div class="wrap">

		<header>
			<c:import url="/inc/header" />
		</header>

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
		</script>

	</div>

</body>
</html>
