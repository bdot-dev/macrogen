<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg" style="background-image: url(/publishing/mobile-ko/dist/img/macrogen/bg-management.png);">
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
            <div class="font-h4">경영진</div>
            <div class="font-slogan">널리 인간을<br/>이롭게 하다</div>
            <div class="font-h7-r">‘홍익인간’의 가치를 실현하기 위해<br/> 오늘도 밤을 밝힙니다</div>
            <div class="scroll-wrap">
    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
</div>

        </div>
    </div>
    <div class="container pt-0">
        <div class="macrogen macrogen-management">
            <nav class="tab-primary">
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                    <button class="nav-link active" id="nav-tab-1" data-bs-toggle="tab" data-bs-target="#nav-1" type="button" role="tab" aria-controls="nav-1" aria-selected="true"><span>회장</span></button>
                    <button class="nav-link" id="nav-tab-2" data-bs-toggle="tab" data-bs-target="#nav-2" type="button" role="tab" aria-controls="nav-2" aria-selected="false"><span>대표이사</span></button>
                    <button class="nav-link" id="nav-tab-3" data-bs-toggle="tab" data-bs-target="#nav-3" type="button" role="tab" aria-controls="nav-3" aria-selected="false"><span>Leadership Team</span></button>
                </div>
            </nav>
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-1" role="tabpanel" aria-labelledby="nav-tab-1">
                    <!-- s  회장 -->
                    <div class="section-chairman">
                        <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                            <div class="font-h3">
                                마크로젠의 목표는 전세계 모두에게
                                DNA 설계도를 드리는 것입니다.
                            </div>
                            <div class="info-wrap">
                                <div class="img">
                                    <img src="/publishing/mobile-ko/dist/img/macrogen/img-chairman.png" alt="마크로젠 회장 서정선">
                                </div>
                                <div class="info">
                                    <div class="font-h7">
                                        21세기 인류가 게놈 프로젝트를 통해 이룩한
                                        '인간 게놈지도의 완성'이라는 성과 이후,
                                        의료 패러다임은 치료 중심에서
                                        질병 예방과 건강 관리로 급변해왔습니다.
                                    </div>
                                    <div class="font-body">
                                        또한, 1,000달러 게놈이 실현됨에 따라 인류 사회는 의료 정보와 인간 유전체 정보가 통합된 빅데이터를 기반으로 질병을 예측, 진단, 치료하는 정밀의학(Precision Medicine)의 시대로 빠르게 나아가고 있습니다. 마크로젠은 이러한 의료 패러다임의 변화와 정밀의학 실현의 핵심인 유전체 의학, 즉 Genomics Medicine의 중요성을 일찍부터 인식하고 인간 유전체 분석 분야에서 탁월한 연구 성과들을 달성해 왔습니다. 특히 마크로젠은 2009년 세계 4번째 개인 유전체 분석 결과이자 세계 최초의 북방계 아시아인 유전체 분석 결과로서 한국인의 전장 유전체를 분석하였으며 2016년에는 기존 국제 표준 유전체의 한계를 극복하고 미래 정밀의학에 적용 가능한 세계 최고 완성도의 아시아인 표준 유전체를 구축하는 연구 성과를 달성했습니다.<br><br>
                                        지난 20여 년간 계속해서 변화하고 적응하며 성장해온 마크로젠은 새로운 경영체제와 중장기 비전 ‘마크로젠 2.0’으로의 혁신을 통해 국내 및 글로벌 지놈센터 확장 등 ‘Genome 파운드리’ 산업 글로벌 No. 1을 이룩할 채비를 갖추고, 마크로젠 의료재단 진헬스 건강검진 센터 등 의료기관에서 시행하는 질병 예측 유전자 맞춤 건강검진 서비스를 통해 클리닉 분야에서도 제2의 도약을 준비하고 있습니다.<br><br> DNA 분석 전후방 사업 등 수직계열화를 통해 내실을 더욱 다지는 한편, ‘웰니스’를 구심점으로 한 헬스케어 기업으로서 글로벌 네트워크를 확장해 나가며 유전체 정보 등 빅데이터에 인공지능(AI) 분석 기술을 결합하는 방식의 헬스케어 디지털 전환을 바탕으로 생로병사의 한계에 대한 꿈을 실현할 수 있도록 계속해서 앞으로 나아가겠습니다.
                                    </div>
                                    <div class="sign">
                                        <span class="font-body-h">마크로젠 회장</span>
                                        <span class="font-h7">서정선</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- e  회장 -->

                    <!-- s  회장 경력-->
                    <div class="section-chairman-career">
                        <div class="swiper-container _slider" data-aos="fade-up" data-aos-duration="2000">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="inner">
                                        <div class="item line-bottom">
                                            <div class="font-h5">학력</div>
                                            <div class="list">
                                                <div class="row">
                                                    <div class="col">
                                                        <ul>
                                                            <li>
                                                                <span>1980</span>
                                                                <span>서울대학교 대학원 졸업, 의학박사 학위 취득</span>
                                                            </li>
                                                            <li>
                                                                <span>1976</span>
                                                                <span>서울대학교 의과대학 의학과 졸업</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="font-h5">약력</div>
                                            <div class="list">
                                                <div class="row">
                                                    <div class="col">
                                                        <ul>
                                                            <li>
                                                                <span>1997 - 현재</span>
                                                                <span>㈜마크로젠 회장 & 창업자</span>
                                                            </li>
                                                            <li>
                                                                <span>2017 - 현재</span>
                                                                <span>분당서울대학교병원 석좌교수</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="inner">
                                        <div class="item">
                                            <div class="list">
                                                <div class="row">
                                                    <div class="col">
                                                        <ul>
                                                            <li>
                                                                <span>2017 - 현재</span>
                                                                <span>공우생명정보재단 이사장</span>
                                                            </li>
                                                            <li>
                                                                <span>2018 - 현재</span>
                                                                <span>마크로젠 의료재단 이사장</span>
                                                            </li>
                                                            <li>
                                                                <span>2012 - 현재</span>
                                                                <span>미국 PLOS One Journal Editor</span>
                                                            </li>
                                                            <li>
                                                                <span>2009 - 2020</span>
                                                                <span>한국바이오협회 회장</span>
                                                            </li>
                                                            <li>
                                                                <span>2005 - 현재</span>
                                                                <span>인천경제자유구역 바이오메디컬허브 자문위원장</span>
                                                            </li>
                                                            <li>
                                                                <span>2005 - 현재</span>
                                                                <span>미국생화학분자생물학회(ASBMB) 정회원</span>
                                                            </li>
                                                            <li>
                                                                <span>2004 - 현재</span>
                                                                <span>㈜마크로젠 이사회의장</span>
                                                            </li>
                                                            <li>
                                                                <span>2003 - 현재</span>
                                                                <span>한국과학기술한림원(KAST) 정회원</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="inner">
                                        <div class="item">
                                            <div class="list">
                                                <div class="row">
                                                    <div class="col">
                                                        <ul>
                                                            <li>
                                                                <span>1997 - 현재</span>
                                                                <span>EMM Journal Editor</span>
                                                            </li>
                                                            <li>
                                                                <span>1997 - 현재</span>
                                                                <span>국제분자생물네트워크(IMBN) 창립회원</span>
                                                            </li>
                                                            <li>
                                                                <span>1997 - 현재</span>
                                                                <span>미국 New York Academy of Science 정회원</span>
                                                            </li>
                                                            <li>
                                                                <span>1997 - 2017</span>
                                                                <span>서울대학교 의학연구원 유전체의학연구소(GMI) 소장</span>
                                                            </li>
                                                            <li>
                                                                <span>1983 - 2017</span>
                                                                <span>서울대학교 의과대학 교수</span>
                                                            </li>
                                                            <li>
                                                                <span>2009</span>
                                                                <span>(사)통합생화학분자생물학회(KSBMB) 회장</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="inner">
                                        <div class="item">
                                            <div class="list">
                                                <div class="row">
                                                    <div class="col">
                                                        <ul>
                                                            <li>
                                                                <span>2009</span>
                                                                <span>대한생화학분자생물학회 회장</span>
                                                            </li>
                                                            <li>
                                                                <span>2008</span>
                                                                <span>한국생화학분자생물학회 회장</span>
                                                            </li>
                                                            <li>
                                                                <span>2007 - 2009</span>
                                                                <span>한국바이오벤처협회 회장</span>
                                                            </li>
                                                            <li>
                                                                <span>2005</span>
                                                                <span>한국유전체학회(KOGO) 회장</span>
                                                            </li>
                                                            <li>
                                                                <span>2001 - 2002</span>
                                                                <span>보건복지부장관 자문관</span>
                                                            </li>
                                                            <li>
                                                                <span>2000 - 2004</span>
                                                                <span>㈜마크로젠 대표이사</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="pagination-wrap">
                                <ul class="navigation">
                                    <li class="page-item prev">
                                        <a class="page-link _slidePrev" href="#">
                                            <span class="sr-only">이전</span>
                                        </a>
                                    </li>
                                    <li class="page-item next">
                                        <a class="page-link _slideNext" href="#">
                                            <span class="sr-only">다음</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="swiper-pagination"></div>
                        </div>
                    </div>
                    <script>
                        var swiper = new Swiper("._slider", {
                            slidesPerView: "auto",
                            spaceBetween: 0,
                            centeredSlides: false,
                            watchActiveIndex: true,
                            slideToClickedSlide: true,
                            pagination: {
                                el: "._slider .swiper-pagination",
                                clickable : true,
                            },
                            navigation: {
                                nextEl: "._slider ._slideNext",
                                prevEl: "._slider ._slidePrev",
                            },
                        });
                    </script>
                    <!-- s  회장 경력-->
                </div>
                <div class="tab-pane fade" id="nav-2" role="tabpanel" aria-labelledby="nav-tab-2">
                    <!-- s  CEO -->
                    <div class="section-ceo">
                     <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                        	<div class="font-h6">대표이사</div>
                            <div class="font-h3">김창훈 </div>
                            <div class="info-wrap">
                                <div class="img">
                                    <img src="/publishing/mobile-ko/dist/img/macrogen/img-ceo-kch.png" alt="대표이사 김창훈">
                                </div>
                                <div class="info">
                                    <div class="item">
                                            <div class="font-h5">학력 및 약력</div>
                                            <div class="list">
                                                <div class="row">
                                                    <div class="col">
                                                        <ul>
                                                            <li>
                                                                <span>2022 - 현재</span>
                                                                <span>마크로젠 대표이사</span>
                                                            </li>
                                                            <li>
                                                                <span>2012 - 2021</span>
                                                                <span>마크로젠 바이오인포매틱스<br> 연구소 (부)소장 / CTO</span>
                                                            </li>
                                                             <li>
			                                                    <span>2009 - 2011</span>
			                                                    <span>분자설계연구소 책임연구원</span>
			                                                </li>
                                                            <li>
                                                                <span>2003 - 2009</span>
                                                                <span>미국립암연구소(NCI) 연구원</span>
                                                            </li>
                                                            <li>
                                                                <span>2001 - 2009</span>
                                                                <span>한국생명공학연구원 선임연구원</span>
                                                            </li>
                                                            <li>
                                                                <span>1998</span>
                                                                <span>한국과학기술원(KAIST)<br> 생물과학 박사</span>
                                                            </li>                                                         
			                                                <li>
			                                                    <span>1992</span>
			                                                    <span>한국과학기술원(KAIST)<br> 생물공학 석사</span>
			                                                </li>
			                                                <li>
			                                                    <span>1990</span>
			                                                    <span>경북대학교 유전공학 학사</span>
			                                                </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                    </div>                         
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- e  회장 -->

                    <!-- s  CEO 경력-->
                    <div class="section-ceo-career">
                        <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                            <div class="font-h3">
                                	인사말
                            </div>
                            <div class="info-wrap">
                  
                                <div class="info">
                                    <div class="item">
                                        <div class="font-h7">
                                            마크로젠은 '글로벌 유전체 분석
                                            전문 기업'이자 '대한민국을 대표하는
                                            생명공학 기업'입니다.
                                        </div>
                                        <div class="font-body">
                                            1997년 6월 5일 설립된 마크로젠은 급변하는 생명공학 시장에서 끊임없는 연구와 혁신 활동을 해왔으며, 현재 전 세계 153개국 1만 8천여 연구기관 고객을 보유한 '글로벌 No.1 정밀의학 선도기업'으로 성장했습니다. 우수한 인력과 오랜 서비스 수행 경험에서 우러난 탁월한 기술력을 갖추고 있으며, 세계 최고 수준의 유전체 분석 수행 인프라를 구축하여 글로벌 생명공학 토털 솔루션을 제공하고 있습니다.<br/>
                                            또한, 고품질의 서비스를 안정적으로 제공하기 위해 ISO9001 국제 품질경영시스템 인증을 보유하고 있으며, 다양한 유전체 분석 플랫폼 공급업체로부터 CSP(Certified Service Provider) 인증을 획득하였습니다.<br/>
                                            또한 업계 최초로 PIMS(Personal Information Management System, 개인정보보호 관리체계) 인증을 획득하는 등 정보보안 및 개인정보보호 강화를 위해 꾸준히 노력하고 있습니다. 뿐만 아니라 유전체 분석 기술 분야의 선도기업과 지속적인 기술협력을 통해 최신기술 보급에 최선을 다하고 있습니다.
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="font-h7">
                                            이제 마크로젠은 기술 중심 기업에서
                                            고객 중심 기업으로
                                            제2의 도약을 꿈꾸고 있습니다.
                                        </div>
                                        <div class="font-body">
                                            연구자 시장에서 인정받은 기술력과 위상을 토대로 부가가치가 높은 임상진단 및 개인 유전체 분석 분야 등 고객 밀착형 신사업을 집중적으로 육성하고자 합니다. 국제적 수준의 임상진단 실험실을 갖춘 정밀의학센터 네트워크를 구축하고, 암 진단을 포함한 최신 유전체 분석 기술 기반의 임상진단 서비스를 지속적으로 개발&#183;출시해 나가고 있습니다.<br/>
                                            또한, 국내뿐만 아니라 미국 소마젠, 유럽법인, 일본법인 등 해외 거점별 현지화 전략으로 DTC 유전자 검사와 마이크로바이옴 분석 서비스를 출시하고 글로벌 시장을 적극적으로 공략해 나가고 있습니다.<br/>
                                            앞으로도 마크로젠은 고객 감동을 실현하기 위해 끊임없는 연구개발과 고객 친화적 서비스 개선을 지속하는 것은 물론, 투명한 기업경영과 경영효율 극대화를 추진하면서 글로벌 생명공학 선도기업으로서 최선을 다할 것을 약속드립니다.<br/>
                                            감사합니다.
                                        </div>
                                    </div>
                                    <div class="sign">
                                        <span class="font-body-h">마크로젠 대표</span>
                                        <span class="font-h7">김창훈</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <script>
                        // var swiper = new Swiper("._slider2", {
                        //     slidesPerView: "auto",
                        //     spaceBetween: 0,
                        //     centeredSlides: false,
                        //     watchActiveIndex: true,
                        //     slideToClickedSlide: true,
                        //     pagination: {
                        //         el: "._slider2 .swiper-pagination",
                        //         clickable : true,
                        //     },
                        //     navigation: {
                        //         nextEl: "._slider2 ._slideNext",
                        //         prevEl: "._slider2 ._slidePrev",
                        //     },
                        // });
                    </script>
                    <!-- s  회장 경력-->
                </div>
                <div class="tab-pane fade" id="nav-3" role="tabpanel" aria-labelledby="nav-tab-3">
                    <!-- s  Leadership Team-->
                    <div class="section-leader">
                        <div class="title">
                            <span data-aos="fade-up" data-aos-duration="600">Leadership</span>
                            <span data-aos="fade-up" data-aos-duration="600" data-aos-delay="200">Team</span>
                        </div>
                    
                        <ul class="thumbnail _thumbnailGrid" data-aos="fade-up" data-aos-duration="600" data-aos-delay="500">                           
                            <!-- <li class="item">                                        
                                <span class="img">
                                    <img src="/publishing/mobile-ko/dist/img/macrogen/img-team_01.png" alt="">
                                    <p class="name">경영지원총괄본부<strong>유성현 본부장</strong></p>
                                </span>
                                <ul class="txt">
                                    <li>現) 마크로젠 최고재무책임자 CFO</li>
                                    <li>前) SK종합화학 CFO</li>
                                </ul>                                         
                            </li>      -->
                            <li class="item first">                                        
                                <span class="img">
                                    <img src="/publishing/mobile-ko/dist/img/macrogen/img-team_02.png" alt="">
                                    <p class="name">디지털혁신본부<strong>주창남 본부장</strong></p>
                                </span>
                                <ul class="txt">
                                    <li>現) 마크로젠 최고기술책임자(CTO)</li>
                                    <li>前) 아마존 코리아 AWS 기술전문가</li>
                                    <li>前) 삼성전자 무선사업부 전무</li>
                                </ul>                                         
                            </li>     
                            <li class="item">                                        
                                <span class="img">
                                    <img src="/publishing/mobile-ko/dist/img/macrogen/img-team_03.png" alt="">
                                    <p class="name">지놈사업본부<strong>이응룡 본부장</strong></p>
                                </span>
                                <ul class="txt">
                                    <li>現) 국가바이오빅데이터 시범사업 용역 총괄 책임</li>
                                    <li>現) 한국유전학회 산학협력위원장 SCI급 <br>연구논문 22편, 특허 11개</li>
                                </ul>                                         
                            </li>     
                            <li class="item">                                        
                                <span class="img">
                                    <img src="/publishing/mobile-ko/dist/img/macrogen/img-team_04.png" alt="">
                                    <p class="name">개인지놈사업본부<strong>황상준 본부장</strong></p>
                                </span>
                                <ul class="txt">
                                    <li>前) SK텔레콤 사업팀장 및 기업부설연구소장</li>
                                    <li>前) ISO/TC212 국제표준화위원회 기술전문가위원</li>
                                </ul>                                         
                            </li>
                            <li class="item">                                        
                                <span class="img">
                                    <img src="/publishing/mobile-ko/dist/img/macrogen/img-team_06.png" alt="">
                                    <p class="name">신성장혁신사업본부<strong>김종윤 본부장</strong></p>
                                </span>
                                <ul class="txt">                                            
                                    <li>前) 어큐진 대표이사</li>
                                    <li>前) 마크로젠 CES-Oligo사업 총괄</li>
                                    <li>前) 마크로젠 게놈응용사업 총괄</li>
                                </ul>                                         
                            </li>     
                            <li class="item">                                        
                                <span class="img">
                                    <img src="/publishing/mobile-ko/dist/img/macrogen/img-team_05.png" alt="">
                                    <p class="name">임상지놈사업본부<strong>권낙중 본부장</strong></p>
                                </span>
                                <ul class="txt">                                            
                                    <li>現) 정밀의학연구소 연구소장</li>
                                    <li>前) 배재대학교 화학과 박사</li>
                                </ul>                                         
                            </li>     
                        </ul>
                    </div>                    
                    <!-- e  Leadership Team-->
                </div>
            </div>
        </div>
    </div>

</body>
