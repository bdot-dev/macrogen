<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg macrogen" style="background-image: url(/publishing/pc-ko/dist/img/macrogen/bg-macrogen-talent.png);">
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
            <div class="hero-title">인재상</div>
            <div class="slogan ko">새로운 내일을<br/>함께 만들고 싶습니다</div>
            <div class= "slogan-sub">인류를 위한 마크로젠의 여정에 함께 하시겠습니까?</div>
            <nav aria-label="breadcrumb">
			    <ol class="breadcrumb breadcrumb-white">
			        <li class="breadcrumb-item">Home</li>
			        <li class="breadcrumb-item">MACROGEN</li>
			        <li class="breadcrumb-item">채용</li>
			        <li class="breadcrumb-item">인재상</li>
			    </ol>
			</nav>

            <div class="scroll-wrap">
			    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
			</div>

        </div>
    </div>
    <div class="container container-fluid">
        <div class="macrogen macrogen-talent">
            <!-- s  문구 -->
            <div class="section-description">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="text-lg">모두가 함께 행복한 세상<span class="underline"></span><br/>같은 꿈을 꾸는 마크로젠人을 찾습니다</div>
                    <div class="desc">더 나은 미래를 만들어가는 가능성에 더 높은 가치를 두고 도전하는 인재를 선발합니다.</div>
                </div>
            </div>
            <!-- e  문구 -->

            <!-- s  배너 -->
            <div class="section-bg">
                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/bg-talent-banner.png" alt="도전과 창의가 넘치는 인재"></div>
                <div class="inner">
                    <div class="txt-box" data-aos="fade-up" data-aos-duration="2000">
                        <ul>
                            <li>도전과 창의가 넘치는 인재</li>
                            <li>기술력과 사업감각을 겸비한 인재</li>
                            <li>끊임없이 배움을 추구하는 인재</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- e  배너 -->

            <!-- s  배너 -->
            <div class="section-core-talent">
                <div class="inner">
                    <div class="font-h6">핵심역량</div>
                    <div class="list" data-aos="fade-up" data-aos-duration="2000">
                        <div class="item">
                            <div class="desc-area">
                                <div class="font-h3">하나. 혁신인</div>
                                <div class="font-body-h">창의와 혁신</div>
                                <div class="font-h8">
                                    자신의 창의력과 잠재력을 최대한 발휘할 수 있도록 기회를 부여 받고,<br/>
                                    새로운 발상과 관점의 전환으로<br/>
                                    고객의 기대를 뛰어넘는 혁신적인 제품과 서비스를 제공합니다.
                                </div>
                            </div>
                            <div class="img">
                                <img src="/publishing/pc-ko/dist/img/macrogen/talent-thumb-1.png" alt="혁신인">
                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <img src="/publishing/pc-ko/dist/img/macrogen/talent-thumb-2.png" alt="전문인">
                            </div>
                            <div class="desc-area">
                                <div class="font-h3">둘. 전문인</div>
                                <div class="font-body-h">책임과 성과</div>
                                <div class="font-h8">
                                    맡은 바 역할과 업무에 책임을 다하여 성실히 완수하고<br/>
                                    도전적인 목표를 통해<br/>
                                    지속적으로 성과를 창출하며 전문성을 강화합니다.
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="desc-area">
                                <div class="font-h3">셋. 학습인</div>
                                <div class="font-body-h">열정과 도전</div>
                                <div class="font-h8">
                                    스스로 최고가 되겠다는 열정과 신념으로<br/>
                                    현실에 안주하지 않고<br/>
                                    새로운 가능성에 대해 끊임없이 도전하고 학습하여 목표를 달성한다.
                                </div>
                            </div>
                            <div class="img">
                                <img src="/publishing/pc-ko/dist/img/macrogen/talent-thumb-3.png" alt="학습인">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- e  배너 -->

            <div class="DNA DNA-1 _DNA1" data-rellax-speed="10"></div>
            <div class="DNA DNA-2 _DNA2" data-rellax-speed="10"></div>
            <script>
                var rellax1 = new Rellax('._DNA1');
                var rellax2 = new Rellax('._DNA2');
            </script>
        </div>
    </div>
    <!--footer 수정사항 있을시 메인 footer 별도 확인-->


</body>
