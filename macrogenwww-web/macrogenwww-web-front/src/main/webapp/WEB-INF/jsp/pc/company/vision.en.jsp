<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

    <div class="full-bg macrogen" >
        <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header header-bg-white" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

        <div class="frame">
                <h2 class="hero-title">Vision</h2>
                <div class="slogan">The global leader<br/>in precision medicine</div> <!-- 번역 변경 -- 2021.11.23 -->
                <!-- <div class="slogan-sub">We predict and diagnose diseases and provides personalized solutions</div> -->
                <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">MACROGEN</li>
        <li class="breadcrumb-item">Company</li>
        <li class="breadcrumb-item">Vision</li>
    </ol>
</nav>

            <div class="scroll-wrap">
    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
</div>

        </div>
    </div>
    <div class="container container-fluid">
        <div class="macrogen macrogen-vision clearfix">
            <!-- s vision -->
            <div class="section-vision">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="title">VISION</div>
                    <div class="diagram">
                        <div class="img img-ko">
                            <img src="/publishing/pc-en/dist/img/macrogen/img-vision-diagram.png" alt="Vision">
                        </div>
                        <!--                    <div class="img img-en">-->
                        <!--                        <img src="/publishing/pc-en/dist/img/macrogen/img-vision-diagram.png" alt="Vision">-->
                        <!--                    </div>-->
                        <div class="txt">
                            <div class="row">
                                <div class="col">Macrogen is a global leader in precision medicine with a mission to predict and diagnose diseases, and present personalized treatment through R&D based on genome big data and collaboration with medical institutes.</div>
                                <div class="col">Based on advanced core technology, production facilities and talents for reading the base sequence of 3 billion pairs of human genomes, we are committed to building big data that integrates a large amount of genomic and medical information every year through global networks.</div>
                            </div>
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
                        <div class="font-h7">Slogan_</div>
                        <div class="title">HUMANIZING<br/>GENOMICS</div>
                        <div class="font-body-h">Our goal is to present personalized medical solutions according <br/>
                            to the genetic characteristics of each patient based on human <br/>
                            genomic information and data analysis technology.<br/>
                            We live up to the value of "Hongik Ingan," which means<br/>
                            “for the benefit of all mankind.”
                        </div>
                    </div>
                    <div class="img img-1" data-aos="fade-up" data-aos-duration="2000" data-rellax-speed="4" data-rellax-percentage="0.5">
                        <img src="/publishing/pc-en/dist/img/macrogen/img-vision-parallax-1.png" alt="dna">
                    </div>
                    <div class="img img-2" data-aos="fade-down" data-aos-duration="2000" data-rellax-speed="4" data-rellax-percentage="0.5">
                        <img src="/publishing/pc-en/dist/img/macrogen/img-vision-parallax-2.png" alt="dna">
                    </div>
                    <div class="img img-3" data-aos="fade-up" data-aos-duration="2000" data-rellax-speed="4" data-rellax-percentage="0.5">
                        <img src="/publishing/pc-en/dist/img/macrogen/img-vision-parallax-3.png" alt="dna">
                    </div>
                </div>
                <div class="parallax-DNA DNA-2 _DNA2" data-rellax-speed="10"></div>
                <script>
                  var rellax2 = new Rellax('._DNA2');
                </script>
            </div>
            <!-- e vision -->

            <!-- s 경영이념 -->
            <div class="section-management-philosophy" data-aos="fade-up" data-aos-duration="2000">
              <script>
                  var rellax3 = new Rellax('.img-1');
                  var rellax4 = new Rellax('.img-2');
                  var rellax5 = new Rellax('.img-3');
              </script>

                <div class="info">
                    <div class="font-h7">Business Philosophy</div>
                    <div class="font-h4">We can help anyone <br/>improve their health<br/> based on their<br/> genetic information</div>
                    <div class="font-body">We can help anyone improve their health based on their genetic <br/>
                        information, and  are devoted to helping people around the world live<br/>
                        happier and healthier lives. By seeking to acquire even deeper <br/>
                        knowledge and related technologies, we are committed to identifying <br/>
                        the genetic cause of diseases.</div>
                </div>
            </div>
            <!-- e 경영이념 -->

            <!--DNA-3 위치변경 - 21.10.19 변경 전
            <div class="parallax-DNA DNA-3 _DNA3" data-rellax-speed="10"></div>
            <script>
                var rellax6 = new Rellax('._DNA3');
            </script>-->

            <!-- s 핵심가치 -->
            <div class="section-core-values" data-aos="fade-up" data-aos-duration="2000">
               <!-- DNA-3 위치변경 - 21.10.19 변경 후-->
                <div class="parallax-DNA DNA-3 _DNA3" data-rellax-speed="10"></div>
                <script>
                    var rellax6 = new Rellax('._DNA3');
                </script>

                <div class="inner">
                    <div class="font-h7">Core Values</div>
                    <div class="values">
                        <div class="item">
                            <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/img-vision-core-1.png" alt="Creative Thinking"></div>
                            <div class="font-h5">Creative<br/> <span class="color-point-primary">Thinking</span></div>
                            <div class="font-body">Discover values to change<br/> the world through creative thinking.</div>
                        </div>
                        <div class="item">
                            <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/img-vision-core-2.png" alt="Continue to Challenge"></div>
                            <div class="font-h5">Continue to<br/> <span class="color-point-primary">Challenge</span></div>
                            <div class="font-body">Continue to challenge ourselves to<br/> create values and services that surpass<br/> our clients' expectations.</div>
                        </div>
                        <div class="item">
                            <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/img-vision-core-3.png" alt="Top-notch Leader"></div>
                            <div class="font-h5">Top-notch<br/> <span class="color-point-primary">Leader</span></div>
                            <div class="font-body">Aim to become a top-notch leader that<br/> leads the future with creative thinking<br/> and a bold vision.</div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- e 핵심가치 -->
        </div>
    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->

</body>