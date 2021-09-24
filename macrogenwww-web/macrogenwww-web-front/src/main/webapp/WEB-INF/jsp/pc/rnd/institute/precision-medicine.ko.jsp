<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="research-wrap">

    <div class="full-bg research_bg">
        <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

        <div class="frame frameB">
            <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">R&D</li>
        <li class="breadcrumb-item">정밀의학연구소</li>
    </ol>
</nav>

            <div class="hero-title">정밀의학연구소</div>
            <div class="slogan-sub">환자 맞춤형 정밀의료 실현을 위한 선도 연구</div>
        </div>
    </div>

    <div class="container container-fluid">
        <div class="section_customMedicine">
            <div class="info-box">
                <div class="title">환자 맞춤형 정밀의료 기반의<br>개인별 맞춤의학을 선도합니다</div>
                <div class="desc">다양한 데이터를 수집 및 분석해 개인에 맞도록 질병 예방과 치료에 대한 연구를 진행합니다.</div>
            </div>
            <div class="img"><img src="/publishing/pc-ko/dist/img/RD/img-person_research.png" alt="연구하는 사람 사진"></div>
        </div>
        <div class="section_info_list">
            <div class="box clearfix">
                <div class="sub_title">정밀의학 연구활성화를 위해<br>설립했습니다</div>
                <div class="sub_desc">
                    <p>마크로젠은 2016년 정밀의학 연구 활성화를 위해 ‘정밀의학연구소’를 설립했습니다.<br>
                        국내외 최고 수준의 의료진 및 연구진과 파트너십을 강화하고, 첨단 유전체 분석 기술 및 병원 임상 연구 체계를 활용하여 환자에게 필요한 맞춤 의학 서비스 개발과 기초 연구에
                        전념하고 있습니다.<br>
                        Next Generation Sequencing(NGS) 기반의 항암 진단 시스템 개발, circulating tumor DNA 분석 등 연구에 박차를 가하고 있으며
                        정확하고 신속한 정밀의학 검사서비스를 개발해 임상 현장에 제공할 예정입니다.</p>
                    <img src="/publishing/pc-ko/dist/img/RD/img-research_activation.png" alt="정밀의학 연구활성화 스포이드 사진">
                </div>
            </div>

            <div class="box clearfix">
                <div class="sub_title">정밀의학은 미래형<br>의료 패러다임입니다</div>
                <div class="sub_desc">
                    <p>정밀의학(Precision medicine)은 개인의 유전체 정보, 생활습관, 의료 정보 등 데이터를 기반으로 개인별 특성에 따라 질병 예측 및 예방, 맞춤 진단, 치료법을
                        제공하는 미래형 의료 패러다임입니다.<br>
                        특히 유전체 분석을 통해 개인의 유전적 차이점을 정확히 인식하고, 이를 개인별 맞춤 진단 및 치료에 활용합니다.<br>
                        향후 마크로젠 정밀의학연구소는 대규모 유전체 분석을 통해 얻은 아시아인의 유전적 변이 DB를 활용해 한국과 아시아 정밀의학 실현에 기여할 예정입니다.</p>
                    <img src="/publishing/pc-ko/dist/img/RD/img-medical_paradigm.png" alt="정밀의학 의료 패러다임 모니터 만지는 사람 사진 ">
                </div>
            </div>

        </div>
        <div class="section_status">
            <div class="font-h4">연구성과 및 현황</div>
            <nav class="tab-basic">
                <div class="nav tab-list" id="tab" role="tablist">
                    <a class="nav-link active" id="nav-tab-1" data-toggle="tab" href="#nav-1" role="tab"
                       aria-controls="nav-1" aria-selected="true">
                        <span>연구진행</span>
                    </a>
                    <a class="nav-link" id="nav-tab-2" data-toggle="tab" href="#nav-2" role="tab" aria-controls="nav-2"
                       aria-selected="false">
                        <span>플랫폼 구축</span>
                    </a>
                    <a class="nav-link" id="nav-tab-3" data-toggle="tab" href="#nav-3" role="tab" aria-controls="nav-3"
                       aria-selected="false">
                        <span>개발</span>
                    </a>
                </div>
            </nav>
            <script>
                $('#tab a').on('click', function (event) {
                    event.preventDefault()
                    $(this).tab('show')
                })
            </script>
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-1" role="tabpanel" aria-labelledby="nav-tab-1">
                    <!-- s  연구진행 -->
                    <div class="slide-box">
                        <div class="slider">
                            <div class="swiper-container _Slider01 ">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide item">
                                        <a href="#">
                                            <span class="img">
                                                <img src="/publishing/pc-ko/dist/img/RD/img_Institute_01.png" alt="WC300 한국인 소화기암 정밀 진단 시스템 및 기술 개발 한국인 소화기암 WC300 한국인 소화기암 정밀 진단 시스템 및 기술 개발 한국인 소화기암">
                                            </span>
                                            <span class="txt"><span>WC300 한국인 소화기암 정밀 진단 시스템 및 기술 개발 한국인 소화기암 WC300 한국인 소화기암 정밀 진단 시스템 및 기술 개발 한국인 소화기암</span></span>
                                        </a>
                                    </div>
                                    <div class="swiper-slide item">
                                        <a href="#">
                                            <span class="img">
                                               <img src="/publishing/pc-ko/dist/img/RD/img_Institute_02.png" alt="Hi-C(3D chromosome confor mation capture) 기술">
                                            </span>
                                            <span class="txt"><span>Hi-C(3D chromosome confor mation capture) 기술</span></span>
                                        </a>
                                    </div>
                                    <div class="swiper-slide item">
                                        <a href="#">
                                            <span class="img">
                                               <img src="/publishing/pc-ko/dist/img/RD/img_Institute_03.png" alt="한국인 산모 및 신생아 마이크로바이옴 연구 한국인 산모 및 신생아 마이크로바이옴 연구">
                                            </span>
                                            <span class="txt"><span>한국인 산모 및 신생아 마이크로바이옴 연구 한국인 산모 및 신생아 마이크로바이옴 연구</span></span>
                                        </a>
                                    </div>
                                    <div class="swiper-slide item">
                                        <a href="#">
                                            <span class="img">
                                                <img src="/publishing/pc-ko/dist/img/RD/img_Institute_04.png" alt="KF1 항암 맞춤형 다중 동반진단 시스템 연구">
                                            </span>
                                            <span class="txt"><span>KF1 항암 맞춤형 다중 동반진단 시스템 연구</span></span>
                                        </a>
                                    </div>
                                    <div class="swiper-slide item">
                                        <a href="#">
                                            <span class="img">
                                               <img src="/publishing/pc-ko/dist/img/RD/img_Institute_05.png" alt="게놈아시아 100K 이니셔티브 주도">
                                            </span>
                                            <span class="txt"><span>게놈아시아 100K 이니셔티브 주도</span></span>
                                        </a>
                                    </div>
                                    <div class="swiper-slide item">
                                        <a href="#">
                                            <span class="img">
                                              <img src="/publishing/pc-ko/dist/img/RD/img_Institute_06.png" alt="아시안 게놈 로드 참여">
                                            </span>
                                            <span class="txt"><span>아시안 게놈 로드 참여</span></span>
                                        </a>
                                    </div>
                                    <div class="swiper-slide item">
                                        <a href="#">
                                            <span class="img">
                                              <img src="/publishing/pc-ko/dist/img/RD/img_Institute_07.png" alt="폐 선암 원인 유전자 발굴">
                                            </span>
                                            <span class="txt"><span>폐 선암 원인 유전자 발굴</span></span>
                                        </a>
                                    </div>
                                </div>
                                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                            </div>
                            <div class="slider-navigation">
                                <a href="#" class="btn btn-circle btn-black btn-md _btnPrev01 swiper-button-disabled"
                                   tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true"><i
                                        class="icon icon-arrow-left-md-white"></i></a>
                                <a href="#" class="btn btn-circle btn-black btn-md _btnNext01" tabindex="0"
                                   role="button" aria-label="Next slide" aria-disabled="false"><i
                                        class="icon icon-arrow-right-md-white"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- e  연구진행 -->
                </div>
                <div class="tab-pane fade" id="nav-2" role="tabpanel" aria-labelledby="nav-tab-2">
                    <!-- s  플랫폼 구축-->
                    <div class="slide-box">
                        <div class="slider">
                            <div class="swiper-container _Slider02">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide item">
                                        <a href="#">
                                            <span class="img">
                                                <img src="/publishing/pc-ko/dist/img/RD/img-platform_01.png" alt="Oxford Nanopore 플랫폼 구축">
                                            </span>
                                            <span class="txt"><span>Oxford Nanopore 플랫폼 구축</span></span>
                                        </a>
                                    </div>
                                    <div class="swiper-slide item">
                                        <a href="#">
                                            <span class="img">
                                                <img src="/publishing/pc-ko/dist/img/RD/img-platform_02.png" alt="MGI 플랫폼 구축">
                                            </span>
                                            <span class="txt"><span>MGI 플랫폼 구축</span></span>
                                        </a>
                                    </div>
                                    <div class="swiper-slide item">
                                        <a href="#">
                                            <span class="img">
                                                <img src="/publishing/pc-ko/dist/img/RD/img-platform_03.png" alt="10xGenomics single-cell RNA-seq 플랫폼 구축">
                                            </span>
                                            <span class="txt"><span>10xGenomics single-cell RNA-seq 플랫폼 구축</span></span>
                                        </a>
                                    </div>
                                    <div class="swiper-slide item">
                                        <a href="#">
                                            <span class="img">
                                                <img src="/publishing/pc-ko/dist/img/RD/img-platform_04.png" alt="약물유전자 검사 NGS 플랫폼 구축">
                                            </span>
                                            <span class="txt"><span>약물유전자 검사 NGS 플랫폼 구축</span></span>
                                        </a>
                                    </div>
                                    <div class="swiper-slide item">
                                        <a href="#">
                                            <span class="img">
                                                <img src="/publishing/pc-ko/dist/img/RD/img-platform_05.png" alt="Hi-C (3D chromosome conformation capture) 기술 Hi-C (3D chromosome conformation capture) 기술">
                                            </span>
                                            <span class="txt"><span>Hi-C (3D chromosome conformation capture) 기술 Hi-C (3D chromosome conformation capture) 기술</span></span>
                                        </a>
                                    </div>

                                </div>
                                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                            </div>
                            <div class="slider-navigation">
                                <a href="#" class="btn btn-circle btn-black btn-md _btnPrev02 swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true"><i class="icon icon-arrow-left-md-white"></i></a>
                                <a href="#" class="btn btn-circle btn-black btn-md _btnNext02" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false"><i class="icon icon-arrow-right-md-white"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- e  플랫폼 구축-->
                </div>
                <div class="tab-pane fade" id="nav-3" role="tabpanel" aria-labelledby="nav-tab-3">
                    <!-- s  개발-->
                    <div class="slide-box">
                        <div class="slider">
                            <div class="swiper-container _Slider03">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide item">
                                        <a href="#">
                                            <span class="img">
                                                <img src="/publishing/pc-ko/dist/img/RD/img-development_01.png" alt="COVID-19 진단 키트 개발">
                                            </span>
                                            <span class="txt"><span>COVID-19 진단 키트 개발</span></span>
                                        </a>
                                    </div>
                                    <div class="swiper-slide item">
                                        <a href="#">
                                            <span class="img">
                                            <img src="/publishing/pc-ko/dist/img/RD/img-development_02.png" alt="동북아시아 DB (NARD) 구축">
                                            </span>
                                            <span class="txt"><span>동북아시아 DB (NARD) 구축</span></span>
                                        </a>
                                    </div>
                                    <div class="swiper-slide item">
                                        <a href="#">
                                            <span class="img">
                                         <img src="/publishing/pc-ko/dist/img/RD/img-development_03.png" alt="APOE 알츠하이머 PCR 진단 개발">
                                            </span>
                                            <span class="txt"><span>APOE 알츠하이머 PCR 진단 개발</span></span>
                                        </a>
                                    </div>
                                    <div class="swiper-slide item">
                                        <a href="#">
                                            <span class="img">
                                     <img src="/publishing/pc-ko/dist/img/RD/img-development_04.png" alt="AK1 한국인 표준유전체 작성">
                                            </span>
                                            <span class="txt"><span>AK1 한국인 표준유전체 작성</span></span>
                                        </a>
                                    </div>
                                    <div class="swiper-slide item">
                                        <a href="#">
                                            <span class="img">
                                                 <img src="/publishing/pc-ko/dist/img/RD/img-development_05.png" alt="한국인 유전체 지도 초안 완성">
                                            </span>
                                            <span class="txt"><span>한국인 유전체 지도 초안 완성</span></span>
                                        </a>
                                    </div>
                                    <div class="swiper-slide item">
                                        <a href="#">
                                            <span class="img">
                                       <img src="/publishing/pc-ko/dist/img/RD/img-development_06.png" alt="알코올 생산 박테리아인 자이모모나스 모빌리스 유전체 분석">
                                            </span>
                                            <span class="txt"><span>알코올 생산 박테리아인 자이모모나스 모빌리스 유전체 분석</span></span>
                                        </a>
                                    </div>
                                </div>
                                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                            </div>
                            <div class="slider-navigation">
                                <a href="#" class="btn btn-circle btn-black btn-md _btnPrev03 swiper-button-disabled"
                                   tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true"><i
                                        class="icon icon-arrow-left-md-white"></i></a>
                                <a href="#" class="btn btn-circle btn-black btn-md _btnNext03" tabindex="0"
                                   role="button" aria-label="Next slide" aria-disabled="false"><i
                                        class="icon icon-arrow-right-md-white"></i></a>
                            </div>
                        </div>

                    </div>
                    <!-- e  개발-->
                </div>
            </div>
        </div>

    </div>
    <script>

        function setSlider(index){
            new Swiper("._Slider0" + index, {
                slidesPerView: 4,
                spaceBetween: 20,
                slidesPerGroup: 4,
                loopFillGroupWithBlank: true,
                grabCursor: true,
                navigation: {
                    nextEl: "._btnNext0" + index,
                    prevEl: "._btnPrev0" + index,
                },
            });
        }
        setSlider(1)

        var tabEl = $('[data-toggle="tab"]')
        tabEl.on('shown.bs.tab', function (event) {
            console.log(event.target) // newly activated tab
            console.log(event.relatedTarget) // previous active tab
            if (event.target.id.indexOf('tab-2') !== -1) {
                setSlider(2)
            }else if (event.target.id.indexOf('tab-3') !== -1) {
                setSlider(3)
            }
        })

    </script>


</body>