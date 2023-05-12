<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

    <div class="full-bg business_bg animal">
        <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

        <div class="frame frameB">
            <nav aria-label="breadcrumb"> 
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">Service</li>
        <li class="breadcrumb-item">Research Services</li> 
        <li class="breadcrumb-item">GEM</li>
    </ol>
</nav>

            <div class="hero-title">GEM</div>
            <a href="#_tab-box" class="btn btn-round btn-service">
                <span>SERVICE</span>
                <i class="icon icon-arrow-bottom-short-white"></i>
            </a>
        </div>
    </div>

    <div class="container">
        <div class="section_business">
            <!--메인 컨텐츠-->
            <div class="subject-box">
  <p class="title font-h4">Customized GEM (Genetically Engineered Mouse) services<br>
    and CRISPR(Clustered Regularly Interspaced Short<br> Palindromic Repeats) technologies for genome editing</p>
  <p class="subject">Macrogen produces and supplies genetically engineered mice (GEM) based on CRISPR. </p>
  <!--10.05 이미지 경로 변경-->
  <div class="img">
    <img src="/publishing/pc-en/dist/img/business/img-animal-intro.png" alt="모델동물사업부intro">
  </div>
  <p class="desc">GEM (Genetically Engineered Mouse) is a laboratory mouse that has had certain genes inserted, removed, or modified using gene-editing technologies. Such mice are widely used in biological and medical research to identify the functions of human genes. Macrogen’s main GEM service offers Transgenic Mice and Knock-Out/Knock-In mice. A Transgenic Mouse is one in which a specific gene has been inserted to study the function of that gene. A Knock-Out Mouse is a genetically engineered mouse in which the expression of a target gene has been suppressed by removing a specific gene, and a Knock-In Mouse is a genetically engineered mouse in which the expression of a target gene can be adjusted or explored by modifying a certain gene. Macrogen also offers a wide range of other GEM-related services including mass reproduction, mouse line recovery, embryo freezing and reproduction to live, and KO/TG mouse maintenance. To ensure process efficiency, our genetically engineered mice are produced after a thorough experiment design process with our clients. We provide a customized partial process service to meet various client requirements, and our strict quarantine system ensures that all mice are maintained and supplied in a specific pathogen free (SPF) state.
    <br><br>
    CRISPR-Cas9, Macrogen's flagship service, is made by attaching a guide RNA that functions as a guide and Cas9 protein that cuts DNA. In principle, the position to cut and edit the DNA sequence varies, depending on the design of the guide RNA that finds the target DNA. Macrogen is developing gene editing technology with Seoul National University Hospital and the most prestigious research institutes around the world, including the Broad Institute co-founded by MIT (Massachusetts Institute of Technology) and Harvard University. Furthermore, we have secured over 50 CRISPR gene editing technologies owned by the Broad Institute in America.</p>
