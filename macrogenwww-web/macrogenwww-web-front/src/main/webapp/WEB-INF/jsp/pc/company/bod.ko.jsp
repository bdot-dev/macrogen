<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg macrogen" style="background-image: url(/publishing/pc-ko/dist/img/macrogen/bg-management.png);">
        <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

        <div class="frame">
            <div class="hero-title">경영진</div>
            <div class="slogan ko">널리 인간을<br/>이롭게 하다</div>
            <div class= "slogan-sub">‘홍익인간’의 가치를 실현하기 위해 오늘도 밤을 밝힙니다</div>
            <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">MACROGEN</li>
        <li class="breadcrumb-item">회사소개</li>
        <li class="breadcrumb-item">경영진</li>
    </ol>
</nav>

            <div class="scroll-wrap">
    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
</div>

        </div>
    </div>
    <div class="container container-fluid">
        <div class="macrogen macrogen-management">
            <nav class="tab-wrap">
                <div class="nav nav-tabs" id="tab" role="tablist">
                    <a class="nav-link active" id="nav-tab-1" data-toggle="tab" href="#nav-1" role="tab" aria-controls="nav-1" aria-selected="true">
                        <span>회장</span>
                    </a>
                    <a class="nav-link" id="nav-tab-2" data-toggle="tab" href="#nav-2" role="tab" aria-controls="nav-2" aria-selected="false">
                        <span>대표이사</span>
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
                    <!-- s  회장 -->
                    <div class="section-chairman">
                        <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                            <div class="font-h3">
                                마크로젠의 목표는 전세계 모두에게<br/>
                                DNA 설계도를 드리는 것입니다.
                            </div>
                            <div class="chairman-info">
                                <div class="info">
                                    <div class="font-h7">
                                        21세기 인류가 게놈 프로젝트를 통해 이룩한<br/>
                                        ‘인간 게놈지도의 완성’이라는 성과 이후,<br/>
                                        의료 패러다임은 치료 중심에서<br/>
                                        질병 예방과 건강 관리로 급변해왔습니다.
                                    </div>
                                    <div class="font-body">
                                        또한, 1,000달러 게놈이 실현됨에 따라 인류 사회는 의료 정보와 인간 유전체 정보가 통합된 빅데이터를 기반으로 질병을 예측, 진단, 치료하는 정밀의학(Precision Medicine)의 시대로 빠르게 나아가고 있습니다. 마크로젠은 이러한 의료 패러다임의 변화와 정밀의학 실현의 핵심인 유전체 의학, 즉 Genomics Medicine의 중요성을 일찍부터 인식하고 인간 유전체 분석 분야에서 탁월한 연구 성과들을 달성해 왔습니다. 특히 마크로젠은 2009년 세계 4번째 개인 유전체 분석 결과이자 세계 최초의 북방계 아시아인 유전체 분석 결과로서 한국인의 전장 유전체를 분석하였으며 2016년에는 기존 국제 표준 유전체의 한계를 극복하고 미래 정밀의학에 적용 가능한 세계 최고 완성도의 아시아인 표준 유전체를 구축하는 연구 성과를 달성했습니다.
                                    </div>
                                    <div class="sign">
                                        <span class="font-body-h">마크로젠 회장</span>
                                        <span class="font-h6">서정선</span>
                                    </div>
                                </div>
                                <div class="img">
                                    <img src="/publishing/pc-ko/dist/img/macrogen/img-chairman.png" alt="마크로젠 회장 서정선">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- e  회장 -->

                    <!-- s  회장 경력-->
                    <div class="section-chairman-career">
                        <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                            <div class="item">
                                <div class="title"><span>학력</span></div>
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
                                <div class="title"><span>약력</span></div>
                                <div class="list">
                                    <div class="row">
                                        <div class="col">
                                            <ul>
                                                <li>
                                                    <span>1997 <em class="ko">- 현재</em></span>
                                                    <span>㈜마크로젠 회장 & 창업자</span>
                                                </li>
                                                <li>
                                                    <span>2017 <em class="ko">- 현재</em></span>
                                                    <span>분당서울대학교병원 석좌교수</span>
                                                </li>
                                                <li>
                                                    <span>2017 <em class="ko">- 현재</em></span>
                                                    <span>공우생명정보재단 이사장</span>
                                                </li>
                                                <li>
                                                    <span>2018 <em class="ko">- 현재</em></span>
                                                    <span>마크로젠 의료재단 이사장</span>
                                                </li>
                                                <li>
                                                    <span>2012 <em class="ko">- 현재</em></span>
                                                    <span>미국 PLOS One Journal Editor</span>
                                                </li>
                                                <li>
                                                    <span>2009 - 2020</span>
                                                    <span>한국바이오협회 회장</span>
                                                </li>
                                                <li>
                                                    <span>2005 <em class="ko">- 현재</em></span>
                                                    <span>인천경제자유구역 바이오메디컬허브 자문위원장</span>
                                                </li>
                                                <li>
                                                    <span>2005 <em class="ko">- 현재</em></span>
                                                    <span>미국생화학분자생물학회(ASBMB) 정회원</span>
                                                </li>
                                                <li>
                                                    <span>2004 <em class="ko">- 현재</em></span>
                                                    <span>(주)마크로젠 이사회의장</span>
                                                </li>
                                                <li>
                                                    <span>2003 <em class="ko">- 현재</em></span>
                                                    <span>한국과학기술한림원(KAST) 정회원</span>
                                                </li>
                                                <li>
                                                    <span>1997 <em class="ko">- 현재</em></span>
                                                    <span>EMM Journal Editor</span>
                                                </li>
                                                <li>
                                                    <span>1997 <em class="ko">- 현재</em></span>
                                                    <span>국제분자생물네트워크(IMBN) 창립회원</span>
                                                </li>
                                             </ul>
                                        </div>
                                        <div class="col">
                                            <ul>
                                                <li>
                                                    <span>1997 <em class="ko">- 현재</em></span>
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
                                                    <span>(주)마크로젠 대표이사</span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- s  회장 경력-->
                </div>
                <div class="tab-pane fade" id="nav-2" role="tabpanel" aria-labelledby="nav-tab-2">
                    <!-- s  CEO -->
                    <div class="section-ceo">
                        <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                            <div class="font-h3">
                                대한민국 대표 생명공학 기업 마크로젠<br/>
                                대표이사 이수강입니다.
                            </div>
                        </div>
                        <div class="img" data-aos="fade-up" data-aos-duration="2000">
                            <img src="/publishing/pc-ko/dist/img/macrogen/img-ceo.png" alt="대표이사 이수강">
                        </div>
                        <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                            <div class="info">
                                <div class="item">
                                    <div class="font-h7">
                                        마크로젠은 ‘글로벌 유전체 분석<br/>
                                        전문 기업’이자 ‘대한민국을 대표하는<br/>
                                        생명공학 기업’입니다.
                                    </div>
                                    <div class="font-body">
                                        1997년 6월 5일 설립된 마크로젠은 급변하는 생명공학 시장에서 끊임없는 연구와 혁신 활동을 해왔으며, 현재 전 세계 153개국 1만 8천여 연구기관 고객을 보유한 ‘글로벌 No.1 정밀의학 선도기업’으로 성장했습니다. 우수한 인력과 오랜 서비스 수행 경험에서 우러난 탁월한 기술력을 갖추고 있으며, 세계 최고 수준의 유전체 분석 수행 인프라를 구축하여 글로벌 생명공학 토털 솔루션을 제공하고 있습니다.<br/>
                                        또한, 고품질의 서비스를 안정적으로 제공하기 위해 ISO9001 국제 품질경영시스템 인증을 보유하고 있으며, 다양한 유전체 분석 플랫폼 공급업체로부터 CSP(Certified Service Provider) 인증을 획득하였습니다.<br/>
                                        또한 업계 최초로 PIMS(Personal Information Management System, 개인정보보호 관리체계) 인증을 획득하는 등 정보보안 및 개인정보보호 강화를 위해 꾸준히 노력하고 있습니다. 뿐만 아니라 유전체 분석 기술 분야의 선도기업과 지속적인 기술협력을 통해 최신기술 보급에 최선을 다하고 있습니다.
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="font-h7">
                                        이제 마크로젠은 기술 중심 기업에서<br/>
                                        고객 중심 기업으로<br/>
                                        제2의 도약을 꿈꾸고 있습니다.
                                    </div>
                                    <div class="font-body">
                                        연구자 시장에서 인정받은 기술력과 위상을 토대로 부가가치가 높은 임상진단 및 개인 유전체 분석 분야 등 고객 밀착형 신사업을 집중적으로 육성하고자 합니다. 국제적 수준의 임상진단 실험실을 갖춘 정밀의학센터 네트워크를 구축하고, 암 진단을 포함한 최신 유전체 분석 기술 기반의 임상진단 서비스를 지속적으로 개발·출시해 나가고 있습니다.<br/>
                                        또한, 국내뿐만 아니라 미국 소마젠, 유럽법인, 일본법인 등 해외 거점별 현지화 전략으로 DTC 유전자 검사와 마이크로바이옴 분석 서비스를 출시하고 글로벌 시장을 적극적으로 공략해 나가고 있습니다.<br/>
                                        앞으로도 마크로젠은 고객 감동을 실현하기 위해 끊임없는 연구개발과 고객 친화적 서비스 개선을 지속하는 것은 물론, 투명한 기업경영과 경영효율 극대화를 추진하면서 글로벌 생명공학 선도기업으로서 최선을 다할 것을 약속드립니다.<br/>
                                        감사합니다.
                                    </div>
                                </div>
                            </div>
                            <div class="sign">
                                <span class="font-body-h">마크로젠 대표</span>
                                <span class="font-h6">이수강</span>
                            </div>
                        </div>
                    </div>
                    <!-- e  회장 -->

                    <!-- s  CEO 경력-->
                    <div class="section-ceo-career">
                        <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                            <div class="item">
                                <div class="title"><span>학력 및 약력</span></div>
                                <div class="list">
                                    <div class="row">
                                        <div class="col">
                                            <ul>
                                                <li>
                                                    <span>2020 - 현재</span>
                                                    <span>마크로젠 대표이사</span>
                                                </li>
                                                <li>
                                                    <span>2016 - 2020</span>
                                                    <span>마크로젠 최고운영책임자</span>
                                                </li>
                                                <li>
                                                    <span>2015 - 2016</span>
                                                    <span>LG CNS 자문</span>
                                                </li>
                                                <li>
                                                    <span>2003 - 2016</span>
                                                    <span>LG CNS 상무</span>
                                                </li>
                                                <%--
                                                <li>
                                                    <span>2002 - 2003</span>
                                                    <span>Descartes Systems Group 이사</span>
                                                </li>
                                                <li>
                                                    <span>2000 - 2002</span>
                                                    <span>Ariba 수석컨설턴트</span>
                                                </li>
                                                <li>
                                                    <span>2000 - 2000</span>
                                                    <span>i2 Technologies 컨설턴트</span>
                                                </li>
                                                <li>
                                                    <span>1992 - 1999</span>
                                                    <span>대우자동차 과장</span>
                                                </li>
                                                 --%>
                                                <li>
                                                    <span>1992</span>
                                                    <span>서울대학교 산업공학 석사</span>
                                                </li>
                                                <li>
                                                    <span>1990</span>
                                                    <span>서울대학교 산업공학 학사</span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- s  회장 경력-->
                </div>
            </div>
        </div>
    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->

</body>
