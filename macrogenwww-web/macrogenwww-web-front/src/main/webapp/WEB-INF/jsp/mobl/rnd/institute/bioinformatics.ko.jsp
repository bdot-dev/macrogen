<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="research-wrap">

    <div class="top-bg">
        <header class="header">
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
                // $('.header').show().css({'position': 'absolute','top':'0'}).addClass('header-white');
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
            <h2 class="font-h3">생명정보학연구소</h2>
            <!-- <div class="font-body-h">Bioinformatics Institute</div> -->
        </div>
    </div>
    <div class="container">
        <div class="section_intro">
            <div class="info-box">
                <div class="font-h3">유전체 정보를 기반으로 생명의 비밀을 밝혀냅니다 </div>
                <div class="desc">유전체 분석 분야에서 다양한 연구를 진행해 나갑니다</div>
            </div>
            <div class="img img-microscope"></div>
        </div>
        <div class="section_info_list">
            <div class="box">
                <div class="font-h7">유전체 정보 해석의 핵심 기술 보유</div>
                <div class="font-body">
                    <p>마크로젠 생명정보학연구소는 다양한 생물 종의 유전체 관련 정보를 가공하고 해석하는 핵심 기술을 보유하고 있습니다&#46;<br>
                        해당 기술을 기반으로 국내외 주요 리서치 기관 연구진과 공동 연구를 진행 중입니다&#46;<br><br>
                        유전 정보의 보존 및 발현은 생명 현상의 근본을 이루는 중요한 과정입니다&#46;<br>
                        생명 현상을 이론적으로 해석하고자 하는 시도는 오랜 역사로 이어져 왔으며 이를 통해 다양한 유전정보가 축적됨에 따라 생명정보학이라는 하나의 분야가
                        형성되었습니다&#46;<br><br>
                        생명정보학은 생물학적 데이터를 해석하는 여러 분야에서 활용되며 유전체 정보 분석을 중심으로 발전해 나가고 있습니다&#46; 특히 차세대 염기서열분석기술&#40;Next Generation
                        Sequencing technologies&#41;의 등장과 함께 대량의 데이터를 효율적으로 분석하기 위한 다양한 정보기술&#40;Information Technology&#41;의 활용이 필수
                        불가결한 요소가 되었습니다&#46;<br>
                        차세대 염기서열분석기술과 생명정보학의 발전은 환자 개인별 유전적 배경 및 라이프스타일에 따른 차이점을 기반으로 질병의 예방&#44; 진단&#44; 치료를 진행하는 맞춤
                        의학&#40;personalized medicine&#41;의 가능성을 열었습니다&#46;</p>
                </div>
            </div>

            <hr class="M-divider"/>

            <div class="box mb-0">
                <div class="font-h7">한국인 게놈 염기서열&#40;AK1&#41; 발표</div>
                <div class="font-body">
                    <div class="img img-AK1"></div>
                    <p>2016년에는 게놈연구소 및 서울대유전체의학연구소와 함께 서양인 중심의 인간 표준 게놈을 제외하고 현재까지 가장 완벽한 인간 게놈 염기서열로 평가받는 한국인 게놈
                        염기서열&#40;AK1&#41;을 Nature에 발표함으로써 마크로젠 연구소의 선도적인 역량을 확인했습니다&#46;<br><br>
                        마크로젠의 첨단 유전체 분석 기술과 고급 생명정보학기술&#44; 대량의 서버 수용력 등을 기반으로 신생조합&#40;de novo assembly&#41;이 이루어졌으며 인간 표준 게놈 서열에
                        존재하는 다수의 Gap을 성공적으로 메웠습니다&#46; 수천 개의 아시아인 특이적 유전적 구조 변이를 발굴하고 phased genome을 구성함으로써 human diploid
                        genome에 대한 이해를 증진한 것으로 평가받고 있습니다&#46;<br>
                        생명정보학 연구소는 그간 축적된 연구개발 경험을 바탕으로 알고리즘 개발을 포함한 유전체 분석 분야에서 다양한 연구를 진행해 나갈 것입니다&#46;</p>
                </div>
            </div>
        </div>
    </div>

</body>
