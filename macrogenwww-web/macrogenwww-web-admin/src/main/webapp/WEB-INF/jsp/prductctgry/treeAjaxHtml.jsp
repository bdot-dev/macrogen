<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<div id="popup_layer" style="width:35%; height:400px; " >
	<div id="popup_header">
		<strong>카테고리 설정</strong>
	</div>

	<div id="container" class="popup_container" style="">
		<div class="tree jstree" id="jstree" style="overflow:auto;height:250px;border:1px solid #ddd;margin:10px;"></div>
	</div>
	<div class="popup_bottom">
		<button type="button" class="btn submitBtn" >선택</button>
		<button type="button" class="btn white cancelBtn">취소</button>
	</div>
</div>
<script type="text/javascript" src="/js/app/PrductctgryAjaxHtml.js" ></script>
<script type="text/javascript">
$(function (){
	var options = {};
	PrductctgryAjaxHtml.init(options);
});
</script>