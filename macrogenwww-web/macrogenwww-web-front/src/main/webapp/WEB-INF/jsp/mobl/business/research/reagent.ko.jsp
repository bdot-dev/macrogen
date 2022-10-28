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
            <div class="font-h1">Reagent&<br>LABware</div>
            <!-- <div class="btn-wrap"><a href="#tab_anchor" class="btn-service"><span class="sr-only">service</span></a></div>-->
        </div>
    </div>
    <div class="container">
        <div class="section_business reagent_conts">
			<div class="subject-box">
                <p class="title font-h4">마크로젠은  생명과학 실험용 고품질 시약과 소모품을 자체 생산, 제공하며 METTLER TOLEDO사 협력 및 다양한 제품을 통해 자동화 프로세스를 지원합니다.</p>  
                <p class="subject font-body img_bottom" style="color: #454545">마크로젠의 시약 전문 브랜드 Axen™은 분자생물학 실험에 사용되는 다양한 고품질 시약 라인업과 플라스틱 웨어 제품을 갖추고 있습니다.<br>
					실험자들의 편리성과 신속성 그리고 정확한 실험결과를 위해 여러 소재와 재료들을 비교 분석하며, 철저한 품질 관리를 통해 자체 제품 생산이 이루어집니다.<br>
					핵산 추출, PCR, Real-time PCR 등 전반적인 분자생물학 실험에 사용되는 키트, 시약, 플라스틱 웨어 등 용도별
					최적화된 다양한 구성의 제품을 제공하며,
					메틀러 토레도(METTLER TOLEDO)와 같은 여러 우수한 협력사의 실험 제품도 함께 취급합니다.<br><br>
					
					메틀러 토레도 실험 기기는 간편한 작동으로 사용자 오류를 최소화하며 생산성과 개발 속도를 향상시킬 수 있는 자동화 프로세스를 지원합니다. 아울러 보다 정밀하고
					신뢰할 수 있는 측정 결과를 제공하여 산업별 규정을
					준수하도록 하며, 고객이 솔루션을 구축하고 유지하는데
					소요되는 비용과 시간을 절감하는데 기여하고 있습니다.
				</p>
				<div class="img caption_bottom">
                    <img src="/publishing/mobile-ko/dist/img/business/img-reagent-intro.png" alt="ReagentIntro">
                </div>
            </div>
            <div class="info-box-wrap">     
                <p class="title font-h4">Category</p>
                <div class="category">
	                <div class="item"><a href="https://axen.modoo.at/?link=8jaseqwo" target="_blank">PCR</a></div>
	                <div class="item"><a href="https://axen.modoo.at/?link=2k6xxy48" target="_blank">Real-time<br>PCR</a></div>
	            </div>
	            <div class="category">
	                <div class="item"><a href="https://axen.modoo.at/?link=aaucbhds" target="_blank">Sample<br>Preparation</a></div>
	                <div class="item"><a href="https://axen.modoo.at/?link=8lozt65l" target="_blank">Plastic ware</a></div>
	            </div>
	            <div class="category">
	                <div class="item"><a href="https://axen.modoo.at/?link=5dbrfd45" target="_blank">Related<br>products</a></div>
	                <div class="item"><a href="https://www.mt.com/kr/ko/home.html" target="_blank">METTLER<br>TOLEDO</a></div>
                </div>                
                <div class="btn-area">
	            	<a class="btn btn-light" href="mailto:reagent@macrogen.com" class="btn btn-white"><span>서비스문의</span></a>     
	            	<a class="btn btn-light" href="https://axen.modoo.at/" class="btn btn-white"><span>자세히 보기</span></a>                   
	            </div>                 
            </div>
        </div>
    </div>
    <!--컨텐츠 내용 e-->
</body>
