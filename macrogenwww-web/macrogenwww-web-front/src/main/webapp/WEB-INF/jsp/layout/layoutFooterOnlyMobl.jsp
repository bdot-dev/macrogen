<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<!DOCTYPE html>
<html lang="${rc.locale.language}">
<head>
	<title><decorator:title />MACROGEN</title>
	<c:import url="/inc/htmlHead" />
	<decorator:head />
</head>
<body>

	<div class="wrap">
		<%--
			/*/company/*, /*/business/*, /*/rnd/institute/*
			full-bg
			container
		--%>
		<decorator:body />

		<%-- <footer class="footer" --%>
		<c:import url="/inc/footer" />

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
		</script>
	</div>

	<%-- modal gnb --%>
	<c:import url="/inc/header-inner-gnb" />
</body>
</html>
