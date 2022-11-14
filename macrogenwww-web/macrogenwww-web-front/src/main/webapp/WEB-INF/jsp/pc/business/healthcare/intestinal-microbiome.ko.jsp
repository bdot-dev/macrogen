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

            <div class="hero-title">마이크로바이옴 분석 및 맞춤형 솔루션</div>
            <div class="slogan-sub">더바이옴 프로</div>
        </div>
    </div>
    <div class="container">
        <div class="section_business microbiome">
            <!--메인 컨텐츠-->
            <div class="subject-box">
                <p class="title font-h4">빅데이터에 기반한 마이크로바이옴 분석을 통해 <br>
			개인 맞춤형 건강관리 솔루션을 제공합니다
                </p>
                <p class="subject">‘마이크로바이옴’은 제2의 유전체라고도 불릴 만큼 중요한 존재로 주목 받고 있습니다. 
                     신진대사, 소화능력, 질병 관리체계, 면역력 등 인체에 다양한 영향을 미치는 것으로 확인되면서, 질병의 90% 이상이 마이크로바이옴과 연관된 것으로도 나타났습니다.
                <br><br>
			특히 장내 마이크로바이옴은 개인의 유전체, 식/생활 습관 등에 따라 꾸준히 변화하며 잘못된 습관에 따라 장내 유해균은 증가하고 유익균은 감소하여 장 건강 밸런스가 깨질 수 있습니다. 
			때문에 장 건강을 위해서는 나의 장 속 마이크로바이옴을 확인하고 유익균을 보충하여 관리하는 것이 중요합니다.</p>
                <div class="img">
                    <img src="/publishing/pc-ko/dist/img/business/img_microbiome_intro.png" alt="마이지놈스토리인트로">
                </div>
                <div class="img">
                    <img src="/publishing/pc-ko/dist/img/business/img_microbiome_test.png" alt="마이크로바이옴 검사">
                </div>
            </div>
            <div class="info-box-wrap" style="display:none;">
                <!--더바이옴-->
                <div class="info-box">
                    <p class="font-h4 main-title">더바이옴(the Biome)</p>
                    <p class="subject img_bottom">나보다 날 더 잘 아는 ‘더바이옴’은 장내 마이크로바이옴 생태계를 확인하여 건강한 장을 만들어갈 수 있도록 도와주는 ‘나’를 위한 맞춤형 솔루션입니다.<br> 
				장내 마이크로바이옴 테스트를 통해 나에게 부족한 장내 유익균을 더해주는 맞춤형 유산균을 제공합니다.</p>
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/business/img_microbiome_pc01.png" alt="더바이옴">
                    </div>
                    <p class="font-h5 main-title">더바이옴 테스트의 특장점</p>
                    <p class="subject img_bottom">더바이옴 테스트는 개인별 장내 마이크로바이옴 상태를 알아보는 검사입니다.<br> 
				한 번의 신속, 간편한 검사를 통해 장내 환경 및 유익균 비중에 대한 자세한 정보를 확인할 수 있습니다.</p>
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/business/img_microbiome_pc02.png" alt="더바이옴 테스트의 특장점">
                    </div>
                    <hr class="divider">
                    <p class="font-h5 main-title">더바이옴 장 유형</p>
                    <p class="subject img_bottom">더바이옴 테스트 결과에 따라 장 유형을 4가지로 나누고, 각 유형별 부족한 프로바이오틱스와 부원료를 채워주는 균주 배합으로 최적의 맞춤형 유산균 솔루션을 제공합니다.</p>
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/business/img_microbiome_pc03.png" alt="더바이옴 장 유형">
                    </div>
                    <p class="font-h8 sub-title">락토바실러스 부족형</p>
                    <div class="list-area">
                         <ul class="list-circle-dot">
                             <li>비바 BiBa
                             	<span>단백질 위주의 식습관을 가진 사람들에게서 많이 확인되는 유형으로, 장내에 비피도박테리움과 박테로이데스가 많고, 상대적으로 락토바실러스와 프레보텔라가 부족한 상태입니다. </span>
                             </li>
                             <li>비프레 BiPre
                             	<span>식이섬유가 많은 채식 위주의 식습관을 가진 사람들에게서 많이 확인되는 유형으로, 장내에 비피도박테리움과 프레보텔라가 많고, 상대적으로 락토바실러스와 박테로이데스가 부족한 상태입니다.</span>
                             </li>
                         </ul>
                    </div>
                    <p class="font-h8 sub-title">비피도박테리움 부족형</p>
                    <div class="list-area">
                         <ul class="list-circle-dot">
                             <li>라바 LaBa
                             	<span>단백질 위주의 식습관을 가진 사람들에게서 많이 확인되는 유형으로, 장내에 락토바실러스와 박테로이데스가 많고, 상대적으로 비피도박테리움과 프레보텔라가 부족한 상태입니다. </span>
                             </li>
                             <li>라프레 LaPre
                           		<span>식이섬유가 많은 채식 위주의 식습관을 가진 사람들에게서 많이 확인되는 유형으로, 장내에 락토바실러스와 프레보텔라가 많고, 상대적으로 비피도박테리움과 박테로이데스가 부족한 상태입니다.</span>
                             </li>
                         </ul>
                    </div>
                    <hr class="divider">
                    <p class="font-h5 main-title"">더바이옴 유산균</p>
                    <p class="subject img_bottom">더바이옴은 장내 마이크로바이옴 검사 키트로 분석한 장 유형 결과에 따라, 유형별로 부족한 프로바이오틱스와 영양분을 더해주는 맞춤형 유산균을 제공합니다.</p>
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/business/img_microbiome_pc04.png" alt="더바이옴 유산균">
                    </div>
                    <div class="list-area">
                         <ul class="list-circle-dot txtcolor">
                             <li>비바(BiBa) 유형을 위한 더락토 장튼튼</li>
                             <li>비프레(BiPre) 유형을 위한 더락토 면역튼튼</li>
                             <li>라바(LaBa) 유형을 위한 더비피도 장튼튼</li>
                             <li>라프레(LaPre) 유형을 위한 더비피도 면역튼튼</li>
                         </ul>
                    </div>
                    <p class="csinfo">더바이옴 고객센터 <a href="tel:+82-1644-9599">1644-9599</a></p>
                    <div class="btn-area">
                        <a href="https://thebiome.life/" target="_blank" class="btn btn-white"><span>서비스문의</span></a>
                        <a href="https://smartstore.naver.com/thebiomelife" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->

</body>
