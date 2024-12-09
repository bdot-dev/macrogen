<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg">
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
                //$('.header').show().css({'position': 'absolute','top':'0'}).addClass('header-white');
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
            <h2 class="font-h4">비전</h2>
            <div class="font-slogan">글로벌 정밀의학<br/>선도기업입니다</div>
            <!-- <div class="font-h7-r">질병을 예측하고 진단하며, 맞춤 치료의 방안을 제시합니다</div> -->
            <div class="scroll-wrap">
    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
</div>

        </div>
    </div>
    <div class="container">
        <div class="macrogen macrogen-vision">
            <!-- s vision -->
            <div class="section-vision">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="title">Vision</div>
                    <div class="diagram">
                        <div class="img img-ko">
                            <img src="/publishing/mobile-ko/dist/img/macrogen/img-vision-diagram.png" alt="Vision">
                        </div>
                        <div class="font-body-h">
                            마크로젠의 비전은 빅데이터 유전체 정보 기반의 연구개발 및 의료기관 협업을 통해 질병을 예측하고 진단하며, 맞춤 치료의 방안을 제시하는 정밀의학 분야의 글로벌 선도기업 입니다.<br/><br/>
                            30억 쌍에 달하는 인간 유전체의 염기서열을 읽기 위한 핵심기술과 생산시설, 우수인력을 보유하고 있으며, 국내뿐 아니라 해외 네트워크를 통해 매년 대량의 유전체 정보 및 의료정보를 통합한 빅데이터를 구축해나가고 있습니다.
                        </div>
                    </div>
                </div>
            </div>
            <!-- e vision -->

            <!-- s vision -->
            <div class="section-slogan">
             <div class="parallax-DNA DNA-1 _DNA1" data-rellax-speed="10"></div>
                <script>
                    var rellax1 = new Rellax('._DNA1');
                </script>
                <div class="bg">
                    <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                        <div class="font-h7">슬로건</div>
                        <div class="title">Humanizing<br/>Genomics</div>
                        <div class="font-body-h">인간의 유전체 정보 및 데이터 분석 기술을 통해 환자 개개인의 유전적 특성에 따른 맞춤 의학을 제시한다는 뜻을 담고 있습니다. 널리 인간 세계를 이롭게 한다는<br/>'홍익인간(弘益人間)'의 사상이 바탕 되었습니다.</div>
                        <div class="img-wrap">
                            <div class="img img-1" data-aos="fade-up" data-aos-duration="2000">
                                <img src="/publishing/mobile-ko/dist/img/macrogen/img-vision-parallax-1.png" alt="dna">
                            </div>
                            <div class="img img-2" data-aos="fade-up" data-aos-duration="2000">
                                <img src="/publishing/mobile-ko/dist/img/macrogen/img-vision-parallax-2.png" alt="dna">
                            </div>
                            <div class="img img-3" data-aos="fade-up" data-aos-duration="2000">
                                <img src="/publishing/mobile-ko/dist/img/macrogen/img-vision-parallax-3.png" alt="dna">
                            </div>
                        </div>
                    </div>
                </div>
                   <div class="parallax-DNA DNA-2 _DNA2" data-rellax-speed="10"></div>
              <script>
                  var rellax2 = new Rellax('._DNA2');
              </script>
            </div>
            <script>
                $(document).ready(function() {
                    $(window).on("load scroll", function() {
                        var parallaxElement = $(".img-wrap").find('.img'),
                            parallaxQuantity = parallaxElement.length;
                        window.requestAnimationFrame(function() {
                            for (var i = 0; i < parallaxQuantity; i++) {
                                var currentElement = parallaxElement.eq(i),
                                    windowTop = $(window).scrollTop(),
                                    elementTop = currentElement.offset().top,
                                    elementHeight = currentElement.height(),
                                    viewPortHeight = window.innerHeight * 0.5 - elementHeight * 0.5,
                                    scrolled = windowTop - elementTop + viewPortHeight;
                                currentElement.css({
                                    transform: "translate3d(0," + scrolled * -0.15 + "px, 0)"
                                });
                            }
                        });
                    });
                });
            </script>
            <!-- e vision -->

            <!-- s 경영이념 -->
            <div class="section-management-philosophy" data-aos="fade-up" data-aos-duration="2000">
                <div class="font-h7">경영이념</div>
                <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/img-management-philosophy.png" alt="경영이념"></div>
                <div class="info">
                    <div class="font-h4">
                        누구나 자신의 유전체 정보를 이용하여 무병장수의 꿈을 이룰 수 있도록 돕는다.
                    </div>
                    <div class="font-body">
                        마크로젠의 경영이념은 인류가 질병 및 고통에서 벗어나
                        행복하고 건강한 삶을 영위할 수 있도록 돕는 것입니다.
                        깊이 있는 지식을 탐구하고 관련된 기술을 개발함으로써
                        완벽하게 밝혀지지 않은 질병의 유전자 원인 규명을 목표로 합니다.
                    </div>
                    <hr class="divider" />
                </div>
            </div>
            <!-- e 경영이념 -->

            <!-- s 핵심가치 -->
            <div class="section-core-values">
              <div class="parallax-DNA DNA-3 _DNA3" data-rellax-speed="10"></div>
                <script>
                    var rellax6 = new Rellax('._DNA3');
                </script>
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-h7">핵심가치</div>
                    <div class="values">
                        <div class="item">
                            <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/img-vision-core-1.png" alt="탁월한 생각"></div>
                            <div class="font-h5">탁월한 <span class="color-point-primary">생각</span></div>
                            <div class="font-body">
                                탁월한 생각을 통해 세상을 변화시킬 수 있는
                                새로운 가치를 발견한다.
                            </div>
                        </div>
                        <div class="item">
                            <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/img-vision-core-2.png" alt="멈추지 않는 도전"></div>
                            <div class="font-h5">멈추지 않는 <span class="color-point-primary">도전</span></div>
                            <div class="font-body">
                                고객의 기대를 뛰어 넘는 가치와 서비스를 창출하기 위한 도전을 멈추지 않는다.
                            </div>
                        </div>
                        <div class="item">
                            <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/img-vision-core-3.png" alt="초일류 리더"></div>
                            <div class="font-h5">초일류 <span class="color-point-primary">리더</span></div>
                            <div class="font-body">
                                탁월한 생각, 멈추지 않는 도전으로
                                미래를 선도하는 초일류 리더로 성장한다.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- e 핵심가치 -->
        </div>
    </div>

</body>