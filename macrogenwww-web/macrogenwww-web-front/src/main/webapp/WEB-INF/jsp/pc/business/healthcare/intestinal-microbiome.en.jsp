<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

    <div class="full-bg business_bg bg-type3">
        <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

        <div class="frame frameB">
            <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">Business</li>
        <li class="breadcrumb-item">Heathcare</li>
        <li class="breadcrumb-item">Microbiome Analysis</li>
    </ol>
</nav>

            <div class="hero-title">Microbiome Analysis</div>
            <div class="slogan-sub">The Biome / MICROBE & ME</div>
        </div>
    </div>

    <div class="container">
        <div class="section_business">
            <!--메인 컨텐츠-->
            <div class="subject-box no-line">
                <p class="title font-h4">Present personalized solutions<br>
                    based on microbiome analysis.
                </p>
                <p class="subject">Our new gut microbiome analysis service, MICROBE & ME, enables the management of your gut health, one of the major factors in disease, providing a wide range of personalized genome services from disease to wellness. The Personal Genome Division of Macrogen will continue to advance and develop the role of MyGenome Story into a health care mentor and companion so we can help our clients lead healthier lives by offering new and innovative services.</p>
                <div class="img">
                    <img src="/publishing/pc-en/dist/img/business/img_microbiome_intro.png" alt="마이지놈스토리인트로">
                </div>
            </div>
            <div class="info-box-wrap">
                <!--질병예측 & 웰니스 유전자검사-->
                <div class="info-box">
                    <p class="font-h4 main-title" id="disease_title">Microbiome Test</p>
                    <p class="subject img_bottom">Microorganisms in our gut are known as a genomic blueprint for their influence on various diseases such as immunity, obesity, and cancer as well as quantity. MICROBE & ME is our exclusive gut microbiome analysis solution that analyzes beneficial and harmful bacteria, gives us insights into our intestinal environment and helps keep our guts healthy.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img_microbiome_test.png" alt="마이크로바이옴 검사">
                    </div>
                    <div class="btn-area">
                        <a href="https://www.my-genomestory.com/service_detail?service_code=mbs&selectLang=ko" target="_blank" class="btn btn-white"><span>Service Inquiry</span></a>
                        <a href="https://smartstore.naver.com/thebiome/products/5557972286" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->

</body>
