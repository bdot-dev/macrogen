<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

    <div class="full-bg business_bg bg-type2">
        <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

        <div class="frame frameB">
            <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">Business</li>
        <li class="breadcrumb-item">Clinical Diagnostics</li>
        <li class="breadcrumb-item">Genetic Disorder</li>
    </ol>
</nav>

            <h2 class="hero-title">Genetic Disorder</h2>
            <div class="slogan-sub">Prenatal testing and early screening for rare hereditary diseases</div>
        </div>
    </div>

    <div class="container">
        <div class="section_business">
            <div class="subject-box">
                <p class="font-h4 title">We offer a wide range of genome sequencing<br>
                    to help people lead healthier and happier lives.</p>
                <!--10.25 html 추가-->
                <p class="subject info">The Clinical Diagnostics Division helps individuals lead healthy lives throughout their lifespan through prenatal and rare disease tests for fetuses.<br>
                    From disease prevention to personalized treatment, we provide various genome sequencing tests.</p>
            </div>
            <div class="info-box-wrap">
                <!--산전 염색체 이수성 검사-->
                <div class="info-box subject-box">
                    <p class="font-h4 main-title">NIPS: Non-Invasive Prenatal Screening</p>
                    <p class="subject border-gray_bottom"> NIPS is the test that screens for aneuploidy of chromosomes in a fetus using its cffDNA (cell-free fetal DNA). The test is performed for Down syndrome,<br>
                        Edwards syndrome and Patau syndrome, the most typical kinds of aneuploidy, and aneuploidy of gender chromosomes.</p>
                    <div class="img caption_bottom">
                        <img src="/publishing/pc-en/dist/img/business/img-npis.png" alt="NIPS">
                    </div>
                    <div class="caption">※ This test has not established the clinical meaning of the test results, and there is still insufficient objective validity that the resulting health-related actions are useful.
                    </div>
                </div>
                <div class="info-box">
                    <p class="font-h4 main-title">Rare Disease Genome</p>
                    <p class="subject border-gray_bottom">There are more than 8,000 known rare diseases. Among them, 80% are hereditary diseases caused by gene mutation.  Even though the prevalence rate of each<br>
                        disease is very low, the risk is rather high around the world because there are so many types and symptoms of these diseases.</p>
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img_raredisease.png" alt="희귀질환 유전체">
                    </div>
                    <div class="btn-area">
                        <a href="mailto:ngsclinic@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->

</body>
