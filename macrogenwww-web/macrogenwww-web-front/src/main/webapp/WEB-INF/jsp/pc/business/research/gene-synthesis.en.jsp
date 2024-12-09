<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

    <div class="full-bg business_bg ces">
        <header class="header header-bg-white" id="header">
			<c:import url="/inc/header-inner-gnb" />
		</header>

        <div class="frame frameB">
            <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">Service</li>
        <li class="breadcrumb-item">Research Services</li> 
        <li class="breadcrumb-item">Gene Synthesis</li>
    </ol>
</nav> 

            <h2 class="hero-title">Gene Synthesis</h2>
        </div>
    </div>

    <div class="container">
        <div class="section_business">
            <!--메인 컨텐츠-->
            <div class="subject-box no-line">
                <p class="title font-h4">The gene synthesis service synthesizes genes according to the<br> customer’s gene sequence order.</p>
                <p class="subject img_bottom">It is widely used in areas where recombinant DNA is studied, such as vaccine manufacturing, gene treatment, and character expression.</p>
                <div class="img caption_bottom">
                    <img src="/publishing/pc-en/dist/img/business/img-ces-genesynthesis.png" alt="genesynthesisIntro">
                </div>
                <p class="desc caption">Macrogen’s gene synthesis service provides synthesis services for genes in a plasmid DNA state with a free cloning service, as well as DNA sequencing. Clients can use a wider range of synthesis services via the mutagenesis service. Moreover, a 100% sequence is guaranteed based on ABI 3730xl sequencing equipment and convenient ordering. Inquiries for quotations are possible through LIMS (Laboratory Information Management System).</p>
            </div>
            <div class="info-box">
            <div class="list-area-group">
                <div class="list-area">
                    <p class="title font-h8">Features</p>
                    <ul class="list-circle-dot">
                        <li>Free cloning service (Macrogen standard vector)</li>
                        <li>100% sequence guaranteed using ABI 3730xl</li>
                        <li>Mutagenesis service available</li>
                        <li>Provided as plasmid DNA</li>
                        <li>Free sequencing provided</li>
                        <li>Quotation and orders available based on LIMS (Laboratory Information Management System)</li>
                    </ul>
                </div>
                <div class="list-area">
                    <p class="font-h8 title img_bottom">Workflow</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img-gene-flow5.png" alt="workflow">
                    </div>
                </div>
            </div>
                <div class="btn-area">
                    <a href="mailto:sequencing@macrogen.com"target="_blank" class="btn btn-white"><span>Service Inquiry</span></a>
                    <a href="https://dna.macrogen.com/com/cust/retrieveLogin.do?menuCd=QUO400" target="_blank" class="btn btn-white"><span>Quotation</span></a>
                    <a href="https://dna.macrogen.com/" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
                </div>
            </div>
        </div>
    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->

</body>
