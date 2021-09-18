<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg macrogen" style="background-image: url(/publishing/pc-ko/dist/img/macrogen/bg-esg.png);">
        <!--
<header class="header" id="header">
    <div class="inner">
        <div class="section_gnb">
            <h1 class="logo"><a href="#">마크로젠 로고</a></h1>
            <nav>
                <ul id="gnb">
                    <li><a href="#" class="font-bold">macrogen</a></li> &lt;!&ndash; active 시, 활성화 &ndash;&gt;
                    <li><a href="#" class="font-bold">business</a></li>
                    <li><a href="#" class="font-bold">r&d</a></li>
                    <li><a href="#" class="font-bold">newsroom</a></li>
                    <li><a href="#" class="font-bold">ir</a></li>
                    <li><a href="#" class="font-bold">esg</a></li>
                </ul>
            </nav>
        </div>
        <div class="section_btn">
            <ul class="sns">
                <li><a href="#"><i class="icon icon-facebook-circle-white"></i></a></li>
                <li><a href="#"><i class="icon icon-youtube-circle-white"></i></a></li>
                <li><a href="#"><i class="icon icon-blog-circle-white"></i></a></li>
                <li><a href="#"><i class="icon icon-linkedin-circle-white"></i></a></li>
            </ul>
            <div class="btn_eng">
                <a href="#" class="btn btn-round"><i class="icon icon-earth-black"></i><span>ENG</span></a>
            </div>
        </div>
    </div>
    <div class="gnb-2depth" id="gnb2Depth">
        <div class="box">
            <div class="item">
                <div class="title"><a href="#">회사소개</a></div>
                <ul>
                    <li><a href="#">기업개요</a></li>
                    <li><a href="#">경영진</a></li>
                    <li><a href="#">연혁</a></li>
                    <li><a href="#">비전</a></li>
                    <li><a href="#">마크로젠 CI</a></li>
                    <li><a href="#">인증</a></li>
                </ul>
            </div>
            <div class="item">
                <div class="title"><a href="#">글로벌 네트워크</a></div>
            </div>
            <div class="item">
                <div class="title"><a href="#">지속가능경영</a></div>
                <ul>
                    <li><a href="#">ESG경영</a></li>
                    <li><a href="#">윤리경영</a></li>
                    <li><a href="#">사회공헌</a></li>
                </ul>
            </div>
            <div class="item">
                <div class="title"><a href="#">채용</a></div>
                <ul>
                    <li><a href="#">인재상</a></li>
                    <li><a href="#">직무소개</a></li>
                    <li><a href="#">채용안내</a></li>
                </ul>
            </div>
        </div>
    </div>
</header>
<script>
    $('#gnb2Depth').hide();
    $('#gnb li a').on({
        "mouseenter focusin" : function () {
            $('#header').addClass('active header-bg-white');
            $('#gnb2Depth').slideDown('500','linear');
            $('body, html').scroll(function(){
                $('#header').removeClass('active');
                $('#gnb2Depth').slideUp('500','linear');
            });
        },
    })
    $('#header').on({
        "mouseleave focusout" : function () {
            setTimeout(function() {
                $('#header').removeClass('active header-bg-white');
                }, 300);
            $('#gnb2Depth').slideUp('400','linear');
        }
    })
