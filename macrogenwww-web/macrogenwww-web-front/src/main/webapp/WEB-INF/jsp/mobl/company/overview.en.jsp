<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">
    <div class="full-bg" style="background-image: url(/publishing/mobile-en/dist/img/macrogen/company-overview-bg.png);">
        <header class="header header-white">
    <div class="inner">
        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
    </div>
</header>
<style>
.macrogen.company-overview .section-symbol .item .desc .brochure_img {
    width: 100%;
    height: 63.55555vw;
    background-image: url(/publishing/pc-ko/dist/img/macrogen/brochure-img.png?v2);
    background-size: cover;
    background-position: center center;
    margin-bottom: 40px;
    background-size: contain;
    background-repeat: no-repeat;
    box-shadow: 5px 5px 15px 1px rgba(0,0,0,.2);
</style>
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
            <div class="font-h4">About MACROGEN</div>
            <div class="font-slogan en">HUMANIZING<br/> GENOMICS</div>
            <div class="font-h7-r">Creating a better future for humanity.</div>
            <div class="scroll-wrap">
    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
</div>

        </div>
    </div>
    <div class="container">
        <div class="macrogen company-overview">
            <!-- s  기업 설명 -->
            <div class="section-info">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-slogan-en">HUMANIZING<br/>GENOMICS</div>
                    <div class="font-h7">Creating a better future for humanity.</div>
                    <div class="text-box">
                        <div class="font-body-h">
                            Macrogen was established on June 5, 1997, based in the Genomic Medicine Institute of the Seoul National University College of Medicine. In February 2000. It is the first Korean bio venture to be listed on the KOSDAQ.<br/><br/>

                            Since then, Macrogen has continued to be actively engaged in R&D fields for genetic and genomic analyses. In addition to providing services to clients around the world, Macrogen contributes to the advancement of bioindustries through a wide range of CSR activities.<br/>
                            <br/>
                            Macrogen is committed to leading innovation in precision medicine in the 21st century by providing personalized genomic information. It is also realizing achievements in the global genome analysis market in various sectors, thanks to its superior technological expertise.
                        </div>
                    </div>
                </div>
                <div class="img-box" data-aos="fade-up" data-aos-duration="2000">
                    <div class="inner">
                        <div class="img">
                            <img src="/publishing/mobile-en/dist/img/macrogen/macrogen_thumb_lg.png" alt="글로벌 정밀의학 선도기업">
                        </div>
                        <ul class="list">
                            <li class="font-h7">A global leader in precision medicine</li>
                            <li class="font-h7">Human-oriented management practices</li>
                            <li class="font-h7">Big data-based healthcare solutions</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- e  기업 설명 -->

            <!-- s  기업현황 -->
            <div class="section-overview">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="box">
                        <div class="font-h7">Corporate Status</div>
                        <div class="year">EST 1997</div>
                        <div class="font-body-h">Macrogen has maintained sustainable growth by adapting to changes in the environment.<br/>
                            As an industry leader with a strong influence on the bio-ecosystem, our journey to sustainable growth will continue.</div>
                    </div>
                    <div class="overview-list">
                        <ul class="row">
                            <li class="item col col-6">
                                <span class="img"><img src="/publishing/mobile-en/dist/img/macrogen/macrogen_circle_1.png" alt="유전체 분석 건수"></span>
                                <span class="font-h4">30M</span>
                                <span class="font-body-h">Cases Genome Sequencing</span>
                            </li>
                            <li class="item col col-6">
                                <span class="img"><img src="/publishing/mobile-en/dist/img/macrogen/macrogen_circle_2.png" alt="바이오벤처 최초 코스닥 상장"></span>
                                <span class="font-h4">1st</span>
                                <span class="font-body-h">Bio Ventures Listed on KOSDAQ</span>
                            </li>
                            <li class="item col col-6">
                                <span class="img"><img src="/publishing/mobile-en/dist/img/macrogen/macrogen_circle_3.png" alt="매출 1,000억 돌파"></span>
                                <span class="font-h4">&#36;100M</span>
                                <span class="font-body-h">Revenue (2017)</span>
                            </li>
                            <li class="item col col-6">
                                <span class="img"><img src="/publishing/mobile-en/dist/img/macrogen/macrogen_circle_4.png" alt="해외 매출"></span>
                                <span class="font-h4">70&#37;</span>
                                <span class="font-body-h">Overseas Revenue</span>
                            </li>
                            <li class="item col col-6">
                                <span class="img"><img src="/publishing/mobile-en/dist/img/macrogen/macrogen_circle_5.png" alt="리서치 시퀀싱 분야 점유율"></span>
                                <span class="font-h4">No.1</span>
                                <span class="font-body-h">Market Share Research Sequencing</span>
                            </li>
                            <li class="item col col-6">
                                <span class="img"><img src="/publishing/mobile-en/dist/img/macrogen/macrogen_circle_6.png" alt="153개국 18,000여 고객"></span>
                                <span class="font-h4">153countries</span>
                                <span class="font-body-h">Countries 18K+ Global Partners</span>
                            </li>
                            <li class="item col col-6">
                                <span class="img"><img src="/publishing/mobile-en/dist/img/macrogen/macrogen_circle_7.png" alt="SCI급 네이처지 논문 148편"></span>
                                <span class="font-h4">19</span>
                                <span class="font-body-h">Nature Papers</span>
                            </li>
                            <li class="item col col-6">
                                <span class="img"><img src="/publishing/mobile-en/dist/img/macrogen/macrogen_circle_8.png" alt="바이오벤처 기업 지원"></span>
                                <span class="font-h4">18</span>
                                <span class="font-body-h">Companies Assistance to Bio Venture</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- e  기업현황 -->

            <!-- s  사업분야 -->
            <div class="section-business">
                <div class="swiper-container _slider" data-aos="fade-up" data-aos-duration="2000">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="inner">
                                <div class="font-h7">Business Areas</div>
                                <div class="font-h3">Research Areas</div>
                                <div class="font-body-h">We provide a wide range of research services for the development of genome-sequencing technology. Based on big data and advanced AI analytics accumulated through research, we are paving the way for a healthy future.</div>
                                <div class="category-list">
                                    <ul class="row">
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/ic-atom.svg" alt="NGS"></div>
                                            <div class="tit">NGS</div>
                                        </li>
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/ic-molecule.svg" alt="CES"></div>
                                            <div class="tit">CES</div>
                                        </li>
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/ic-molecule2.svg" alt="OlIGO"></div>
                                            <div class="tit">OLIGO</div>
                                        </li>
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/ic-chip.svg" alt="MICROARRAY"></div>
                                            <div class="tit">MICROARRAY</div>
                                        </li>
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/ic-rat.svg" alt="GEM"></div>
                                            <div class="tit">GEM</div>
                                        </li>
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/ic-laptop.svg" alt="BIOINFORMATICS"></div>
                                            <div class="tit">BIOINFORMATICS</div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="inner">
                                <div class="font-h7">Business Areas</div>
                                <div class="font-h3">CLINICAL DIAGNOSTICS & TREATMENTS</div>
                                <div class="font-body-h">We provide various clinical diagnoses and treatment for 7.8 billion people around the world. We are also committed to building a systematic diagnosis system to promote prediction and cause analysis of diseases.</div> <!-- 번역 변경 -- 2021.11.23 -->
                                <div class="category-list">
                                    <ul class="row">
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/ic-biology.svg" alt="암유전체검사"></div>
                                            <div class="tit">Cancer Occurrence Monitoring</div>
                                        </li>
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/ic-embryo1.svg" alt="태아 및 희귀질환 검사"></div>
                                            <div class="tit">Genetic Disorder</div>
                                        </li>
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/ic-biology2.svg" alt="COVID-19"></div>
                                            <div class="tit">COVID-19</div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="inner">
                                <div class="font-h7">Business Areas</div>
                                <div class="font-h3">PERSONAL HEALTHCARE & Pets</div>
                                <div class="font-body-h">Based on big data and AI analytics built based on our extensive research, we provide personalized health care services based on DNA and health care solutions for companion animals.</div>
                                <div class="category-list">
                                    <ul class="row">
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/ic-biology3.svg" alt="개인유전체분석"></div>
                                            <div class="tit">Personal Genome Analysis</div>
                                        </li>
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/ic-microbiology.svg" alt="마이크로바이옴 분석"></div>
                                            <div class="tit">Microbiome Analysis</div>
                                        </li>
                                        <li class="col col-4">
                                            <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/ic-dog-leash.svg" alt="반려동물 유전자 분석"></div>
                                            <div class="tit">Pets gene analysis</div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pagination-wrap">
                        <ul class="navigation">
                            <li class="page-item prev">
                                <a class="page-link _slidePrev" href="#">
                                    <span class="sr-only">prev</span>
                                </a>
                            </li>
                            <li class="page-item next">
                                <a class="page-link _slideNext" href="#">
                                    <span class="sr-only">next</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <script>
            var swiper = new Swiper("._slider", {
                slidesPerView: "auto",
                spaceBetween: 0,
                centeredSlides: false,
                watchActiveIndex: true,
                slideToClickedSlide: true,
                pagination: {
                    el: "._slider .swiper-pagination",
                    clickable : true,
                },
                navigation: {
                    nextEl: "._slideNext",
                    prevEl: "._slidePrev",
                },
            });
        </script>
            <!-- e  사업분야 -->

            <!-- s  사업분야 상세 -->
            <div class="section-business-detail">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="item item-1">
                        <div class="img">
                            <img src="/publishing/mobile-en/dist/img/macrogen/macrogen_thumb_1.png" alt="RESEARCH">
                            <span class="title">RESEARCH </span>
                        </div>
                        <div class="desc">Government, Universities and Research Centers</div>
                        <div class="desc-sm">Our core areas of business include sequencing (NGS, CES), Microarray, Oligo, GEM (Genetically Engineered Mouse), and Bioinformatics in the form of biotechnology and clinical research service.  </div>
                    </div>
                    <div class="item item-2">
                        <div class="img">
                            <img src="/publishing/mobile-en/dist/img/macrogen/macrogen_thumb_2.png" alt="임상진단">
                            <span class="title">CLINICAL<br/> DIAGNOSTICS &<br/> TREATMENTS</span>
                        </div>
                        <div class="desc">For Patients and Medical Staff</div>
                        <div class="desc-sm">We invest and conduct R&D projects in the field of precision medicine. This includes tests for cancer genomes, prenatal genomes, and rare disease genomes, focusing on providing personalized diagnosis, treatment, and health care solutions.</div>
                    </div>
                    <div class="item item-3">
                        <div class="img">
                            <img src="/publishing/mobile-en/dist/img/macrogen/macrogen_thumb_3.png" alt="개인 유전체">
                            <span class="title">PERSONAL <br/>HEALTHCARE</span>
                        </div>
                        <div class="desc">For the Public</div>
                        <div class="desc-sm">As a key area of personal health care, genome services are gaining attention. Macrogen is providing more practical and effective health care solutions to improve the quality of people's lives through personal genomic analysis service "My Genome Story" and personalized healthcare solution "The Biome" based on microbiome testing and analysis.</div>
                    </div>
                    <div class="item item-4">
                        <div class="img">
                            <img src="/publishing/mobile-en/dist/img/macrogen/macrogen_thumb_4.png" alt="응용">
                            <span class="title">PETS</span>
                        </div>
                        <div class="desc">For Pets</div>
                        <div class="desc-sm">myPETGENE™ is a genetic testing service for pets. We also analyze the genomic information of all living creatures including humans.</div>
                    </div>
                </div>
            </div>
            <!-- e  사업분야 상세-->

            <!-- s  CI-->
            <div class="section-ci">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="title-sm">CI</div>
                    <div class="text">Macrogen's CI represents<br/>
                        our commitment to a healthy life.</div>
                </div>
            </div>
            <!-- e  CI -->

            <!-- s  기업상징  -->
            <div class="section-symbol">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="item">
                        <div class="title">Macrogen CI</div>
                        <div class="desc">
                            <div class="bg-logo"><span class="sr-only">macrogen</span></div>
                            <div class="content">
                                Macrogen is an abbreviation of Macroscopic Phenotype of Gene, representing our company that studies macroscopic phenomena or phenotypes of genes in vivo.<br/><br/>
                                It symbolizes the realization of personalized medicine based on personal genomic information and our commitment to healthy human life in line with our slogan, "Humanizing Genomics."
                            </div>
                        </div> 
                    </div>
                    <div class="item">
                        <!-- <div class="title">COLOR SYSTEM</div> -->
                        <div class="desc">
                            <ul class="row color-list">
                                <li class="col col-6">
                                    <div class="color color-1"></div>
                                    <div class="value">
                                        <span>RGB</span>
                                        <span>0  30  98</span>
                                    </div>
                                    <div class="value">
                                        <span>CMYK</span>
                                        <span>100  80  0  50</span>
                                    </div>
                                    <div class="value">
                                        <span>HEX</span>
                                        <span>001E62</span>
                                    </div>
                                </li>
                                <li class="col col-6">
                                    <div class="color color-2"></div>
                                    <div class="value">
                                        <span>RGB</span>
                                        <span>0  191  178</span>
                                    </div>
                                    <div class="value">
                                        <span>CMYK</span>
                                        <span>80  0  40  0</span>
                                    </div>
                                    <div class="value">
                                        <span>HEX</span>
                                        <span>00BFB2</span>
                                    </div>
                                </li>
                                <li class="col col-6">
                                    <div class="color color-3"></div>
                                    <div class="value">
                                        <span>RGB</span>
                                        <span>132  189  0</span>
                                    </div>
                                    <div class="value">
                                        <span>CMYK</span>
                                        <span>50  0  100  0</span>
                                    </div>
                                    <div class="value">
                                        <span>HEX</span>
                                        <span>84BD00</span>
                                    </div>
                                </li>
                                <li class="col col-6">
                                    <div class="color color-4"></div>
                                    <div class="value">
                                        <span>RGB</span>
                                        <span>224  0  77</span>
                                    </div>
                                    <div class="value">
                                        <span>CMYK</span>
                                        <span>0  100  50  0</span>
                                    </div>
                                    <div class="value">
                                        <span>HEX</span>
                                        <span>E0004D</span>
                                    </div>
                                </li>
                            </ul>
                            <div class="download-area">
                            	<a href="/download/filename/macrogen_CI_기본형.ai" target="_blank" class="btn btn-light btn-round"><span>CI Download</span><i class="icon ico-download-black"></i></a>
                            	<!-- <a href="/download/filename/e브로셔_최종본_220106.pdf" target="_blank" class="btn btn-light btn-round"><span>Brochure Download</span><i class="icon ico-download-black"></i></a> -->
                       		</div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="title">Macrogen Company Profile</div>
                        <div class="desc">
                            <div class="brochure_img"><span class="sr-only">digital brochure</span></div>
                            <div class="download-area">
                                <a href="/downfile/macrogen_brochure_ko.pdf" target="_blank" class="btn btn-light btn-round"><span>KOR PDF</span><i class="icon ico-download-black"></i></a>
                                <!-- <a href="void(0);" onclick="alert('COMING SOON'); return false;" target="_blank" class="btn btn-light btn-round"><span>ENG PDF</span><i class="icon ico-download-black"></i></a> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- e  기업상징 -->
        </div>
    </div>

</body>
