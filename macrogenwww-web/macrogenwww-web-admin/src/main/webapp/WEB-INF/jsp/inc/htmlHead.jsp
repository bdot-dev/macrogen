<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title><decorator:title />Macrogen</title>

<link rel="stylesheet" href="/common/css/css/default.css">
<link rel="stylesheet" href="/common/css/jstree.css">
<link rel="stylesheet" href="/common/css/cloak.css">
<style>
	[v-cloak] { display: none; }
	.document-dimed, .loading-dimed {position:fixed;top:0;left:0;bottom:0;right:0;z-index:999;background:#aaa;opacity:0.7;}
	.loading-dimed.visual {position:absolute;top:0;left:0;width:100%;height:100%;}
	.loading-dimed {z-index:2000;}
	.loading-dimed:after {content:'';position:absolute;top:50%;left:50%;z-index:1;width:40px;height:40px;margin:-20px 0 0 -20px;background:url('/images/loading.svg') no-repeat 0 0;}
	.loading-dimed:before {content:'';position:absolute;top:0;left:0;width:100%;height:100%;opacity:0;background:#000;}
	.document-dimed:before {content:'';position:absolute;top:0;left:0;width:100%;height:100%;opacity:0.8;background:#000;}
</style>
<style>
<!--
	.lbMaxlenPrnt{position:relative;}
	.lbMaxlen{position:absolute; top:5px; right:5px; color: #aaa;}
	.lbMaxlen_textarea{position:absolute; top:5px; right:25px; color: #aaa;}
-->
</style>

<script src="/common/js/jquery-2.2.4.js"></script>
<script src="/common/js/jquery-ui.min.js"></script>
<script src="/common/js/pub.js"></script>

<script src="/common/js/jquery.form.min.js"></script>
<script src="/common/js/jquery.validate.min.js"></script>
<script src="/common/js/vue${js.path.min}.js"></script>
<script src="/common/js/jquery.cookie.js"></script>

<script src="/common/js/jstree.js"></script>

<%-- 신규버전 for moment-timezone-with-data.min.js --%>
<script src="/common/js/moment.min.js"></script>
<script src="/common/js/moment-timezone-with-data.min.js"></script>

<script src="/js/ckeditor/ckeditor.js"></script>
<script src="/common/js/common.js"></script>

<script src="/js/vueComponent/vue-filter.js" ></script>
<script src="/js/vueComponent/vue-datepicker.js"></script>

<script src="/js/app/App.js"></script>
<script>
	$(function() {
		var option = {};
		option.locale = '${rc.locale}';
		App.init(option);
	});
</script>
