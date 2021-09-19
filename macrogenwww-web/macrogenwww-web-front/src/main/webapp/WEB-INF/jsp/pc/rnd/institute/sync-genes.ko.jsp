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
        <li class="breadcrumb-item">싱크진연구소</li>
    </ol>
</nav>

            <div class="hero-title">싱크진연구소</div>
            <div class="slogan-sub">Syncgenes Institute</div>
        </div>
    </div>

    <div class="container container-fluid">
        <div class="section_syncgenes">
            <div class="info-box">
                <div class="title">데이터 통합 &#183; 분석을 통해<br>정밀의료를 완성합니다 </div>
                <div class="desc">유전체 정보를 이용한 무병장수의 꿈을 실현을 위한 연구를 수행합니다.  </div>
            </div>
            <div class="img img_analysis"><img src="/publishing/pc-ko/dist/img/RD/img-analysis.png" alt="정밀분석"></div>
            <div class="desc-box">
                <p class="sub-title">
                    마크로젠싱크진 연구소는
                </p>
                <p>
                    마크로젠 싱크진연구소는 데이터 통합(integration), 분석(analysis), 결과적용(synchronization) 을 위한 연구를 통해 누구나<br>
                    자신의 유전체 정보를 이용한 무병장수의 꿈이 실현되는 세상에 기여하기 위하여 설립되었습니다.<br>
                    이 같은 설립 목적을 달성하기 위해 다양한 연구를 수행하고 있습니다.<br>
                </p>
                <hr class="divider">
            </div>
        </div>

        <div class="section_info_list syncgenes-area">
            <div class="box clearfix">
                <div class="sub_title">연구<span>유전체(genetic) 데이터, 임상(clinical) 데이터,<br>건강관련 생활 (health-related lifestyle) 데이터의<br>통합(문제를 해결하기)을 위한 연구</span></div>
                <div class="sub_desc">
                    <img src="/publishing/pc-ko/dist/img/RD/img-syncgenes_research.png" alt="인간 게놈 염기서열">
                </div>
            </div>

            <div class="box clearfix">
                <div class="sub_title">분석<span>통합된 데이터를 이용한<br>다양한 예측 및 인공지능 분석 연구</span></div>
                <div class="sub_desc">
                    <img src="/publishing/pc-ko/dist/img/RD/img-syncgenes_analysis.png" alt="인간 게놈 염기서열">
                </div>
            </div>
            <div class="box clearfix">
                <div class="sub_title">정밀의료<span>분석 연구결과를 임상 및 건강관리와<br>정밀의료 신기술 개발에 적용하기 위한 연구</span></div>
                <div class="sub_desc">
                    <img src="/publishing/pc-ko/dist/img/RD/img-syncgenes_detailed.png" alt="인간 게놈 염기서열">
                </div>
            </div>

        </div>

    </div>
    <!--footer 수정사항 있을시 메인 footer 별도 확인-->

</body>