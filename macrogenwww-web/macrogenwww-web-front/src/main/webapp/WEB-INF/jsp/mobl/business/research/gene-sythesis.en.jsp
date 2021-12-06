<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="top-bg" style="background-image: url(/publishing/mobile-en/dist/img/business/ngs-bg.png);">
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
                <p class="title font-h4" style="letter-spacing: -1.25px">The gene synthesis service synthesizes genes according to the customer’s gene sequence order.</p>
                <p class="subject font-body-h img_bottom">It is widely used in areas where recombinant DNA is studied, such as vaccine manufacturing, gene treatment, and character expression.</p>
                <!--10.05 이미지 경로 변경-->
                <div class="img caption_bottom">
                    <img src="/publishing/mobile-en/dist/img/business/img-ces-genesynthesis.png" alt="genesynthesisIntro">
                </div>
                <p class="desc font-body">Macrogen’s gene synthesis service provides synthesis services for genes in a plasmid DNA state with a free cloning service, as well as DNA sequencing. Clients can use a wider range of synthesis services via the mutagenesis service. Moreover, a 100% sequence is guaranteed based on ABI 3730xl sequencing equipment and convenient ordering. Inquiries for quotations are possible through LIMS (Laboratory Information Management System).</p>
            </div>
            <div class="info-box-wrap">
                <div class="info-box show">
                <div class="list-area-group">
                    <div class="list-area">
                        <p class="title font-body-h-b">Features</p>
                        <ul class="list-circle-dot">
                            <li><p>Free cloning service (Macrogen standard vector)</p></li>
                            <li><p>100% sequence guaranteed using ABI 3730xl</p></li>
                            <li><p>Mutagenesis service available</p></li>
                            <li><p>Provided as plasmid DNA</p></li>
                            <li><p>Free sequencing provided</p></li>
                            <li><p>Quotation and orders available based on LIMS (Laboratory Information Management System)</p></li>
                        </ul>
                    </div>
                    <div class="list-area">
                        <p class="font-body-h-b title img_bottom">Workflow</p>
                        <!--10.05 이미지 경로 변경-->
                        <div class="img info">
                            <img src="/publishing/mobile-en/dist/img/business/img-gene-flow5.png" alt="workflow">
                        </div>
                    </div>
                </div>
                <div class="btn-area">
                    <div class="btn-wrapper">
                        <a href="#" class="btn btn-light"><span>Service Inquiry</span></a>
                        <a href="#" class="btn btn-light"><span>Quotation</span></a>
                    </div>
                    <div class="btn-wrapper">
                        <a href="#" class="btn btn-primary"><i
                            class="icon ico-cart-white"></i><span>Order</span></a>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </div>


</body>
