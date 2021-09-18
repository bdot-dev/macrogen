<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg macrogen" style="background-image: url(/publishing/pc-ko/dist/img/macrogen/bg-macrogen-human-resource.png);">
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
            <div class="hero-title">인사제도</div>
            <div class="slogan ko">새로운 내일을<br/>함께 만들고 싶습니다</div>
            <div class= "slogan-sub">인류를 위한 마크로젠의 여정에 함께 하시겠습니까?</div>
            <nav aria-label="breadcrumb">
			    <ol class="breadcrumb breadcrumb-white">
			        <li class="breadcrumb-item">Home</li>
			        <li class="breadcrumb-item">MACROGEN</li>
			        <li class="breadcrumb-item">채용</li>
			        <li class="breadcrumb-item">인사제도</li>
			    </ol>
			</nav>

            <div class="scroll-wrap">
			    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
			</div>

        </div>
    </div>
    <div class="container container-fluid">
        <div class="macrogen macrogen-human-resource">
            <!-- s  인사관리 -->
            <div class="section-management">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-h7">인사관리</div>
                    <div class="font-h3">성과에 대한  체계적인 평가와<br/>교육을 실시합니다</div>
                    <div class="step">
                        <div class="row">
                            <div class="col">
                                <div class="item item-1">
                                    <div class="tit">모집/선발</div>
                                    <div class="desc">마크로젠의 인재상에 부합하는<br/>우수인력 모집 및 선발 프로세스</div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="item item-2">
                                    <div class="tit">인사평가/보상체계</div>
                                    <div class="desc">MBO 식 성과평가를 반영한<br/>승진 및 보상(호봉+연봉) 시스템</div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="item item-3">
                                    <div class="tit">교육훈련/경력개발</div>
                                    <div class="desc">직무 위주 교육훈련 실시 및 <br/>체계적인 경력개발 프로그램</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- e  인사관리 -->

            <!-- s  직급체계 -->
            <div class="section-rank-system">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-h7">직급체계</div>
                    <div class="font-h3">직원들의 잠재력을 끌어올려<br/>함께 성장해갑니다</div>
                    <div class="flow-bg"></div>
                </div>
            </div>
            <!-- e  직급체계 -->

            <!-- s  복리후생 -->
            <div class="section-welfare">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-h7">복리후생</div>
                    <div class="font-h3">마크로젠은 직원들의<br/>일도 생활도 소중히 여깁니다</div>
                    <div class="click-area">
                        <div class="font-body-h">모두가 일과 일상에서 안정과 성장을 누릴 수 있도록<br/>다양한 복지혜택을 제공합니다.</div>
                        <div class="btn-wrap"><a href="#" class="btn btn-text"><span>채용안내</span><i class="icon icon-arrow-right-long"></i></a></div>
                    </div>
                </div>
                <div class="item item-1">
                    <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                        <div class="font-h5">일과 삶의 즐거움</div>
                        <ul class="clearfix">
                            <li>정기<br/>건강검진</li>
                            <li>복지수당<br/>지급</li>
                            <li>사내동호회<br/>지원</li>
                            <li>부서회식비<br/>지원</li>
                            <li>사내휴게실<br/>운영</li>
                        </ul>
                    </div>
                </div>
                <div class="item item-2">
                    <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                        <div class="font-h5">일에 대한 보상</div>
                        <ul class="clearfix">
                            <li>인센티브제<br/>운영</li>
                            <li>우리사주조합<br/>운영</li>
                            <li>주식매수선택권<br/>부여</li>
                            <li>생활안정자금<br/>대출</li>
                            <li>장기근속/우수사원<br/>포상</li>
                        </ul>
                    </div>
                </div>
                <div class="item item-3">
                    <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                        <div class="font-h5">일과 삶의 조화</div>
                        <ul class="clearfix">
                            <li>주 5일<br/>근무제</li>
                            <li>선택적<br/>보상휴가제</li>
                            <li>탄력적<br/>근로시간제</li>
                            <li>경조휴가/경조금<br/>지급</li>
                            <li>Family-day제도<br/>운영</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- e  복리후생 -->
        </div>
    </div>
    <!--footer 수정사항 있을시 메인 footer 별도 확인-->

</body>
