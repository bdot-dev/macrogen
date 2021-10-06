<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

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
        <li class="breadcrumb-item">헬스케어서비스</li>
        <li class="breadcrumb-item">마이크로바이옴 분석</li>
    </ol>
</nav>

            <div class="hero-title">마이크로바이옴 분석</div>
            <div class="slogan-sub">더바이옴/마이크로브앤미</div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <!--메인 컨텐츠-->
            <div class="subject-box no-line">
                <p class="title font-h4">사람마다 다른 마이크로바이옴을 분석하여<br>
                    나를 위한 맞춤 솔루션을 제안합니다
                </p>
                <p class="subject">장내미생물 분석 서비스인 ‘마이크로브앤미(MICROBE & ME)’를 론칭하여 질병 발생에 주요하게 작용하는 요소 중 하나인 ‘장 건강’까지도 관리할 수 있게 되면서 질병에서부터
                    웰니스까지 포괄적인 범위의 개인유전체 서비스라인을 갖추게 되었습니다. 마크로젠 개인유전체 사업부는 고객의 인생 여정에 언제나 함께할 수 있는 건강 관리 멘토이자 동반자가
                    되는 것을 목표로 계속해서 마이지놈스토리를 연구하고 발전시켜 나갈 것이며, 이를 통해 고객들에게 끊임없이 새로운 서비스를 제시할 것입니다.</p>
                <div class="img">
                    <img src="/publishing/pc-ko/dist/img/business/img_microbiome_intro.png" alt="마이지놈스토리인트로">
                </div>
            </div>
            <div class="info-box-wrap">
                <!--질병예측 & 웰니스 유전자검사-->
                <div class="info-box">
                    <p class="font-h4 main-title" id="disease_title">마이크로바이옴 검사</p>
                    <p class="subject img_bottom">우리의 장 속에 존재하는 ‘미생물’은 제2의 유전체라고 불릴 만큼 많은 양일뿐만 아니라 면역, 비만, 암 등 다양한 질병에 관여하는 중요한 존재입니다.  마크로젠이 자체 개발한 장내 미생물 분석 서비스 ‘마이크로브앤미’는 장 속 유익균과 유해균을 분석하여 장내 환경을 파악하고 건강한 장을 만들 수 있도록 돕습니다.</p>
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/business/img_microbiome_test.png" alt="마이크로바이옴 검사">
                    </div>
                    <div class="btn-area">
                        <a href="https://www.my-genomestory.com/service_detail?service_code=mbs&selectLang=ko" target="_blank" class="btn btn-white"><span>서비스문의</span></a>
                        <a href="https://smartstore.naver.com/mygenomestory/products/4448724880" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->

</body>
