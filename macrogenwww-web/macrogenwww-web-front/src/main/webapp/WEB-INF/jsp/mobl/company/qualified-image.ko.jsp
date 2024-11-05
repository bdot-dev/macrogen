<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg" style="background-image: url(/publishing/mobile-ko/dist/img/macrogen/bg-macrogen-talent.png);">
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
            <h2 class="font-h4">인재상</h2>
            <div class="font-slogan">새로운 내일을<br/>당신과 함께 꿈꿉니다</div>
            <div class="font-h7-r">건강한 미래를 만들어 갈<br/> 마크로젠 구성원을 찾습니다</div>
            <div class="scroll-wrap">
    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
</div>

        </div>
    </div>
    <div class="container">
        <div class="macrogen macrogen-talent">
            <!-- s  문구 -->
            <div class="section-description">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-h3">모두가 함께 행복한 세상<span class="underline"></span><br/>같은 꿈을 꾸는 마크로젠人을 찾습니다</div>
                    <div class="font-body-h">더 나은 미래를 만들어가는 가능성에 더 높은 가치를 두고 도전하는 인재를 선발합니다.</div>
                </div>
            </div>
            <!-- e  문구 -->

            <!-- s  배너 -->
            <div class="section-bg" data-aos="fade-up" data-aos-duration="2000">
                <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/bg-talent-banner.png" alt="도전과 창의가 넘치는 인재"></div>
                <div class="inner">
                    <div class="txt-box">
                        <ul>
                            <li>도전과 창의가 넘치는 인재</li>
                            <li>기술력과 사업감각을 겸비한 인재</li>
                            <li>끊임없이 배움을 추구하는 인재</li>
                        </ul>
                    </div>
                    <hr class="divider"/>
                </div>
            </div>
            <!-- e  배너 -->

            <!-- s  배너 -->
            <div class="section-core-talent" data-aos="fade-up" data-aos-duration="2000">
                <div class="inner">
                    <div class="font-h7">핵심역량</div>
                    <div class="list">
                        <div class="item">
                            <div class="img">
                                <img src="/publishing/mobile-ko/dist/img/macrogen/talent-thumb-1.png" alt="혁신인">
                            </div>
                            <div class="desc-area">
                                <div class="font-h3">하나. 혁신인</div>
                                <div class="font-body-h">창의와 혁신</div>
                                <div class="font-body">
                                    자신의 창의력과 잠재력을 최대한 발휘할 수 있도록 기회를 부여 받고,
                                    새로운 발상과 관점의 전환으로
                                    고객의 기대를 뛰어넘는 혁신적인 제품과 서비스를 제공합니다.
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <img src="/publishing/mobile-ko/dist/img/macrogen/talent-thumb-2.png" alt="전문인">
                            </div>
                            <div class="desc-area">
                                <div class="font-h3">둘. 전문인</div>
                                <div class="font-body-h">책임과 성과</div>
                                <div class="font-body">
                                    맡은 바 역할과 업무에 책임을 다하여 성실히 완수하고
                                    도전적인 목표를 통해
                                    지속적으로 성과를 창출하며 전문성을 강화합니다.
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <img src="/publishing/mobile-ko/dist/img/macrogen/talent-thumb-3.png" alt="학습인">
                            </div>
                            <div class="desc-area">
                                <div class="font-h3">셋. 학습인</div>
                                <div class="font-body-h">열정과 도전</div>
                                <div class="font-body">
                                    스스로 최고가 되겠다는 열정과 신념으로
                                    현실에 안주하지 않고
                                    새로운 가능성에 대해 끊임없이 도전하고 학습하여 목표를 달성한다.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- e  배너 -->

        </div>
    </div>

</body>
