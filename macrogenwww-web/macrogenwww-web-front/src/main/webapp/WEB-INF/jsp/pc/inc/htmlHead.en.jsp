<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="Referrer" content="origin"/>
<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
<meta name="viewport" content="width=1366,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta name="apple-mobile-web-app-title" content="macrogen" />
<meta name="viewport" content="width=1244"/>
<!-- pc, en -->
<!-- IE 10 이하 -->
<link rel="shortcut icon" href="/publishing/pc-en/dist/favicon/favicon.ico">
<!-- Android -->
<link rel="icon" type="image/png" sizes="36x36" href="/publishing/pc-en/dist/favicon/android-icon-36x36.png">
<link rel="icon" type="image/png" sizes="48x48" href="/publishing/pc-en/dist/favicon/android-icon-48x48.png">
<link rel="icon" type="image/png" sizes="72x72" href="/publishing/pc-en/dist/favicon/android-icon-72x72.png">
<link rel="icon" type="image/png" sizes="96x96" href="/publishing/pc-en/dist/favicon/android-icon-96x96.png">
<link rel="icon" type="image/png" sizes="144x144" href="/publishing/pc-en/dist/favicon/android-icon-144x144.png">
<link rel="icon" type="image/png" sizes="192x192" href="/publishing/pc-en/dist/favicon/android-icon-192x192.png">
<!-- apple -->
<link rel="apple-touch-icon" sizes="57x57" href="/publishing/pc-en/dist/favicon/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="/publishing/pc-en/dist/favicon/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="/publishing/pc-en/dist/favicon/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="/publishing/pc-en/dist/favicon/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="/publishing/pc-en/dist/favicon/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="/publishing/pc-en/dist/favicon/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="/publishing/pc-en/dist/favicon/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="/publishing/pc-en/dist/favicon/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="/publishing/pc-en/dist/favicon/apple-icon-180x180.png">
<!-- 브라우저용 표준 -->
<link rel="icon" type="image/png" sizes="16x16" href="/publishing/pc-en/dist/favicon/favicon-16x16.png">
<link rel="icon" type="image/png" sizes="32x32" href="/publishing/pc-en/dist/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="/publishing/pc-en/dist/favicon/favicon-96x96.png">
<!-- ms -->
<meta name="msapplication-TileImage" content="/publishing/pc-en/dist/favicon/ms-icon-70x70.png">
<meta name="msapplication-TileImage" content="/publishing/pc-en/dist/favicon/ms-icon-144x144.png">
<meta name="msapplication-TileImage" content="/publishing/pc-en/dist/favicon/ms-icon-150x150.png">
<meta name="msapplication-TileImage" content="/publishing/pc-en/dist/favicon/ms-icon-310x310.png">
<!-- manifest -->
<!-- <link rel="manifest" href="/publishing/pc-en/dist/favicon/manifest.json"> -->
<!-- Windows 8.1 + IE11 이상 -->
<meta name="msapplication-config" content="/publishing/pc-en/dist/favicon/browserconfig.xml">

<meta name="robots" content="ALL">
<meta property="og:type" content="website">
<meta property="og:title" content="마크로젠">
<meta property="og:description" content="내 몸 사용 설명서를 제공하여 인류의 건강한 삶을 돕는 글로벌 헬스케어 기업 마크로젠입니다">
<!--  <meta property="og:image" content="www.macrogen.co.kr/myimage.jpg">-->
<meta property="og:url" content="www.macrogen.co.kr">
<link rel="canonical" href="http://www.macrogen.co.kr">
<meta name="keywords" content="마크로젠 키워드">
<meta name="description" content="내 몸 사용 설명서를 제공하여 인류의 건강한 삶을 돕는 글로벌 헬스케어 기업 마크로젠입니다">

<c:set var="cssVar" value="renewal" />
<link type="text/css" rel="stylesheet" href="/publishing/pc-en/dist/css/macrogen_component_pc.css?${cssVar}"/>
<link type="text/css" rel="stylesheet" href="/publishing/pc-en/dist/css/macrogen_page_pc_ko.css?${cssVar}"/>
<link type="text/css" rel="stylesheet" href="/publishing/pc-en/dist/css/bootstrap-ie11.css" media="all and (-ms-high-contrast: active), (-ms-high-contrast: none)">
<script src="/publishing/pc-en/dist/js/bundle.js?${cssVar}"></script>
<![if !IE]><script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script><![endif]>
<script nomodule>window.MSInputMethodContext && document.documentMode && document.write('<script src="https://cdn.jsdelivr.net/combine/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js,npm/ie11-custom-properties@4,npm/element-qsa-scope@1"><\/script><script crossorigin="anonymous" src="https://polyfill.io/v3/polyfill.min.js?features=default%2CNumber.parseInt%2CNumber.parseFloat%2CArray.prototype.find%2CArray.prototype.includes"><\/script>');</script>
<script src="/publishing/pc-en/dist/js/common.js?${cssVar}"></script>
<script src="https://cdn.jsdelivr.net/npm/lodash@4.17.21/lodash.min.js"></script>

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
