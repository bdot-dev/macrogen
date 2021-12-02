<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="research-wrap">

    <div class="top-bg" style="background-image: url(/publishing/mobile-en/dist/img/RD/bg-visual.png);">
        <header class="header header-white">
    <div class="inner">
        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
    </div>
</header>
<script>
    $(function(){
        var lastScroll = 0;
        $(window).scroll(function(){
            var st = $(this).scrollTop();
            if (st > lastScroll){
                // console.log('Down');
                $('.header').show().css({'position': 'absolute','top':'0'});
            }
            else if (st === 0) {
                // console.log('Top');
                $('.header').show().css({'position': 'absolute','top':'0'}).addClass('header-white');
            }
            else {
                // console.log('Up');
                $('.header').show().css({'position': 'fixed','top':'0'}).removeClass('header-white');
            }
            lastScroll = st;
        });
    });
</script>

        <div class="frame">
            <div class="font-h1">Syncgenes Institute</div>
        </div>
    </div>
    <div class="container">
        <div class="section_intro">
            <div class="info-box">
                <div class="font-h3">Complete precision medicine
                    based on data integration and analysis</div>
                <div class="desc">Research on genome information for long and healthy lives</div>
            </div>
            <div class="img img-analysis"></div>
        </div>
        <div class="section_info_list">
            <div class="box box-type2">
                <div class="font-h7">Syncgenes Institute</div>
                <div class="font-body">
                    <p>The Syncgene Research Institute was established to contribute to building a society where anyone can use their genome information to lead a healthy life based on data integration, analysis, and synchronization of results. Extensive research efforts are being conducted to achieve this goal.</p>
                </div>
            </div>

            <hr class="M-divider">

            <div class="box">
                <div class="font-h7">Research</div>
                <div class="font-body">
                    <P>Research for integration (problem-solving) of genetic, clinical and health-related lifestyle data</P>
                    <div class="img img-syncgenes_research"></div>
                </div>
            </div>

            <div class="box">
                <div class="font-h7">Analysis</div>
                <div class="font-body">
                    <P>Analysis and research on prediction and artificial intelligence based on integrated data</P>
                    <div class="img img-syncgenes_analysis"></div>
                </div>
            </div>

            <div class="box mb-0">
                <div class="font-h7">Precision Medicine</div>
                <div class="font-body">
                    <P>Research to apply analytical results to clinical and health management and development of new technologies in precision medicine</P>
                    <div class="img img-syncgenes_detailed"></div>
                </div>
            </div>
        </div>
    </div>


</body>