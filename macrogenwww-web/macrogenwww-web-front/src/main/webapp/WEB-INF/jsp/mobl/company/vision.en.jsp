<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="">

    <div class="full-bg" style="background-image: url(/publishing/mobile-en/dist/img/macrogen/bg-vision.png);">
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
            <h2 class="font-h4">VISION</h2>
            <div class="font-slogan en ft39">The global leader 
										in precision
										medicine</div> <!-- 번역 변경 -- 2022.05.26 -->
            <div class="font-h7-r">We predict and diagnose diseases and provides personalized solutions</div>
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
                    <div class="title">VISION</div>
                    <div class="diagram">
                        <div class="img img-ko">
                            <img src="/publishing/mobile-en/dist/img/macrogen/img-vision-diagram.png" alt="Vision">
                        </div>
                        <div class="font-body-h">Macrogen is a global leader in precision medicine with a mission to predict and diagnose diseases, and present personalized treatment through R&D based on genome big data and collaboration with medical institutes.
<br/><br/>
                            Based on advanced core technology, production facilities and talents for reading the base sequence of 3 billion pairs of human genomes, we are committed to building big data that integrates a large amount of genomic and medical information every year through global networks.</div>
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
                        <div class="font-h7">Slogan</div>
                        <div class="title">HUMANIZING<br/>GENOMICS</div>
                        <div class="font-body-h">Our goal is to present personalized medical solutions according
                            to the genetic characteristics of each patient based on human
                            genomic information and data analysis technology.
                            We live up to the value of "Hongik Ingan," which means
                            “for the benefit of all mankind.”
                        </div>
                        <div class="img-wrap">
                            <div class="img img-1" data-aos="fade-up" data-aos-duration="2000"> <!-- rellax 속성 제거 -- 2021.11.25 -->
                                <img src="/publishing/mobile-en/dist/img/macrogen/img-vision-parallax-1.png" alt="dna">
                            </div>
                            <div class="img img-2" data-aos="fade-down" data-aos-duration="2000"> <!-- rellax 속성 제거 -- 2021.11.25 -->
                                <img src="/publishing/mobile-en/dist/img/macrogen/img-vision-parallax-2.png" alt="dna">
                            </div>
                            <div class="img img-3" data-aos="fade-up" data-aos-duration="2000"> <!-- rellax 속성 제거 -- 2021.11.25 -->
                                <img src="/publishing/mobile-en/dist/img/macrogen/img-vision-parallax-3.png" alt="dna">
                            </div>
                        </div>
                    </div>
                </div>
                   <div class="parallax-DNA DNA-2 _DNA2" data-rellax-speed="10"></div>
              <script>
                  var rellax2 = new Rellax('._DNA2');
              </script>
            </div>
            <script> <!-- script 수정 -- 2021.11.25 -->
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
                <div class="font-h7">Business Philosophy</div>
                <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/img-management-philosophy.png" alt="경영이념"></div>
                <div class="info">
                    <div class="font-h4">We can help anyone improve their health based on their genetic information</div>
                    <div class="font-body">We can help anyone improve their health based on their genetic
                        information, and  are devoted to helping people around the world live
                        happier and healthier lives. By seeking to acquire even deeper
                        knowledge and related technologies, we are committed to identifying
                        the genetic cause of diseases.</div>
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
                    <div class="font-h7">Core Values</div>
                    <div class="values">
                        <div class="item">
                            <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/img-vision-core-1.png" alt="탁월한 생각"></div>
                            <div class="font-h5">Creative<br/> <span class="color-point-primary">Thinking</span></div>
                            <div class="font-body">Discover values to change the world through creative thinking.</div>
                        </div>
                        <div class="item">
                            <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/img-vision-core-2.png" alt="멈추지 않는 도전"></div>
                            <div class="font-h5">Continue to<br/> <span class="color-point-primary">Challenge</span></div>
                            <div class="font-body">Continue to challenge ourselves to create values and services that surpass our clients' expectations.</div>
                        </div>
                        <div class="item">
                            <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/img-vision-core-3.png" alt="초일류 리더"></div>
                            <div class="font-h5">Top-notch <br/><span class="color-point-primary">Leader</span></div>
                            <div class="font-body">Aim to become a top-notch leader that leads the future with creative thinking and a bold vision.</div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- e 핵심가치 -->
        </div>
    </div>

</body>