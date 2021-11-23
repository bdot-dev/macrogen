<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg business_bg ces">
        <header class="header" id="header">
			<c:import url="/inc/header-inner-gnb" />
</header>

        <div class="frame frameB">
            <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">Business</li>
        <li class="breadcrumb-item">연구서비스</li>
        <li class="breadcrumb-item">GENE SYNTHESIS</li>
    </ol>
</nav>

            <div class="hero-title">GENE SYNTHESIS</div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <!--메인 컨텐츠-->
            <div class="subject-box no-line">
                <p class="title font-h4">유전자합성(Gene Synthesis)은 고객의 유전자 서열 주문에 따라<br>
                    유전자를 합성하여 제공합니다.
                </p>
                <p class="subject img_bottom">유전자 합성은 백신 제조, 유전자치료, 형질발현 등 재조합 DNA를 연구하는 분야에서 널리 활용되고 있습니다.</p>
                <!--10.05 이미지 경로 변경-->
                <div class="img caption_bottom">
                    <img src="/publishing/pc-ko/dist/img/business/img-ces-genesynthesis.png" alt="genesynthesisIntro">
                </div>
                <p class="desc caption">마크로젠의 Gene Synthesis는 DNA Sequencing뿐만 아니라 무료 Cloning을  통해 Plasmid DNA 상태의 유전자합성 서비스를 제공하고 있으며 Mutagenesis를 통해 다양한 범위의 합성 서비스를 이용할 수 있습니다. 또한 ABI 3730xl 시퀀싱 장비를 기반으로 100% 염기서열을 보장하며 LIMS(Laboratory Information Management System)를 통해 편리한 주문 및 견적 문의가 가능합니다. </p>
            </div>
            <div class="info-box">
            <div class="list-area-group">
                <div class="list-area">
                    <p class="title font-h8">Features</p>
                    <ul class="list-circle-dot">
                        <li>Cloning 서비스 무료(Macrogen standard vector)</li>
                        <li>ABI 3730xl를 이용한 100% 염기서열 보장</li>
                        <li>Mutagenesis 서비스 가능</li>
                        <li>Plasmid DNA로 제공</li>
                        <li>Sequencing 무료 제공</li>
                        <li>LIMS(Laboratory Information Management System)를 기반으로 견적문의 및 주문가능</li>
                    </ul>
                </div>
                <div class="list-area">
                    <p class="font-h8 title img_bottom">Workflow</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img info">
                        <img src="/publishing/pc-ko/dist/img/business/img-gene-flow5.png" alt="workflow">
                    </div>
                </div>
            </div>
                <div class="btn-area">
                    <a href="#" class="btn btn-white"><span>서비스문의</span></a>
                    <a href="#" class="btn btn-white"><span>견적의뢰</span></a>
                    <a href="#" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
                </div>
            </div>
        </div>
    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->


</body>
