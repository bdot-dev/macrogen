<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="Referrer" content="origin"/>
<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
<meta name="format-detection" content="telephone=no"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, minimum-scale=1, user-scalable=0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-title" content="macrogen" />
<meta name="robots" content="index,nofollow"/>
<meta name="description" content="macrogen"/>
<meta name="keywords" content="macrogen"/>
<link rel="shortcut icon" href="/publishing/mobile-en/dist/img/favicon/favicon.ico">
<link type="text/css" rel="stylesheet" href="/publishing/mobile-en/dist/css/macrogen_component_mobile.css?120316"/>
<link type="text/css" rel="stylesheet" href="/publishing/mobile-en/dist/css/macrogen_page_mobile_ko.css?120316"/>
<script src="/publishing/mobile-en/dist/js/bundle.js?120316"></script>
<script src="/publishing/mobile-en/dist/js/common.js?120316"></script>
<![if !IE]>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
<![endif]>
<script nomodule>window.MSInputMethodContext && document.documentMode && document.write('<link rel="stylesheet" href="/publishing/mobile-en/dist/css/bootstrap-ie11.css"><script src="https://cdn.jsdelivr.net/combine/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js,npm/ie11-custom-properties@4,npm/element-qsa-scope@1"><\/script><script crossorigin="anonymous" src="https://polyfill.io/v3/polyfill.min.js?features=default%2CNumber.parseInt%2CNumber.parseFloat%2CArray.prototype.find%2CArray.prototype.includes"><\/script>');</script>

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
