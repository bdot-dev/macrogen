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
        <li class="breadcrumb-item">더바이옴연구소</li>
    </ol>
</nav>

            <div class="hero-title">더바이옴연구소</div>
            <div class="slogan-sub">The Biome Institute</div>
        </div>
    </div>

    <div class="container container-fluid">
        <div class="section_theBiome">
            <div class="info-box">
                <div class="title">마이크로바이옴 연구를 통해<br>인류의 건강과 삶의 질을 개선합니다</div>
                <div class="desc">마이크로바이옴의 원리를 이해하고 궁극적으로 인간의 건강을 개선합니다.</div>
            </div>
            <div class="img"><img src="/publishing/pc-ko/dist/img/RD/img-pincette.png" alt="핀셋으로 집는 사진"></div>
        </div>
        <div class="section_info_list">
            <div class="box clearfix">
                <div class="sub_title">마이크로바이옴 연구의<br>선도적인 역할을<br>수행할 것 입니다.</div>
                <div class="sub_desc">
                    <p>인체 마이크로바이옴 (Human microbiome)은 인체에 서식하는 박테리아, 곰팡이, 바이러스 등 모든 미생물의 유전체를 통칭합니다.<br>
                        인체 마이크로바이옴은 음식, 나이, 유전적 요소, 복용하는 약, 그 외 다양한 환경적인 요소에 의해 영향을 받고, 건강을 유지하는데 중요한 역할을 합니다. 마이크로바이옴의 균형이 깨지면, 비만, 당뇨, 천식, 아토피, 심장병, 고혈압, 자폐, 암 발생에 영향을 미칩니다. 따라서 마이크로바이옴의 구성을 조정하는 것은 질병의 발생을 억제 할 수 있는 잠재적인 전략이라고 할 수 있습니다.<br><br>
                        더바이옴연구소는 마이크로바이옴의 원리를 이해하고 궁극적으로 인간의 건강을 개선하기 위하여 설립되었습니다.<br>
                        마크로젠에서  마이크로바이옴 연구의 핵심적인 역할을 수행하면서 마이크로바이옴을 타켓으로 하는 치료제 개발의 세계적인 리더가 될 것입니다.</p>
                </div>
            </div>
            <hr class="divider">
            <div class="biome_area">
                <div class="sub_title">연구영역</div>
                <img src="/publishing/pc-ko/dist/img/RD/img-biome-area.png" alt="연구 영역">
            </div>
        </div>

    </div>

</body>