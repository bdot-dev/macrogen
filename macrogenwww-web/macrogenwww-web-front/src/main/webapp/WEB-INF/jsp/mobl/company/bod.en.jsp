<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg" style="background-image: url(/publishing/mobile-en/dist/img/macrogen/bg-management.png);">
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
            <div class="font-h4">Executive Leadership </div>
            <div class="font-slogan en ft39">Broadly benefiting<br/> all mankind</div>
            <div class="font-h7-r">Macrogen seeks to help everyone<br/> enjoy a long and healthy life by<br/> utilizing genomic data </div>
            <div class="scroll-wrap">
    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
</div>

        </div>
    </div>
    <div class="container pt-0">
        <div class="macrogen macrogen-management">
            <nav class="tab-primary">
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                    <button class="nav-link active" id="nav-tab-1" data-bs-toggle="tab" data-bs-target="#nav-1" type="button" role="tab" aria-controls="nav-1" aria-selected="true"><span>Chairman</span></button>
                    <button class="nav-link" id="nav-tab-2" data-bs-toggle="tab" data-bs-target="#nav-2" type="button" role="tab" aria-controls="nav-2" aria-selected="false"><span>CEO</span></button>
                    <button class="nav-link" id="nav-tab-3" data-bs-toggle="tab" data-bs-target="#nav-3" type="button" role="tab" aria-controls="nav-3" aria-selected="false"><span>Leadership Team</span></button>
                </div>
            </nav>
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-1" role="tabpanel" aria-labelledby="nav-tab-1">
                    <!-- s  회장 -->
                    <div class="section-chairman">
                        <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                            <div class="font-h3">Our goal is to make DNA blueprints
                                available to people around the world.</div>
                            <div class="info-wrap">
                                <div class="img">
                                    <img src="/publishing/mobile-en/dist/img/macrogen/img-chairman.png" alt="마크로젠 회장 서정선">
                                </div>
                                <div class="info">
                                    <div class="font-h7">After accomplishing the "Human Genome Map" by mankind in the 21st century through the genome project, the medical paradigm has shifted from a treatment-centered approach to disease prevention and health care.</div>
                                    <div class="font-body">As the $1,000 genome has been realized, human society is rapidly advancing into the era of precision medicine that is capable of predicting, diagnosing, and treating diseases based on big data that integrates medical and genomic information. Recognizing the importance of genomic medicine as a key to innovative change in the medical paradigm and the realization of precision medicine, we have made outstanding progress in research in the field of genomic analysis. Particularly, we became the fourth company in the world to analyze the entire genome of Koreans with the individual genome analysis results in 2009 and the first when it comes to Northern Asian genome analysis results. In 2016, we managed to overcome the limitations of the existing international standard genome and achieve the world's most complete Asian standard genome applicable to future precision medicine.
										<br/><br/>Macrogen has constantly evolved and adapted to the changing market for the last two decades and is prepared to become the global No. 1 company in the "Genome Foundry" industry by expanding its domestic and international genome centers' operations based on the new management structure and the mid-to-long term vision called "Macrogen 2.0." Macrogen is currently striving to take another leap in the clinic business by providing health check-up services tailored to each person's genes for disease predictions at its medical institutions, including Macrogen Medical Foundation's Gene Health Check-up Center.
										<br/>While vertically integrating our business areas including the upstream and downstream businesses related to DNA analysis, Macrogen, a healthcare company with a pivot on "wellness," will continue to expand our global network. Furthermore, Macrogen will continue making progress toward the goal of empowering humans to achieve longevity without diseases by tapping into the digital transformation in healthcare empowered by the convergence of big data, including genomic data, and AI-driven analysis technologies.
									</div>
                                    <div class="sign">
                                        <span class="font-body-h" style="letter-spacing: -1.5px;">Chairman of Macrogen</span>
                                        <span class="font-h7">  Jeong-Sun Seo</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- e  회장 -->

                    <!-- s  회장 경력-->
                    <div class="section-chairman-career">
                        <div class="swiper-container _swiper" data-aos="fade-up" data-aos-duration="2000">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="inner">
                                        <div class="item line-bottom">
                                            <div class="font-h5">Education</div>
                                            <div class="list">
                                                <div class="row">
                                                    <div class="col">
                                                        <ul>
                                                            <li>
                                                                <span>1980</span>
                                                                <span>PhD in Biochemistry and Molecular Biology, Seoul National University College of Medicine</span>
                                                            </li>
                                                            <li>
                                                                <span>1976</span>
                                                                <span>M.D., Seoul National University College of Medicine</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- <div class="item">
                                            <div class="font-h5">Experience</div>
                                        </div> -->
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="inner">
                                        <div class="item">
                                            <div class="font-h5">Experience</div>
                                        </div>
                                        <div class="item">
                                            <div class="list">
                                                <div class="row">
                                                    <div class="col">
                                                        <ul>
                                                            <li>
                                                                <span>1997 - Present</span>
                                                                <span>Chairman & Founder, Macrogen Inc., Republic of Korea</span>
                                                            </li>
                                                            <li>
                                                                <span>2017 - Present</span>
                                                                <span>Distinguished Professor, Seoul National University Bundang Hospital, Republic of Korea</span>
                                                            </li>
                                                            <li>
                                                                <span>2017 - Present</span>
                                                                <span>Chairman, Gong-Wu Genome Information Foundation (G2IF), Republic of Korea</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="inner">
                                        <div class="item">
                                            <div class="list">
                                                <div class="row">
                                                    <div class="col">
                                                        <ul>
                                                            <li>
                                                                <span>2018 - Present</span>
                                                                <span>Chairman, Macrogen Medical Foundation, Republic of Korea</span>
                                                            </li>
                                                            <li>
                                                                <span>2012 - Present</span>
                                                                <span>Editor, PLOS One Journal, USA</span>
                                                            </li>
                                                            <li>
                                                                <span>2009 - 2020</span>
                                                                <span>President, Korea Biotechnology Industry Organization, Republic of Korea</span>
                                                            </li>
                                                            <li>
                                                                <span>2005 - Present</span>
                                                                <span>Chairman, Biomedical hub advisory committee of IFEZ, Republic of Korea</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="inner">
                                        <div class="item">
                                            <div class="list">
                                                <div class="row">
                                                    <div class="col">
                                                        <ul>
                                                            <li>
                                                                <span>2005 - Present</span>
                                                                <span>Member, American Society for Biochemistry and Molecular Biology (ASBMB), USA</span>
                                                            </li>
                                                            <li>
                                                                <span>2004 - Present</span>
                                                                <span>Chairman of the Board, Macrogen Inc., Republic of Korea</span>
                                                            </li>
                                                            <li>
                                                                <span>2003 - Present</span>
                                                                <span>Member, The Korean Academy of Science and Technology (KAST), Republic of Korea</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="inner">
                                        <div class="item">
                                            <div class="list">
                                                <div class="row">
                                                    <div class="col">
                                                        <ul>
                                                            <li>
                                                                <span>1997 - Present</span>
                                                                <span>EMM Journal Editor</span>
                                                            </li>
                                                            <li>
                                                                <span>1997 - Present</span>
                                                                <span>Charter Member, International Molecular Biology Network (IMBN), Republic of Korea</span>
                                                            </li>
                                                            <li>
                                                                <span>1997 - Present</span>
                                                                <span>Member of New York Academy of Science, USA</span>
                                                            </li>
                                                            <li>
                                                                <span>1997 - 2017</span>
                                                                <span>Director, ILCHUN Genomic Medicine Institute (GMI), SNU MRC, Republic of Korea</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="inner">
                                        <div class="item">
                                            <div class="list">
                                                <div class="row">
                                                    <div class="col">
                                                        <ul>
                                                            <li>
                                                                <span>1983 - 2017</span>
                                                                <span>Professor, Seoul National University, Republic of Korea</span>
                                                            </li>
                                                            <li>
                                                                <span>2009</span>
                                                                <span>President, Korean Society for Biochemistry and Molecular Biology (KSBMB), Republic of Korea</span>
                                                            </li>
                                                            <li>
                                                                <span>2009</span>
                                                                <span>President, The Korean Society of Medical Biochemistry and Molecular Biology, Republic of Korea</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="inner">
                                        <div class="item">
                                            <div class="list">
                                                <div class="row">
                                                    <div class="col">
                                                        <ul>
                                                            <li>
                                                                <span>2008</span>
                                                                <span>President, The Korean Society of Medical Biochemistry and Molecular Biology, Republic of Korea</span>
                                                            </li>
                                                            <li>
                                                                <span>2007 - 2009</span>
                                                                <span>President, Korea Bio Venture Association, Republic of Korea</span>
                                                            </li>
                                                            <li>
                                                                <span>2005</span>
                                                                <span>President, Korea Genome Organization (KOGO), Republic of Korea</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="inner">
                                        <div class="item">
                                            <div class="list">
                                                <div class="row">
                                                    <div class="col">
                                                        <ul>
                                                            <li>
                                                                <span>2001 - 2002</span>
                                                                <span>Scientific Advisor, Ministry of Health & Welfare, Republic of Korea</span>
                                                            </li>
                                                            <li>
                                                                <span>2000 - 2004</span>
                                                                <span>CEO, Macrogen Inc., Republic of Korea</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
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
                    <!-- e  회장 경력-->
                </div>
                <div class="tab-pane fade" id="nav-2" role="tabpanel" aria-labelledby="nav-tab-2">
                    <!-- s  CEO -->
                    <div class="section-ceo">
                        <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                            <div class="font-h6">CEO</div>
                            <div class="font-h3">Changhoon Kim </div>
                            <div class="info-wrap">
                                <div class="img">
                                    <img src="/publishing/mobile-en/dist/img/macrogen/img-ceo-kch.png" alt="대표이사 김창훈">
                                </div>
                                <div class="info">
                                    <div class="item">
                                            <div class="font-h5">Education & Experience</div>
                                            <div class="list">
                                                <div class="row">
                                                    <div class="col">
                                                        <ul>
                                                            <li>
                                                                <span>2022 - Present</span>
                                                                <span>CEO, Macrogen Inc.</span>
                                                            </li>
                                                            <li>
                                                                <span>2012 - 2021</span>
                                                                <span>Director/CTO, Macrogen<br> Bioinformatics Institute</span>
                                                            </li>
                                                             <li>
			                                                    <span>2009 - 2011</span>
			                                                    <span>Senior Researcher, BMDRC<br> (Bioinformatics and Moleculer<br>Design Research Center)</span>
			                                                </li>
                                                            <li>
                                                                <span>2003 - 2009</span>
                                                                <span>Visiting/Researcher Fellow,<br> NCI(National Cancer Institute)</span>
                                                            </li>
                                                            <li>
                                                                <span>2001 - 2009</span>
                                                                <span>Senior Researcher, KRIBB<br>(Korea Research Institute of<br> Bioscience and Biotechnology)</span>
                                                            </li>
                                                            <li>
                                                                <span>1998</span>
                                                                <span>Ph.D, Bioscience, KAIST</span>
                                                            </li>                                                         
			                                                <li>
			                                                    <span>1992</span>
			                                                    <span>M.D, Bio-engineering, KAIST</span>
			                                                </li>
			                                                <li>
			                                                    <span>1990</span>
			                                                    <span>B.S, Genetic Engineering,<br> Kyungpook National University</span>
			                                                </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                    </div>                         
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- e  CEO -->

                    <!-- s  CEO 경력-->
                    <div class="section-ceo-career">
                        <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                            <div class="font-h3">
                                	CEO Message
                            </div>
                            <div class="info-wrap">
                  
                                <div class="info">
                                    <div class="item">
                                        <div class="font-h7">
                                           Macrogen, an iconic Korean biotech company, is a global leader in genomic analysis
                                        </div>
                                        <div class="font-body">
                                           Founded on June 5, 1997, Macrogen Inc., has since become established as a global leader in precision medicine with clients from more than 18,000 research institutions in 153 countries around the world through continuous research and innovation in the rapidly changing biotechnology industry. Equipped with unrivaled technological expertise, backed by talented human resources and extensive experience, and cutting-edge genomic analysis infrastructure, Macrogen offers  the best available biotech total solutions for its global client base.
											<br>Macrogen was also the first in the industry to obtain PIMS (personal information management system) certification for its outstanding effort to enhance information security and personal data protection. In addition, the company has done its best to share its cutting-edge technologies with others in the industry through constant technological cooperation with other leading gene sequencing companies.
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="font-h7">
                                            Macrogen is preparing to take the next step forward – shifting
											from being a technology-centered company to a customer-centered company.
                                        </div>
                                        <div class="font-body">
                                           Utilizing the technological expertise and corporate reputation that it has built over the years, Macrogen now wants to shift its focus to growing its new customer-centered business by including services such as high value-added clinical diagnosis and personal genomics. To that end, Macrogen has already built its very own Precision Medicine Center network equipped with world-class clinical diagnostic laboratories and continues to develop and launch clinical diagnostic services based on the latest genomic analysis technologies for cancer diagnoses, among others. 
											<br>Furthermore, Macrogen has implemented localization strategies in key overseas markets through its US subsidiary (Psomagen, Inc.) and its subsidiaries in Europe and Japan in a bid to expand its global presence throughout the world with the launch of DTC genetic testing and microbiome analysis services.
                                        </div>
                                    </div>
                                    <div class="sign">
                                        <span class="font-body-h">CEO of Macrogen</span>
                                        <span class="font-h7">Changhoon Kim</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- s  CEO 경력-->
                </div>
                <div class="tab-pane fade" id="nav-3" role="tabpanel" aria-labelledby="nav-tab-3">
                    <!-- s  Leadership Team-->
                    <div class="section-leader">
                        <div class="title">
                            <span data-aos="fade-up" data-aos-duration="600">Leadership</span>
                            <span data-aos="fade-up" data-aos-duration="600" data-aos-delay="200">Team</span>
                        </div>
                    
                        <ul class="thumbnail _thumbnailGrid" data-aos="fade-up" data-aos-duration="600" data-aos-delay="500">                           
                            <li class="item">                                        
                                <span class="img">
                                    <img src="/publishing/mobile-ko/dist/img/macrogen/img-team_01.png" alt="">
                                    <p class="name">Management Support Center<strong>Yoo Seong-hyun</strong></p>
                                </span>
                            </li>     
                            <li class="item">                                        
                                <span class="img">
                                    <img src="/publishing/mobile-ko/dist/img/macrogen/img-team_02.png" alt="">
                                    <p class="name">Digital Innovation Unit<strong>Joo Chang-nam</strong></p>
                                </span>
                            </li>     
                            <li class="item">                                        
                                <span class="img">
                                    <img src="/publishing/mobile-ko/dist/img/macrogen/img-team_03.png" alt="">
                                    <p class="name">Genome Business Unit<strong>Lee Eung-ryoung</strong></p>
                                </span>
                            </li>     
                            <li class="item">                                        
                                <span class="img">
                                    <img src="/publishing/mobile-ko/dist/img/macrogen/img-team_04.png" alt="">
                                    <p class="name">Personal Genome Business Unit<strong>Hwang Sang-joon</strong></p>
                                </span>
                            </li>     
                            <li class="item">                                        
                                <span class="img">
                                    <img src="/publishing/mobile-ko/dist/img/macrogen/img-team_06.png" alt="">
                                    <p class="name">New Business Innovation Unit<strong>Kim Jong-yoon</strong></p>
                                </span>
                            </li>     
                            <li class="item">                                        
                                <span class="img">
                                    <img src="/publishing/mobile-ko/dist/img/macrogen/img-team_05.png" alt="">
                                    <p class="name">Clinical Genome Business Unit<strong>Kwon Nak-jung</strong></p>
                                </span>
                            </li>     
                        </ul>
                    </div>                    
                    <!-- e  Leadership Team-->
                </div>
            </div>
        </div>
    </div>
    <script>
        new Swiper("._swiper", {
            observer: true,
            observeParents: true,
            slidesPerView: "auto",
            spaceBetween: 0,
            centeredSlides: false,
            watchActiveIndex: true,
            slideToClickedSlide: true,
            pagination: {
                el: "._swiper .swiper-pagination",
                clickable : true,
           },
            navigation: {
                nextEl: "._swiper .next",
                prevEl: "._swiper .prev",
            },
        });
        new Swiper("._swiper2", {
            observer: true,
            observeParents: true,
            slidesPerView: "auto",
            spaceBetween: 0,
            centeredSlides: false,
            watchActiveIndex: true,
            slideToClickedSlide: true,
            pagination: {
                el: "._swiper2 .swiper-pagination",
                clickable : true,
            },
            navigation: {
                nextEl: "._swiper2 .next",
                prevEl: "._swiper2 .prev",
            },
        });
    </script>


</body>
