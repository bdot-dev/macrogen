<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg macrogen" style="background-image: url(/publishing/pc-ko/dist/img/macrogen/bg-authorization_v2.png);">
        <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

        <div class="frame">
            <div class="hero-title">인증</div>
            <div class="slogan ko">유전체 분석의<br>글로벌 스탠다드</div>
            <div class= "slogan-sub">마크로젠의 기술은 세계에서 인정받고 있습니다</div>
            <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">MACROGEN</li>
        <li class="breadcrumb-item">회사소개</li>
        <li class="breadcrumb-item">인증</li>
    </ol>
</nav>

            <div class="scroll-wrap">
    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
</div>

        </div>
    </div>
    <div class="container">
        <div class="macrogen macrogen-authorization">
            <!-- s tab -->
            <div class="slide-tab-wrap">
                <div class="swiper-container tab-slide-box _swiperTab">
                    <div class="swiper-wrapper _swiperTab">
                        <div class="swiper-slide active"><a href="#qualityManagementSystem">품질경영시스템</a></div>
                        <div class="swiper-slide"><a href="#clinicalDiagnosisQualityManagementSystem">임상진단 품질경영시스템</a></div>
                        <div class="swiper-slide"><a href="#internationallyAccreditedTestingInstitute">국제공인시험기관</a></div>
                        <div class="swiper-slide"><a href="#CSPCertificationProgram">CSP 인증 프로그램</a></div>
                        <div class="swiper-slide"><a href="#informationSecurityManagementSystem">정보보호 관리체계</a></div>
                    </div>
                </div>
            </div>
            <script>
                $('._swiperTab .swiper-slide').on('click', function(){
                    $(this).addClass('active').siblings().removeClass('active');
                });
            </script>
            <!-- e tab -->

            <!-- s 품질경영시스템 -->
            <div class="section" id="qualityManagementSystem" data-aos="fade-up" data-aos-duration="2000">
                <div class="title">품질경영시스템</div>
                <div class="box">
                    <div class="left">
                        <div class="title-sm">
                            <span>ISO 9001</span>
                            <div class="tooltip-box">
                                <a class="btn-tooltip _btnTooltip" href="#"><i class="icon-tooltip"></i></a>
                                <div class="text-box">
                                    <a class="btn-tooltip-close _btnTooltipClose" href="#"><i class="icon-tooltip-close"></i></a>
                                    <span>ISO 9001은 국제표준화기구&#40;ISO&#58; International Organization for Standardization&#41;에서 제정한 국제규격으로 제품 및 서비스의 품질보증에 대해 인증하는 제도입니다&#46; 품질 관련 문제를 예방하고 고객의 요구에 부합한 제품 및 서비스를 제공함으로써 고객이 신뢰할 수 있는 품질경영시스템을 구축하는 것을 목표로 합니다&#46;</span>
                                </div>
                            </div>
                        </div>
                        <div class="desc">마크로젠 본사 및 소마젠&#40;미주법인&#41;은 고객이 만족하고 신뢰할 수 있는 서비스를 제공하기 위해 영국표준협회&#40;BSI&#41;로부터 ISO 9001
                            인증을 획득하여 관리&#183;운영을 하고 있습니다&#46; 전사적인 품질 보장 방침 및 목표&#44; 업무 프로세스 상세 규정을 수립함으로써 경영 효율성을 제고함과 동시에 원가절감&#44;
                            이익개선&#44; 경쟁력 향상 등 긍정적인 성과를 내고 있습니다&#46;
                        </div>
                        <div class="btn-wrap"><a class="btn btn-sm btn-white" href="/pdf/ISO 9001.pdf" target="_blank">ISO 9001 &#58; 2005 인증서 보기</a></div>
                    </div>
                    <div class="right">
                        <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/img-authorization-1.png" alt="ISO 9001"></div>
                    </div>
                </div>
            </div>
            <!-- e 품질경영시스템 -->

            <!-- s 임상진단 품질경영시스템 -->
            <div class="section" id="clinicalDiagnosisQualityManagementSystem" data-aos="fade-up" data-aos-duration="2000">
                <div class="title">임상진단 품질경영시스템</div>
                <div class="box">
                    <div class="left">
                        <div class="title-sm">
                            <span>GMP 인정</span>
                            <div class="tooltip-box">
                                <a class="btn-tooltip _btnTooltip" href="#"><i class="icon-tooltip"></i></a>
                                <div class="text-box">
                                    <a class="btn-tooltip-close _btnTooltipClose" href="#"><i class="icon-tooltip-close"></i></a>
                                    <span>GMP&#40;Good Manufacturing Practice&#44; 의료기기 제조 및 품질관리 기준&#41;는 식품의약품안전처가 소비자 보호를 위해 마련한 제도입니다&#46; 제조소의 구조&#183;설비를 비롯하여 원자재의 구매부터 제조&#183;포장&#183;보관 및 출하에 이르기까지 전 공정에 적용하여 우수 품질의 의료기기를 생산 및 공급하게 하는 품질관리 기준입니다&#46;</span>
                                </div>
                            </div>
                        </div>
                        <div class="desc">마크로젠은 2019년 2월 식품의약품안전처로부터 NGS 기반 체외진단 시약 GMP 인정을 획득했습니다&#46;  이를 통해 체외진단 시약 제조기술의 안전성과 유효성을 검증 받아 자체 개발한 임상 진단 시약을 직접 시장에 출시 및 판매할 수 있습니다&#46; </div>
                        <div class="btn-wrap"><a class="btn btn-sm btn-white" href="/pdf/GMP_인증서.pdf" target="_blank">GMP인증서 보기</a></div>
                    </div>
                    <div class="right">
                        <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/img-authorization-2.png" alt="GMP 인정"></div>
                    </div>
                </div>
                <div class="box box-full">
                    <div class="left">
                        <div class="title-sm">
                            <span>임상시험검체분석기관 지정&#40;GCLP&#41;</span>
                            <div class="tooltip-box">
                                <a class="btn-tooltip _btnTooltip" href="#"><i class="icon-tooltip"></i></a>
                                <div class="text-box">
                                    <a class="btn-tooltip-close _btnTooltipClose" href="#"><i class="icon-tooltip-close"></i></a>
                                    <span>임상시험검체분석기관 지정 제도와 GCLP&#40;Good Clinical Laboratory Practice&#44; 임상시험검체분석관리기준&#41;는 식품의약품안전처가 2017년 10월 공표된 약사법 개정안에 따라 신설되었습니다&#46; 임상시험에 필요한 검체 분석을 공인된 검체 분석기관에서 실시하는 것을 의무화한 제도로 의약품 임상시험의 과학적이고 안전한 수행을 목표로 하고 있습니다&#46;  임상시험검체분석기관은 임상시험 대상에게서 수집된 혈액&#44; 소변 등에 대해 검체 분석시험을 실시하는 기관으로&#44; &#39;약사법&#39;과 &#39;의약품 등의 안전에 관한 규칙&#39;에 따라 식약처장이 지정합니다&#46;</span>
                                </div>
                            </div>
                        </div>
                        <div class="desc">마크로젠은 2019년 5월 식품의약품안전처가 공인한 임상검체분석기관으로 지정되었습니다&#46; 국내 최초로 NGS 기술을 통한 검체 분석이 가능한 기관으로써 신뢰성 높은 분석 서비스를 제공하여 국내 임상시험의 경쟁력 강화에 기여합니다&#46;</div>
                        <div class="btn-wrap"><a class="btn btn-sm btn-white" href="/pdf/임상시험검체분석기관지정서.pdf" target="_blank">임상시험검체분석기관 지정서 GCLP  보기</a></div>
                    </div>
                </div>
                <div class="box">
                    <div class="left">
                        <div class="title-sm">
                            <span>CAP 인증</span>
                            <div class="tooltip-box">
                                <a class="btn-tooltip _btnTooltip" href="#"><i class="icon-tooltip"></i></a>
                                <div class="text-box">
                                    <a class="btn-tooltip-close _btnTooltipClose" href="#"><i class="icon-tooltip-close"></i></a>
                                    <span>CAP 인증은 미국 임상병리검사 품질인증기관인 CAP&#40;College of American Pathologists&#44; 미국병리학회&#41;에서 1961년부터 시행해 온 평가제도로&#44; 환자에게 임상검사를 제공하는 과정에서 최고 수준의 품질 관리가 되고 있는지를 심사 및 평가하는 인증 프로그램입니다&#46; CAP 인증은 미국 연방 정부가 자체 프로그램과 동등하거나 더 엄격한 것으로 평가할 만큼 신뢰도와 필요성을 인정받고 있으며&#44; 정확도 테스트와 실사단의 현장검증을 통과해야 획득할 수 있습니다&#46;</span>
                                </div>
                            </div>
                        </div>
                        <div class="desc">마크로젠 본사 및 분당 정밀의학센터와 소마젠&#40;미주법인&#41;&#44; 싱가포르법인은 NGS 기술을 이용한 임상진단 시퀀싱 분야에서 CAP 인증을 획득했습니다&#46;</div>
                        <div class="btn-wrap"><a class="btn btn-sm btn-white" href="/pdf/Macrogen HQ-CAP Certificate of Accreditation 2022-2024.pdf" target="_blank">CAP 인증서 보기</a></div>
                    </div>
                    <div class="right">
                        <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/img-authorization-3.png" alt="CAP 인증"></div>
                    </div>
                </div>
                <div class="box">
                    <div class="left">
                        <div class="title-sm">
                            <span>CLIA 인증</span>
                            <div class="tooltip-box">
                                <a class="btn-tooltip _btnTooltip" href="#"><i class="icon-tooltip"></i></a>
                                <div class="text-box">
                                    <a class="btn-tooltip-close _btnTooltipClose" href="#"><i class="icon-tooltip-close"></i></a>
                                    <span>CLIA&#40;Clinical Laboratory Improvement Amendments&#44; 미국실험실표준인증&#41;는 질병의 진단&#44; 예방&#44; 치료 등을 목적으로 임상검사를 수행하는 실험실에 대해 검사의 정확도&#44; 신뢰성&#44; 적절성 등을 검증하는 미국의 표준인증제도입니다&#46;</span>
                                </div>
                            </div>
                        </div>
                        <div class="desc">마크로젠은 국내외 임상진단 시장의 진출을 위해 한국 본사 및 분당 정밀의학센터와 소마젠&#40;미주법인&#41; 임상검사실에 대해 CLIA 인증을 획득했습니다&#46; 이를 통해 국내외 의료기관의 환자 시료를 검사하는 것은 물론&#44; 다양한 임상진단 서비스를 제공하고 있습니다&#46;</div>
                        <div class="btn-wrap"><a class="btn btn-sm btn-white" href="/pdf/CLIA_인증.pdf" target="_blank">CLIA인증서 보기</a></div>
                    </div>
                    <div class="right">
                        <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/img-authorization-4.png" alt="CLIA 인증"></div>
                    </div>
                </div>
                <div class="box">
                    <div class="left">
                        <div class="title-sm">
                            <span>유전자검사 정확도평가 인증</span>
                            <div class="tooltip-box">
                                <a class="btn-tooltip _btnTooltip" href="#"><i class="icon-tooltip"></i></a>
                                <div class="text-box">
                                    <a class="btn-tooltip-close _btnTooltipClose" href="#"><i class="icon-tooltip-close"></i></a>
                                    <span>유전자검사 정확도평가 인증서는 의료 및 연구 분야에서 유전자검사가 일반화됨에 따라 검사기관의 서비스 질 향상 및 건전한 경쟁과 발전을 유도하기 위해 생긴 평가 제도입니다&#46; 해당 인증을 관리 감독하는 한국유전자검사평가원은 검사 결과의 정확도&#44; 업무수행 과정의 적정성&#44; 검사 시설&#183;장비의 적합성&#44; 검사 인력의 적정성 등을 평가함으로써 무분별하고 부정확한 유전자검사가 초래하는 혼란을 사전에 방지하는 것을 목표로 합니다&#46;</span>
                                </div>
                            </div>
                        </div>
                        <div class="desc">마크로젠은 본사에서 수행하는 분자유전검사 서비스와 관련하여 매년 A등급&#40;보험 미등재 항목 포함 시&#44; P등급&#41;을 획득했습니다&#46; 고객에게 더욱 신뢰할 수 있는 결과를 제공함으로써 국민건강 및 생명과학 분야의 발전에 기여합니다&#46;</div>
                        <div class="btn-wrap"><a class="btn btn-sm btn-white" href="/pdf/유전자검사 정확도평가 인증_2022.pdf" target="_blank">유전자검사 정확도평가 인증서 보기</a></div>
                    </div>
                    <div class="right">
                        <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/img-authorization-5.png" alt="유전자검사 정확도평가 인증"></div>
                    </div>
                </div>
                <div class="box box-full">
                    <div class="left">
                        <div class="title-sm">
                            <span>NGS 임상검사실 인증</span>
                            <div class="tooltip-box">
                                <a class="btn-tooltip _btnTooltip" href="#"><i class="icon-tooltip"></i></a>
                                <div class="text-box">
                                    <a class="btn-tooltip-close _btnTooltipClose" href="#"><i class="icon-tooltip-close"></i></a>
                                    <span>NGS 임상검사실 인증은 식품의약품안전처가 2016년 8월부터 시행한 제도로 암 유전체 분석&#44; 희귀질환 검사 등 질병의 진단과 검사에 NGS 기술을 신속하게 사용합니다&#46; 장비와 시설&#44; 인력&#44; 검사능력 등 품질관리 체계와 검사결과 신뢰성을 종합적으로 검증해 인증을 부여합니다&#46;</span>
                                </div>
                            </div>
                        </div>
                        <div class="desc">마크로젠은 2017년 4월 식품의약품안전처 NGS 임상검사실 인증을 획득했습니다&#46; 암 패널&#44; 액체생검 등 최신 기술을 활용한 다양한 NGS 기반 임상진단 검사 서비스를 개발 및 제공합니다&#46;</div>
                    </div>
                </div>
            </div>
            <!-- e 임상진단 품질경영시스템 -->

            <!-- s 국제공인시험기관 -->
            <div class="section" id="internationallyAccreditedTestingInstitute" data-aos="fade-up" data-aos-duration="2000">
                <div class="title">국제공인시험기관</div>
                <div class="box box-full">
                    <div class="left">
                        <div class="title-sm">
                            <span>DAkkS 및 KOLAS 인정 &#40;ISO&#47;IEC 17025&#41;</span>
                        </div>
                        <div class="desc">마크로젠은 2016년 12월 독일국가인정기관인 DAkkS로부터 &#39;포렌식 분야 법의유전학&#39;에 대한 국제공인시험기관 인정을 받았으며&#44; 2017년 3월 국가기술표준원 산하 한국인정기구인 KOLAS&#40;Korea Laboratory Accreditation Scheme&#41;로부터 &#39;법과학시험 DNA형 분석시험&#39;에 대해 국제공인시험기관 인정을 획득했습니다&#46; DAkkS 및 KOLAS 인정은 마크로젠의 DNA형 분석 시험&#40;Relationship genetic test&#41;이 세계적 수준의 기술력과 신뢰성을 보유하고 있음을 입증하는 것으로 마크로젠이 ISO&#47;IEC 17025 국제표준규격에 따른 국제공인시험성적서를 제공할 수 있고&#44; 국제적으로 통용될 수 있음을 뜻합니다&#46; 또한 마크로젠이 발급한 해당 분야 시험성적서가 국제 시험소인 정기구협의체&#40;ILAC&#41;에 가입한 전 세계 94개국에서 상호 인증절차에 따라 자국에서 발급된 시험성적서와 동등한 효력을 가지게 되는 것이기도 합니다&#46;</div>
                        <div class="img-wrap">
                            <div class="img">
                                <img src="/publishing/pc-ko/dist/img/macrogen/img-authorization-6.png" alt="DAkkS 및 KOLAS 인정 (ISO/IEC 17025)">
                                <a class="btn btn-sm btn-white" href="/pdf/공평성선언문_ISOIEC.pdf" target="_blank">공평성 선언문 보기</a>
                            </div>
                            <div class="img">
                                <img src="/publishing/pc-ko/dist/img/macrogen/img-authorization-7.png" alt="DAkkS 및 KOLAS 인정 (ISO/IEC 17025)">
                                <a class="btn btn-sm btn-white" href="/pdf/KOLAS_인증서.pdf" target="_blank">KOLAS인증서 보기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- e 국제공인시험기관 -->

            <!-- s CSP 인증 프로그램  -->
            <div class="section" id="CSPCertificationProgram" data-aos="fade-up" data-aos-duration="2000">
                <div class="title">CSP 인증 프로그램
                    <div class="tooltip-box">
                        <a class="btn-tooltip _btnTooltip" href="#"><i class="icon-tooltip"></i></a>
                        <div class="text-box">
                            <a class="btn-tooltip-close _btnTooltipClose" href="#"><i class="icon-tooltip-close"></i></a>
                            <span>CSP인증 프로그램은 유전자분석장비를 포함하여 Microarray&#44; 실험관련 kit 등을 제공하는 유전자분석 플랫폼의 공급업체와 해당 서비스를 공급하는 업체들이 고객들에게 우수한 품질의 서비스를 제공하기 위해 생겨난 상호 서비스 협력 프로그램입니다&#46;</span>
                        </div>
                    </div>
                </div>
                <div class="box box-full box-full-sm">
                    <div class="left">
                        <div class="desc">마크로젠은 고객들이 신뢰할 수 있는 최고품질의 서비스를 제공하기 위해 Illumina&#44; Pacific Biosciences&#44;Life Technologies&#44; Thermo Fisher Scientific&#44; Agilent Technology, 10x Genomics 등의 협력사가 제공하는 서비스 공급업체 인증 프로그램&#40;CSP&#44; Certified Service Provider&#41;에 참여합니다&#46; 자체적으로 구축한  전사 서비스 품질경영시스템과 함께 다양한 CSP인증 프로그램 참여를 통해 유전자분석 플랫폼 공급업체가 규정한 서비스 품질기준을 준수합니다&#46; 고품질의 서비스를 제공하고&#44; 유전자분석 플랫폼 공급업체와의 협력을 바탕으로 공동마케팅 및 지원 프로그램을 운영함으로써 고객들에게 다양한 혜택을 제공합니다&#46;</div>
                        <div class="img-wrap">
                            <div class="img">
                                <span class="tit">Illumina</span>
                                <img src="/publishing/pc-ko/dist/img/macrogen/img-authorization-8.png" alt="Illumina">
                                <a class="btn btn-sm btn-white" href="/pdf/CSP_Illumina Propel+CSpro.pdf" target="_blank">인증서 보기</a>
                            </div>
                            <div class="img">
                                <span class="tit">Pacific Biosciences</span>
                                <img src="/publishing/pc-ko/dist/img/macrogen/img-authorization-9.png" alt="Pacific Biosciences">
                                <a class="btn btn-sm btn-white" href="/pdf/CSP_Certificate_PacBio.pdf" target="_blank">인증서 보기</a>
                            </div>
                            <div class="img">
                                <span class="tit">Agilent Technologies</span>
                                <img src="/publishing/pc-ko/dist/img/macrogen/img-authorization-10.png" alt="Agilent Technologies">
                                <a class="btn btn-sm btn-white" href="/pdf/CSP_Certificate_Agilent_2019.pdf" target="_blank">인증서 보기</a>
                            </div>
                            <div class="img">
                                <span class="tit">Life Technologies</span>
                                <img src="/publishing/pc-ko/dist/img/macrogen/img-authorization-11.png" alt="Life Technologies">
                                <a class="btn btn-sm btn-white" href="/pdf/CSP_Certificate_LifeTech.pdf" target="_blank">인증서 보기</a>
                            </div>
                            <div class="img">
                                <span class="tit">Thermo Fisher Scientific</span>
                                <img src="/publishing/pc-ko/dist/img/macrogen/img-authorization-12.png" alt="Thermo Fisher Scientific">
                                <a class="btn btn-sm btn-white" href="/pdf/CSP_Certificate_ThermoFisher.pdf" target="_blank">인증서 보기</a>
                            </div>
                            <div class="img">
                                <span class="tit">10x Genomics</span>
                                <img src="/publishing/pc-ko/dist/img/macrogen/img-authorization-16.png" alt="10x Genomics">
                                <a class="btn btn-sm btn-white" href="/pdf/CSP_Certificate_10xGenomics.pdf" target="_blank">인증서 보기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- e CSP 인증 프로그램  -->

            <!-- s 정보보호 관리체계  -->
            <div class="section" id="informationSecurityManagementSystem" data-aos="fade-up" data-aos-duration="2000">
                <div class="title">정보보호 관리체계</div>
                <div class="box">
                    <div class="left">
                        <div class="title-sm">
                            <span>ISO27701 &#40;국제표준 개인정보보호&#41;</span>
                            <div class="tooltip-box">
                                <a class="btn-tooltip _btnTooltip" href="#"><i class="icon-tooltip"></i></a>
                                <div class="text-box">
                                    <a class="btn-tooltip-close _btnTooltipClose" href="#"><i class="icon-tooltip-close"></i></a>
                                    <span>ISO27701는 개인정보보호 관리절차&#44; 비식별화&#44; 암호화 등 49개 항목에 대한 관리 기준을 통과해야 하며&#44; 국제 표준 인증인 ISO27001을 사전에 보유해야 취득할 수 있습니다&#46;</span>
                                </div>
                            </div>
                        </div>
                        <div class="desc with-date">마크로젠은 국제표준화기구&#40;ISO&#41;가 2019년 8월 제정한 가장 권위 있는 국제 표준 개인정보보호 인증 ISO27701&#40;국제표준 개인정보보호&#41;을 획득하여 국내&#183;국제 최고 수준의 정보보호 인증 3종을 모두 취득한 유일한 기업입니다&#46;</div>
                        <div class="date">&#8251; 유효기간 &#58; 2021&#46;06&#46;22 &#126; 2024&#46;06&#46;21</div>
                        <div class="btn-wrap"><a class="btn btn-sm btn-white" href="/pdf/ISO27701.pdf" target="_blank">ISO27701 인증서 보기</a></div>
                    </div>
                    <div class="right">
                        <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/img-authorization-13.png" alt="ISO27701 (국제표준 개인정보보호)"></div>
                    </div>
                </div>
                <div class="box">
                    <div class="left">
                        <div class="title-sm">
                            <span>ISMS&#45;P &#40;정보보호 및 개인정보보호 관리체계&#41;</span>
                        </div>
                        <div class="desc with-date">마크로젠은 정밀의학에 필요한 정보의 철저한 관리 체계를 구축하기 위해 ISMS&#45;P 인증을 획득했습니다&#46;  고객 정보 및 유전체 데이터를 안전하게 보호한다는 것을 입증하는 객관적인 지표입니다&#46; 마크로젠이 업계 최초로 획득한 ISMS&#45;P는 과학기술정보통신부와 개인정보보호위원회가 공동으로 고시한 국내 최고 수준의 보안 관리 체계입니다&#46; </div>
                        <div class="date">&#8251; 유효기간 &#58; 2021&#46;03&#46;03 &#126; 2024&#46;03&#46;02</div>
                        <div class="btn-wrap"><a class="btn btn-sm btn-white" href="/pdf/ISMS-P 인증서.pdf" target="_blank">ISMS&#45;P 인증서 보기</a></div>
                    </div>
                    <div class="right">
                        <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/img-authorization-14.png" alt="ISMS-P (정보보호 및 개인정보보호 관리체계)"></div>
                    </div>
                </div>
                <div class="box">
                    <div class="left">
                        <div class="title-sm">
                            <span>ISO&#47;IEC 27001&#58;2013 인증</span>
                            <div class="tooltip-box">
                                <a class="btn-tooltip _btnTooltip" href="#"><i class="icon-tooltip"></i></a>
                                <div class="text-box">
                                    <a class="btn-tooltip-close _btnTooltipClose" href="#" ><i class="icon-tooltip-close"></i></a>
                                    <span>ISO&#47;IEC 27001은 국제표준화기구 ISO와 국제전기기술위원회 IEC에서 제정한 것으로&#44; 정보보호 분야 내 최고 권위의 국제 표준 인증입니다&#46; ISO&#47;IEC 27001 인증을 획득하기 위해서는 정보보호 정책&#44; 물리적 보안&#44; 정보접근 통제 등 정보보호 관리 영역 총 14개 분야 114개 세부 항목에 대한 엄격한 심사를 통과해야 합니다&#46;</span>
                                </div>
                            </div>
                        </div>
                        <div class="desc with-date">마크로젠은 업계 최초 국내 개인정보보호&#40;PIMS&#41; 및 국제 정보보호&#40;ISO&#47;IEC 27001&#41; 인증을 획득했습니다&#46; </div>
                        <div class="date">&#8251; 유효기간 &#58; 2021&#46;03&#46;03 &#126; 2024&#46;03&#46;02</div>
                        <div class="btn-wrap"><a class="btn btn-sm btn-white" href="/pdf/ISO_IEC 27001-2013 인증서.pdf" target="_blank">ISO&#47;IEC 27001&#58;2013 인증서 보기</a></div>
                    </div>
                    <div class="right">
                        <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/img-authorization-15.png" alt="ISO/IEC 27001:2013 인증"></div>
                    </div>
                </div>
            </div>
            <!-- e 정보보호 관리체계  -->
        </div>
    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->


</body>
