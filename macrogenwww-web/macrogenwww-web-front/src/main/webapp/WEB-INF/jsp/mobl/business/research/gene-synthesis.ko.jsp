<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="top-bg" style="background-image: url(/publishing/mobile-ko/dist/img/business/ngs-bg.png);">
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
            <div class="font-h1">Gene Synthesis</div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <!--메인 컨텐츠-->
            <div class="subject-box">
                <p class="title font-h4" style="letter-spacing: -1.25px">유전자합성(Gene Synthesis)은 고객의 유전자 서열 주문에 따라 유전자를 합성하여 제공합니다</p>
                <p class="subject font-body-h img_bottom">유전자 합성은 백신 제조, 유전자치료, 형질발현 등 재조합 DNA를 연구하는 분야에서 널리 활용되고 있습니다.</p>
                <!--10.05 이미지 경로 변경-->
                <div class="img caption_bottom">
                    <img src="/publishing/mobile-ko/dist/img/business/img-ces-genesynthesis.png" alt="genesynthesisIntro">
                </div>
                <p class="desc font-body">마크로젠의 Gene Synthesis는 DNA Sequencing뿐만 아니라 무료 Cloning을  통해 Plasmid DNA 상태의 유전자합성 서비스를 제공하고 있으며 Mutagenesis를 통해 다양한 범위의 합성 서비스를 이용할 수 있습니다. 또한 ABI 3730xl 시퀀싱 장비를 기반으로 100% 염기서열을 보장하며 LIMS(Laboratory Information Management System)를 통해 편리한 주문 및 견적 문의가 가능합니다. </p>
            </div>
            <div class="info-box-wrap">
                <div class="info-box show">
                <div class="list-area-group">
                    <div class="list-area">
                        <p class="title font-body-h-b">Features</p>
                        <ul class="list-circle-dot">
                            <li><p>Cloning 서비스 무료(Macrogen standard vector)</p></li>
                            <li><p>ABI 3730xl를 이용한 100% 염기서열 보장</p></li>
                            <li><p>Mutagenesis 서비스 가능</p></li>
                            <li><p>Plasmid DNA로 제공</p></li>
                            <li><p>Sequencing 무료 제공</p></li>
                            <li><p>LIMS(Laboratory Information Management System)를 기반으로 견적문의 및 주문가능</p></li>
                        </ul>
                    </div>
                    <div class="list-area">
                        <p class="font-body-h-b title img_bottom">Workflow</p>
                        <!--10.05 이미지 경로 변경-->
                        <div class="img info">
                            <img src="/publishing/mobile-ko/dist/img/business/img-gene-flow5.png" alt="workflow">
                        </div>
                    </div>
                </div>
                <div class="btn-area">
                    <div class="btn-wrapper">
                        <a href="mailto:sequencing@macrogen.com" class="btn btn-light"><span>서비스문의</span></a>
                        <a href="https://dna.macrogen.com/com/cust/retrieveLogin.do?menuCd=QUO400" target="_blank" class="btn btn-light"><span>견적의뢰</span></a>
                    </div>
                    <div class="btn-wrapper">
                       <a href="https://dna.macrogen.com/" target="_blank" class="btn btn-primary"><i
                            class="icon ico-cart-white"></i><span>주문하기</span></a>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </div>


</body>