</script>
-->


		<header class="header">
			<c:import url="/inc/header-inner-gnb" />
		</header>

        <div class="frame">
            <div class="hero-title">ESG경영</div>
            <div class="slogan ko">더불어 사는 건강한<br/>세상을 만들어갑니다</div>
            <div class= "slogan-sub">보다 나은 세상을 만드는데 힘을 보태겠습니다.</div>
            <nav aria-label="breadcrumb">
			    <ol class="breadcrumb breadcrumb-white">
			        <li class="breadcrumb-item">Home</li>
			        <li class="breadcrumb-item">ESG</li>
			        <li class="breadcrumb-item">ESG경영</li>
			    </ol>
			</nav>

            <div class="scroll-wrap">
			    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
			</div>

        </div>
    </div>
    <div class="container container-fluid">
        <div class="macrogen macrogen-esg">
            <!-- s text -->
            <div class="section-phrase">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-h3">함께하는 미래,<br/>지속가능한 미래를 만들겠습니다</div>
                </div>
            </div>
            <!-- e text -->

            <!-- s bg banner -->
            <div class="section-banner">
                <div class="banner banner-1">
                    <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                        <div class="font-h6">MISSION</div>
                        <div class="font-h4">누구나 자신의<br/>
                            <span class="color-point-primary">유전체 정보</span>를 이용하여<br/>
                            <span class="color-point-primary">무병장수의 꿈</span>을<br/>
                            이룰 수 있도록 돕는다. </div>
                    </div>
                </div>
                <div class="banner banner-2">
                    <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                        <div class="font-h6">VISION</div>
                        <div class="font-h4">
                            유전체 정보, 의료 정보 및 생활 정보<br/>
                            <span class="color-point-primary">통합 빅데이터</span>를 구축하고<br/>
                            질병을 예측하여 미래의학을 혁신하는<br/>
                            <span class="color-point-primary">글로벌 정밀의학 선도기업</span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- e bg banner -->

            <!-- s ESG 경영목표 -->
            <div class="section-management-goals">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-h6">ESG경영목표</div>
                </div>
                <div class="list-goals">
                    <div class="goal" data-aos="fade-up" data-aos-duration="2000">
                        <div class="box">
                            <div class="item text">
                                <div class="font-h7">고객</div>
                                <div class="font-h3">고객이 만족하는<br/>마크로젠</div>
                                <div class="font-body-h">
                                    <ul>
                                        <li>글로벌 최고 수준의 기술력을 통한 유전체 분석 정보 제공</li>
                                        <li>고객의 권리 보호 및 개인정보 보호 최우선</li>
                                        <li>공급 및 협력업체와의 상생경영 및 지속 가능한 관계 구축</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item bg"><img src="/publishing/pc-ko/dist/img/macrogen/bg-esg-thumb-sm-1.png" alt="고객"></div>
                        </div>
                    </div>
                    <div class="goal" data-aos="fade-up" data-aos-duration="2000">
                        <div class="box">
                            <div class="item bg"><img src="/publishing/pc-ko/dist/img/macrogen/bg-esg-thumb-sm-2.png" alt="투자자"></div>
                            <div class="item text">
                                <div class="font-h7">투자자</div>
                                <div class="font-h3">투자자가 신뢰하는<br/>마크로젠</div>
                                <div class="font-body-h">
                                    <ul>
                                        <li>준법성·투명성·공정성을 준수하고 신뢰받는 정직한 기업문화 정착</li>
                                        <li>윤리경영의 효율적 실현을 통한 건실한 재무구조 지속 구현</li>
                                        <li>주주의 이익을 위한 최선의 노력과 의사소통</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="goal" data-aos="fade-up" data-aos-duration="2000">
                        <div class="box">
                            <div class="item text">
                                <div class="font-h7">임직원</div>
                                <div class="font-h3">글로벌 바이오·헬스<br/>케어 산업을 선도하는<br/>마크로젠</div>
                                <div class="font-body-h">
                                    <ul>
                                        <li>끊임없이 도전하고 성장하는 마크로젠人</li>
                                        <li>이해와 신뢰를 바탕으로 한 성숙한 윤리문화 정착</li>
                                        <li>임직원간 상호 존중 및 임직원과 회사의 지속적인 동반성장</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item bg"><img src="/publishing/pc-ko/dist/img/macrogen/bg-esg-thumb-sm-3.png" alt="임직원"></div>
                        </div>
                    </div>
                    <div class="goal" data-aos="fade-up" data-aos-duration="2000">
                        <div class="box">
                            <div class="item bg"><img src="/publishing/pc-ko/dist/img/macrogen/bg-esg-thumb-sm-4.png" alt="사회적 책임"></div>
                            <div class="item text">
                                <div class="font-h7">사회적 책임</div>
                                <div class="font-h3">인류의 건강<br/>증진을 위해 함께하는<br/>마크로젠</div>
                                <div class="font-body-h">
                                    <ul>
                                        <li>지속적인 기술 및 연구개발을 통한 인류의 건강한 삶에 기여</li>
                                        <li>과학자들의 연구 지원을 통한 바이오 산업의 기초연구 역량 확대 기여</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- e ESG 경영목표 -->
        </div>
    </div>

</body>
