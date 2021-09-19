<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="research-wrap">

    <div class="full-bg research_bg">
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

        <div class="frame frameB">
            <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">R&D</li>
        <li class="breadcrumb-item">생명정보학연구소</li>
    </ol>
</nav>

            <div class="hero-title">생명정보학연구소</div>
            <div class="slogan-sub">Bioinformatics Institute</div>
        </div>
    </div>

    <div class="container container-fluid">
        <div class="section_lifeInformation">
            <div class="info-box">
                <div class="title">유전체 정보를 기반으로<br>생명의 비밀을 밝혀냅니다 </div>
                <div class="desc">유전체 분석 분야에서 다양한 연구를 진행해 나갑니다</div>
            </div>
            <div class="img"><img src="/publishing/pc-ko/dist/img/RD/img-microscope.png" alt="현미경사진"></div>
        </div>
        <div class="section_info_list">
            <div class="box clearfix">
                <div class="sub_title">유전체 정보 해석의<br>핵심 기술 보유</div>
                <div class="sub_desc">
                    <p>마크로젠 생명정보학연구소는 다양한 생물 종의 유전체 관련 정보를 가공하고 해석하는 핵심 기술을 보유하고 있습니다.<br>
                        해당 기술을 기반으로 국내외 주요 리서치 기관 연구진과 공동 연구를 진행 중입니다.<br><br>
                        유전 정보의 보존 및 발현은 생명 현상의 근본을 이루는 중요한 과정입니다.<br>
                        생명 현상을 이론적으로 해석하고자 하는 시도는 오랜 역사로 이어져 왔으며 이를 통해 다양한 유전정보가 축적됨에 따라 생명정보학이라는 하나의 분야가
                        형성되었습니다.<br><br>
                        생명정보학은 생물학적 데이터를 해석하는 여러 분야에서 활용되며 유전체 정보 분석을 중심으로 발전해 나가고 있습니다. 특히 차세대 염기서열분석기술(Next Generation
                        Sequencing technologies)의 등장과 함께 대량의 데이터를 효율적으로 분석하기 위한 다양한 정보기술(Information Technology)의 활용이 필수
                        불가결한 요소가 되었습니다.<br>
                        차세대 염기서열분석기술과 생명정보학의 발전은 환자 개인별 유전적 배경 및 라이프스타일에 따른 차이점을 기반으로 질병의 예방, 진단, 치료를 진행하는 맞춤
                        의학(personalized medicine)의 가능성을 열었습니다.</p>
                </div>
            </div>

            <div class="box clearfix">
                <div class="sub_title">한국인 게놈<br>염기서열(AK1) 발표</div>
                <div class="sub_desc">
                    <img src="/publishing/pc-ko/dist/img/RD/img-AK1.png" alt="인간 게놈 염기서열">
                    <p>2016년에는 게놈연구소 및 서울대유전체의학연구소와 함께 서양인 중심의 인간 표준 게놈을 제외하고 현재까지 가장 완벽한 인간 게놈 염기서열로 평가받는 한국인 게놈
                        염기서열(AK1)을 Nature에 발표함으로써 마크로젠 연구소의 선도적인 역량을 확인했습니다.<br><br>
                        마크로젠의 첨단 유전체 분석 기술과 고급 생명정보학기술, 대량의 서버 수용력 등을 기반으로 신생조합(de novo assembly)이 이루어졌으며 인간 표준 게놈 서열에
                        존재하는 다수의 Gap을 성공적으로 메웠습니다. 수천 개의 아시아인 특이적 유전적 구조 변이를 발굴하고 phased genome을 구성함으로써 human diploid
                        genome에 대한 이해를 증진한 것으로 평가받고 있습니다.<br>
                        생명정보학 연구소는 그간 축적된 연구개발 경험을 바탕으로 알고리즘 개발을 포함한 유전체 분석 분야에서 다양한 연구를 진행해 나갈 것입니다.</p>
                </div>
            </div>

        </div>

    </div>

</body>