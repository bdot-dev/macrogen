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
            <div class="font-h1">The Biome Institute</div>
        </div>
    </div>
    <div class="container">
        <div class="section_intro">
            <div class="info-box">
                <div class="font-h3">Improving health and quality of life
                    through microbiome researches.</div>
                <div class="desc">Understanding how the microbiome works is key to a healthy life.</div>
            </div>
            <div class="img img-pincette"></div>
        </div>
        <div class="section_info_list">
            <div class="box">
                <div class="font-h7">Stepping up as a Leader in Microbiome Research</div>
                <div class="font-body">
                    <p>Human microbiome refers to the genomes of all microorganisms, including bacteria, fungi, and viruses, that inhabit the human body. It is affected by food, age, genetic factors, medications, and other environmental factors, and plays an important role in maintaining good health. When the microbiome is out of balance, it can lead to obesity, diabetes, asthma, atopy, heart disease, high blood pressure, autism, and cancer. Therefore, modulating the composition of the microbiome is a potential strategy to prevent diseases.<br><br>
                        The Biome Institute was established to understand microbiomes and ultimately improve human health.
                        Macrogen is committed to playing an important role in microbiome research and stepping up as a global leader in the development of microbiome-targeted treatment.</p>
                </div>
            </div>

            <hr class="M-divider">

            <div class="box mb-0">
                <div class="font-h7">연구영역</div>
                <img src="/publishing/mobile-en/dist/img/RD/img-biome-area.png" alt="연구 영역">
            </div>
        </div>
    </div>

</body>