</div>

            <!--탭 슬라이드-->
            <div class="tab-box" id="_tab-box">
                <p class="font-h4 title">SERVICE</p>
                <div class="slide-tab-wrap">
                    <div class="swiper-container tab-slide-box _swiperTab swiper-container-initialized swiper-container-horizontal">
                        <div class="swiper-wrapper _swiperTab swiper-container-initialized swiper-container-horizontal">
                            <div class="swiper-slide active" id="crispr"><a href="#">CRISPR Knock-In/Out</a></div>
                            <div class="swiper-slide " id="gem"><a href="#">Genetically Engineered Mouse</a></div>
                            <div class="swiper-slide" id="mass"><a href="#">Mass Reproduction</a></div>
                            <div class="swiper-slide" id="additional"><a href="#">Additional</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <!--탭메뉴 스크립트-->
            <!--10.08 앵커포인트 스크립트 완료-->
            <script>
                $('._swiperTab .swiper-slide').on('click', function(){
                    var idx = $(this).index();

                    $(this).addClass('active').siblings().removeClass('active');
                    <!--탭메뉴 클릭시 페이지 변경-->
                    $(".info-box-wrap > div").addClass('show').siblings().removeClass('show');
                    $(".info-box-wrap > div").eq(idx).addClass('show').siblings().removeClass('show');
                });

                function setTabContent(idx){
                    $('._swiperTab .swiper-slide').eq(idx).addClass('active').siblings().removeClass('active');

                    <!--탭메뉴 클릭시 페이지 변경-->
                    $(".info-box-wrap > div").addClass('show').siblings().removeClass('show');
                    $(".info-box-wrap > div").eq(idx).addClass('show').siblings().removeClass('show');

                    /*페이지 변경후 상단 이동*/
                    fnMove();
                }

                /*탭메뉴 상단으로 이동*/
                function fnMove(){
                    var offset = $("#_tab-box").offset();
                    $('html, body').animate({scrollTop : offset.top - 95}, 100);
                }
                
             	// location.hash // 20230502
                if(location.hash != "#_tab-box") {
                	
               		var loadtab = $('._swiperTab .swiper-slide').filter(location.hash);
               		loadtab.click();	// tab content view
               		setTabContent(loadtab.index());	// scroll 이동
                }
           		
                $(window).on("hashchange",function () { 
                	location.reload();
                });
            </script>

            <div class="info-box-wrap tab-content">
                <!--CRISPR Knock-In/Out-->
                <div class="info-box show">
                    <p class="font-h4 main-title">CRISPR Knock-In/Out</p>
                    <p class="subject">We produce and supply KI/KO mice quickly at low cost based on CRISPR (Clustered Regularly Interspaced Short Palindromic Repeats).</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img-animal-crispr.png" alt="CRISPR Knock-In/Out">
                    </div>
                    <hr class="divider">
                    <p class="sub-title font-h5">CRISPR gRNA Synthesis</p>
                    <p class="desc">We supply gRNA design, gRNA synthesis, and synthesized gRNA for specific genes. CRISPR/Cas9 is considered as the most advanced technology to modify/edit genes, and Macrogen synthesizes and provides CRISPR gRNA that researchers need. This allows them directly perform corrections of such genes as KO or KI on cells. Macrogen is developing gene editing technology with Seoul National University Hospital and the most prestigious domestic and overseas research institutes, including the Broad Institute co-founded by MIT (Massachusetts Institute of Technology) and Harvard University. We have also managed to secure more than 50 CRISPR gene editing technologies owned by the Broad Research Institute in the United States, and exclusively introduced the "drug-induced CRISPR-Cas9 recombination vector technology” developed by Professor Lee Eun-Joo and Kim Hyo-Soo from the Cell Therapy Commercialization Center at Seoul National University Hospital. The Macrogen GEM Division searches for and delivers gRNA candidates that meet the researcher's needs for free.</p>
                    <hr class="divider">
                    <p class="font-h5 sub-title">CRISPR Validated gRNA</p>
                    <p class="desc">We supply gRNA design, gRNA synthesis, and activity-measured gRNA for specific genes.</p>
                    <hr class="divider">
                    <p class="font-h5 sub-title">CRISPR gRNA Plasmid</p>
                    <p class="desc list_bottom">We supply gRNA design for specific genes, gRNA synthesis by producing one selected gRNA as plasmid. CRISPR/Cas9 is currently the most advanced technology for modifying and correcting genes, and the Macrogen GEM Division provides CRISPR Grna needed by researchers in plasmid form so that they can directly conduct gene editing such as KO or KI in cells.</p>
                    <div class="list-area">
                        <p class="font-h8 title">Service</p>
                        <ul class="list-circle-dot img_bottom">
                            <li>Co-expression of GRNA and Cas9</li>
                            <li>Continuous use through DNA prep.</li>
                            <li>Include EGFP or PuroR as selection markers</li>
                            <li>Single-cutting or double-cutting available</li>
                        </ul>
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">CRISPR KI/KO Mouse</p>
                    <p class="desc list_bottom">We provide Knock-In and Knock-Out mouse production services based on CRISPR (Clustered Regularly Interspaced Short Palindromic Repeats). CRISPR gene editing is used on KI (Knock-In Mouse) and KO (Knock-Out Mouse) in a more efficient way. The KI refers to mice in which another gene is expressed, instead of the original gene, by inserting and removing a specific gene. KO refers to those mice in which the expression of a gene is suppressed by removing a specific gene. As a result, researchers can use KO or KI mice to observe gene function in living creatures.
                    </p>
                    <div class="list-area figure_bottom">
                        <p class="font-h8 title">Service</p>
                        <ul class="list-circle-dot">
                            <li>Macrogen produces and supplies KI/KO mice in a shorter time frame and at a lower cost based on the CRISPR system that simplified the existing testing process.</li>
                            <li>We take care of the entire process of mouse production and delivery with only the name of the gene specified.</li>
                        </ul>
                    </div>
                    <!--10.05 이미지 경로 변경-->
                    <div class="border-gray-box">
                        <img src="/publishing/pc-en/dist/img/business/img-crisper_kiko_mouse.png" alt="CRISPR KI/KO Mouse">
                    </div>
                    <div class="btn-area">
                        <a href="mailto:mouse@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
                        <a href="mailto:mouse@macrogen.com" class="btn btn-white"><span>Quotation</span></a>
                        <a href="mailto:mouse@macrogen.com" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
                    </div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item next">
                                    <div class="title" onclick="setTabContent(1)">Genetically Engineered Mouse</div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <script>

                    </script>
                </div>
                <!--Genetically Engineered Mouse-->
                <div class="info-box">
                    <p class="font-h4 main-title">Genetically Engineered Mouse</p>
                    <p class="subject">We provide GEM services for the production and supply of genetically engineered mice.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img-animal-genetically.png" alt="Genetically Engineered Mouse">
                    </div>
                    <hr class="divider">
                    <p class="sub-title font-h5">Knock-out (KO)</p>
                    <p class="desc">This is a mouse production service in which a specific gene has been removed. KO (knock-out) is a technology that produces individuals with new traits by removing specific genes. This allows us to understand the function of specific genes in vivo and to identify genetic mutations that are associated with specific diseases. Macrogen has superior expertise and know-how to secure the mice that researchers need, based on extensive experience in the field. </p>
                    <hr class="divider">
                    <p class="font-h5 sub-title">Conditional Knock-out (cKO) Mouse</p>
                    <p class="desc list_bottom">This is a GEM service in which specific genes have been conditionally removed. For genes that cannot be knocked out, such as a lethal gene, we provide Conditional KO mice that can be knocked out at certain point by applying the Cre/loxP system. If the function of a specific gene is lethal, then KO mice cannot be produced by simply removing genes. To solve this problem, we produce mice in which a specific gene is conditionally removed so researchers can more precisely analyze the function and role of the gene. Macrogen has superior expertise and know-how to secure the mice that researchers need, based on extensive experience in the field. </p>
                    <div class="list-area">
                        <p class="font-h8 title">Service</p>
                        <ul class="list-circle-dot">
                            <li>KO mice can be produced for lethal genes</li>
                            <li>Tissue-specific KO of genes available</li>
                        </ul>
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">Knock-in (KI) Mouse</p>
                    <p class="desc list_bottom">This is a GEM production service in which a specific gene is precisely inserted into the target location. The KI (knock-in) based on ESC (Embryonic Stem Cell) is a GEM production technology that has been proven over the years. Through this method, a specific gene can be inserted at the correct location to ensure that the specific gene is expressed. Furthermore, it is possible to newly identify the role of an unknown gene by using a TAG or injecting a fluorescent gene into an unknown gene. Insertion of a specific gene (KI) allows the role/function of that gene to be identified in mice. Today, the function of human genes can be identified in mice with humanized mice in which human genes are inserted.</p>
                    <div class="list-area">
                        <p class="font-h8 title">Service</p>
                        <ul class="list-circle-dot img_bottom">
                            <li>Check the function of specific genes through insertion</li>
                            <li>Create humanized mice with human genes</li>
                            <li>Identify the function of the mutation through insertion</li>
                        </ul>
                    </div>
                    <hr class="divider">

                    <p class="font-h5 sub-title">Transgenic (TG) Mouse</p>
                    <p class="desc list_bottom">This is a mouse production service in which a specific gene is overexpressed. A transgenic mouse is one in which a gene of interest is inserted into the mouse’s genome so that the gene is over-expressed. Clients can choose conventional, inducible, and conditional expression vectors freely, depending on their needs.
                    </p>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-h8 title">Service</p>
                            <ul class="list-circle-dot">
                                <li>The function of the gene can be checked through over-expression.</li>
                                <li>This requires lower production cost and shorter production time than regular KI mice.</li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="font-h8 title img_bottom">Workflow</p>
                            <!--10.05 이미지 경로 변경-->
                            <div class="img">
                                <img src="/publishing/pc-en/dist/img/business/img_workflow_level4.png" alt="workflow">
                            </div>
                            <p class="caption">※ Conventional, inducible, conditional expression vectors can be created freely depending on the designs.</p>
                        </div>
                        <div class="list-area">
                            <p class="font-h8 title img">Documents</p>
                            <div class="file-download">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="item">
                                            <i class="icon icon-pdf"></i>
                                            <span class="title">Construction of expression vector.pdf</span>
                                            <a href="/pdf/Construction of expression vector.pdf" target="_blank" class="btn-download"><i class="icon icon-download"></i></a>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="item">
                                            <i class="icon icon-pdf"></i>
                                            <span class="title">Purification of Expression vector for microinjection.pdf</span>
                                            <a href="/pdf/Purification of Expression vector for microinjection.pdf" target="_blank" class="btn-download"><i class="icon icon-download"></i></a>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="item">
                                            <i class="icon icon-pdf"></i>
                                            <span class="title">Microinjection/Production of founder mouse.pdf</span>
                                            <a href="/pdf/Microinjection_Production of founder mouse.pdf" target="_blank" class="btn-download"><i class="icon icon-download"></i></a>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="item">
                                            <i class="icon icon-pdf"></i>
                                            <span class="title">Indentification of the founder(FO).pdf</span>
                                            <a href="/pdf/Indentification of the founder(FO).pdf" target="_blank" class="btn-download"><i class="icon icon-download"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="btn-area">
                        <a href="mailto:mouse@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
                        <a href="mailto:mouse@macrogen.com" class="btn btn-white"><span>Quotation</span></a>
                        <a href="mailto:mouse@macrogen.com" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
                    </div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item prev" onclick="setTabContent(0)">
                                    <div class="title">CRISPR Knock-In/Out</div>
                                </a>
                                <a href="#" class="item next" onclick="setTabContent(2)">
                                    <div class="title">Mass Reproduction</div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <script>

                    </script>
                </div>
                <!--Mass Reproduction-->
                <div class="info-box">
                    <p class="font-h4 main-title">Mass Reproduction</p>
                    <p class="subject">Macrogen uses IVF (In Vitro Fertilization) technology to offer a mass reproduction service.</p>
                    <p class="desc img_bottom">It is possible to secure the desired number of mice in a short period of time through natural breeding and IVF. Macrogen’s mass reproduction service produces mice necessary for non-clinical studies by using IVF technology to secure large numbers of individuals of the same age (measured in weeks). We also utilize stable embryo transfer technologies and highly efficient IVF methods to provide clients with large numbers of mice of the desired age and quantity in a short period. This allows us to efficiently provide mice necessary for various studies such as those conducted by pharmaceutical laboratories and national research institutions, enabling our clients to obtain non-clinical study results within a short time frame.</p>
                    <div class="border-gray-box">
                        <!--10.05 이미지 경로 변경-->
                        <div class="img">
                            <img src="/publishing/pc-en/dist/img/business/img-breeding.png" alt="Mass Reproduction">
                        </div>
                    </div>
                    <div class="list-area">
                        <p class="font-h8 title img_bottom">Workflow</p>
                        <!--10.05 이미지 경로 변경-->
                        <div class="img">
                            <img src="/publishing/pc-en/dist/img/business/img_workflow_level6.png" alt="workflow">
                        </div>
                    </div>

                    <div class="btn-area">
                        <a href="mailto:mouse@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
                        <a href="mailto:mouse@macrogen.com" class="btn btn-white"><span>Quotation</span></a>
                        <a href="mailto:mouse@macrogen.com" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
                    </div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item prev" onclick="setTabContent(1)">
                                    <div class="title">Genetically Engineered Mouse</div>
                                </a>
                                <a href="#" class="item next" onclick="setTabContent(3)">
                                    <div class="title">Additional</div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <script>

                    </script>
                </div>
                <!--Additional-->
                <div class="info-box">
                    <p class="font-h4 main-title">Additional</p>
                    <p class="subject">We offer additional testing services in various scales tailored to the needs of our clients. </p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img-animal-additional.png" alt="Additional">
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">Mouse Maintenance</p>
                    <p class="desc list_bottom">Macrogen breeds hetero- and homo-KO/TG mice, and all mice are managed as SPF (Specific Pathogen Free). In addition, F1 mice are finally checked for germline transmission through PCR screening. We also maintain the SPF facilities for easy maintenance of GEM so they do not need to be moved after production, and generations can be reproduced after the selection service. If it is difficult to manage GEM at the client's animal room after production, then they can breed and be kept in the Macrogen animal room indefinitely.
                    </p>
                    <div class="list-area">
                        <p class="font-h8 title img">Documents</p>
                        <div class="file-download">
                            <div class="row">
                                <div class="col-6">
                                    <div class="item">
                                        <i class="icon icon-pdf"></i>
                                        <span class="title">Mouse Line Recovery</span>
                                        <a href="/pdf/마우스 사육 및 계통유지.pdf" target="_blank" class="btn-download"><i class="icon icon-download"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">Embryo freezing & Reproduction to Live</p>
                    <p class="desc">Macrogen operates a GEM bank system while also using cryo-sperm and embryos to provide embryo freezing and reproduction services.<br>
                        If it is difficult to manage disease model mice, then we provide a fertilized egg freezing service where we freeze their fertilized eggs so they can be freely moved and sold. Our technological prowess enables us to offer long-term storage services for our clients’ GEM.
                    </p>
                    <hr class="divider">
                    <p class="font-h5 sub-title">Mouse Line Recovery</p>
                    <p class="desc">This is a service for breeding and maintaining disease model mice at SPF facilities. We provide IVF (In Vitro Fertilization) and ET (Embryo Transfer) services for mice with a low reproducibility or clients who need lineage maintenance of GEM. Our staff at the SPF facilities are in charge of maintaining the cycle and reproduction schedule for clients. Detailed information on mouse management is provided once every three months, so our clients can use the service with confidence.
                    </p>
                    <div class="btn-area">
                        <a href="mailto:mouse@macrogen.com" class="btn btn-white"><span>Service Inquiry</span></a>
                        <a href="mailto:mouse@macrogen.com" class="btn btn-white"><span>Quotation</span></a>
                        <a href="mailto:mouse@macrogen.com" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
                    </div>
                    <hr class="divider">
                    <div class="board">
                        <div class="navigation">
                            <div class="content clearfix">
                                <a href="#" class="item prev" onclick="setTabContent(2)">
                                    <div class="title">Mass Reproduction</div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <script>

                    </script>
                </div>
            </div>

        </div>
    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->

</body>
