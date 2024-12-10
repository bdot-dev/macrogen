<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="Referrer" content="origin"/>
<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
<meta name="format-detection" content="telephone=no"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, minimum-scale=1, user-scalable=0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-title" content="Macrogen" />
<meta name="robots" content="index,nofollow"/>
<meta name="description" content="macrogen"/>
<meta name="keywords" content="macrogen"/>
<link rel="shortcut icon" href="/publishing/mobile-en/dist/img/favicon/favicon.ico">
<link type="text/css" rel="stylesheet" href="/publishing/mobile-en/dist/css/macrogen_component_mobile.css?1221"/>
<link type="text/css" rel="stylesheet" href="/publishing/mobile-en/dist/css/macrogen_page_mobile_ko.css?1221"/>
<link rel="stylesheet" href="/resources/css/mobile_footer.css" />
<script src="/publishing/mobile-en/dist/js/bundle.js?1221"></script>
<script src="/publishing/mobile-en/dist/js/common.js?1221"></script>
<script type="text/javascript" src="https://unpkg.com/youtube-background/jquery.youtube-background.min.js"></script>
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

	@font-face {
	  font-family: "NeuzeitGrotesk";
	  font-style: normal;
	  font-weight: 300;
	  src: local(※), url(/resources/fonts/NeuzeitGrotesk-Light.woff2) format("woff2"), url(/resources/fonts/NeuzeitGrotesk-Light.woff) format("woff");
	  unicode-range: U+0041-005A, U+0061-007A, U+0030-0039;
	}
	@font-face {
	  font-family: "NeuzeitGrotesk";
	  font-style: normal;
	  font-weight: 400;
	  src: local(※), url(/resources/fonts/NeuzeitGrotesk-Regular.woff2) format("woff2"), url(/resources/fonts/NeuzeitGrotesk-Regular.woff) format("woff");
	  unicode-range: U+0041-005A, U+0061-007A, U+0030-0039;
	}
	@font-face {
	  font-family: "NeuzeitGrotesk";
	  font-style: normal;
	  font-weight: 700;
	  src: local(※), url(/resources/fonts/NeuzeitGrotesk-Bold.woff2) format("woff2"), url(/resources/fonts/NeuzeitGrotesk-Bold.woff) format("woff");
	  unicode-range: U+0041-005A, U+0061-007A, U+0030-0039;
	}
	.gnb.modal .modal-dialog .gnb-content .gnb-body > ul > li > a, 
	.gnb.modal .modal-dialog .gnb-content .gnb-body > ul > li > ul > li > a,
	.gnb.modal .modal-dialog .gnb-content .gnb-body > ul > li > ul > li ul li a,
	.wrap .frame h2, .wrap .frame .font-h4, .section_agreement > .main-title, .footer, .wrap .non-bg .frame .font-h1, .macrogen.macrogen-sitemap .main-title.font-h1 {
		font-family: "NeuzeitGrotesk", sans-serif;
	}
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
<meta name="naver-site-verification" content="aaeba0b9789dc2e626a02b3d90cf622faaecff3b" />
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "62dfd455212fc4";
if(window.wcs) {
wcs_do();
}
</script>