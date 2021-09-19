<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg business_bg">
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
        <li class="breadcrumb-item">Business</li>
        <li class="breadcrumb-item">임상진단서비스</li>
        <li class="breadcrumb-item">MICROARRAY</li>
    </ol>
</nav>

            <div class="hero-title">COVID-19</div>
            <div class="slogan-sub">감염성 질환 전달을 위한 검사</div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <div class="info-box-wrap">
                <!--Axen™ COVID-19 RT 진단키트-->
                <div class="info-box">
                    <p class="font-h4 main-title">산전 염색체 이수성 검사(NIPS: Non-Invasive Prenatal Screening)</p>
                    <p class="subject border-gray_bottom"> NIPS는 임신 초기 산모의 혈액에 존재하는 태아의 DNA(cffDNA, cell-free fetal DNA)를 이용해 염색체 수 이상 여부를 스크리닝<br>
                        하는 검사입니다. 대표적 관련 염색체 질환으로는 다운증후군, 에드워드증후군, 파타우증후군 등이 있습니다</p>
                    <div class="border-gray-box">
                        <div class="img">
                            <img src="/publishing/pc-ko/dist/img/@temp/business/img-npis.png" alt="NIPS">
                        </div>
                    </div>
                    <div class="caption">※ 본 검사는 검사 결과가 갖는 임상적 의미가 확립되지 않았으며,  이에 따르는 건강에 관련한 행위가 유용하다는 객관적 타당성이 아직 부족합니다.</div>

                    <div class="btn-area">
                        <a href="#" class="btn btn-white"><span>서비스문의</span></a>
                    </div>
                </div>
            </div>

        </div>
    </div>

</body>
