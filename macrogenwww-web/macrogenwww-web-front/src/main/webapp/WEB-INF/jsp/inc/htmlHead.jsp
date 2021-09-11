<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="Referrer" content="origin"/>
<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
<meta name="viewport" content="width=1366,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta name="apple-mobile-web-app-title" content="macrogen" />
<%-- <meta name="robots" content="index,nofollow"/> --%>
<meta name="description" content="macrogen"/>
<meta name="keywords" content="macrogen"/>
<!--  <link rel="shortcut icon" href="/publishing/dist//img/favicon.ico">-->
<link type="text/css" rel="stylesheet" href="/publishing/dist/css/macrogen_component_pc.css?0907"/>
<link type="text/css" rel="stylesheet" href="/publishing/dist/css/macrogen_page_pc_ko.css?0907"/>
<script src="/publishing/dist//js/bundle.js?0907"></script>
<script src="/publishing/dist//js/common.js?0907"></script>

<style>
	[v-cloak] { display: none; }
	.document-dimed, .loading-dimed {position:fixed;top:0;left:0;bottom:0;right:0;z-index:999;background:#aaa;opacity:0.7;}
	.loading-dimed.visual {position:absolute;top:0;left:0;width:100%;height:100%;}
	.loading-dimed {z-index:2000;}
	.loading-dimed:after {content:'';position:absolute;top:50%;left:50%;z-index:1;width:40px;height:40px;margin:-20px 0 0 -20px;background:url('/images/loading.svg') no-repeat 0 0;}
	.loading-dimed:before {content:'';position:absolute;top:0;left:0;width:100%;height:100%;opacity:0;background:#000;}
	.document-dimed:before {content:'';position:absolute;top:0;left:0;width:100%;height:100%;opacity:0.8;background:#000;}
</style>

<script src="/common/js/jquery.form.min.js"></script>
<script src="/common/js/jquery.validate.min.js"></script>
<script src="/common/js/jquery.cookie.js"></script>

<script src="/common/js/moment.min.js"></script>
<script src="/common/js/moment-timezone-with-data.min.js"></script>

<script src="/common/js/vue${js.path.min}.js"></script>
<script src="/js/vueComponent/vue-filter.js" ></script>
<script src="/js/app/App.js"></script>
<script>
	$(function() {
		var option = {};
		option.locale = '${rc.locale}';
		App.init(option);
	});
</script>
