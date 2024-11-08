<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="top-bg" style="background-image: url(/publishing/mobile-en/dist/img/business/ngs-bg.png);">
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
            <h2 class="font-h1">GEM</h2>
            <div class="btn-wrap"><a href="#tab_anchor" class="btn-service"><span class="sr-only">service</span></a>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <!--동물모델사업부 공통 s -->
            <div class="subject-box">
                <p class="title font-h4">Customized GEM (Genetically Engineered Mouse) services
                    and CRISPR(Clustered Regularly Interspaced Shortb Palindromic Repeats) technologies for genome
                    editing
                </p>
                <p class="subject font-body-h img_bottom">Macrogen produces and supplies genetically engineered mice
                    (GEM) based on CRISPR.</p>
                <div class="img">
                    <img src="/publishing/mobile-en/dist/img/business/img-animal-intro.png" alt="oligoIntro">
                </div>
                <p class="desc font-body">GEM (Genetically Engineered Mouse) is a laboratory mouse that has had certain
                    genes inserted, removed, or modified using gene-editing technologies. Such mice are widely used in
                    biological and medical research to identify the functions of human genes. Macrogen’s main GEM
                    service offers Transgenic Mice and Knock-Out/Knock-In mice. A Transgenic Mouse is one in which a
                    specific gene has been inserted to study the function of that gene. A Knock-Out Mouse is a
                    genetically engineered mouse in which the expression of a target gene has been suppressed by
                    removing a specific gene, and a Knock-In Mouse is a genetically engineered mouse in which the
                    expression of a target gene can be adjusted or explored by modifying a certain gene. Macrogen also
                    offers a wide range of other GEM-related services including mass reproduction, mouse line recovery,
                    embryo freezing and reproduction to live, and KO/TG mouse maintenance. To ensure process efficiency,
                    our genetically engineered mice are produced after a thorough experiment design process with our
                    clients. We provide a customized partial process service to meet various client requirements, and
                    our strict quarantine system ensures that all mice are maintained and supplied in a specific
                    pathogen free (SPF) state.
                    <br><br>
                    CRISPR-Cas9, Macrogen's flagship service, is made by attaching a guide RNA that functions as a guide
                    and Cas9 protein that cuts DNA. In principle, the position to cut and edit the DNA sequence varies,
                    depending on the design of the guide RNA that finds the target DNA. Macrogen is developing gene
                    editing technology with Seoul National University Hospital and the most prestigious research
                    institutes around the world, including the Broad Institute co-founded by MIT (Massachusetts
                    Institute of Technology) and Harvard University. Furthermore, we have secured over 50 CRISPR gene
                    editing technologies owned by the Broad Institute in America.</p>
            </div>
            <!--동물모델사업부 공통 e -->

            <!--네비게이션 바 s-->
            <div class="select-nav-box _content-anchor" id="tab_anchor">
                <p class="title font-h4">SERVICE</p>
                <div class="select-box">
                    <div class="selected-value _selected-value">
                        <span class="text">CRISPR Knock-In/Out</span>
                    </div>
                    <ul class="select-option _select-option">
                        <li class="option-value active" onclick="setTabContent(0)" id="crispr"><a href="#">CRISPR Knock-In/Out</a></li>
                        <li class="option-value" onclick="setTabContent(1)" id="gem"><a href="#">Genetically Engineered Mouse</a></li>
                        <li class="option-value" onclick="setTabContent(2)" id="mass"><a href="#">Mass Reproduction</a></li>
                        <li class="option-value" onclick="setTabContent(3)" id="additional"><a href="#">Additional</a></li>
                    </ul>
                </div>

            </div>
            <!--네비게이션 바 e-->

            <!--컨텐츠 내용 s-->
            <div class="info-box-wrap tab-content">
                <!--CRISPR Knock-In/Out s-->
                <div class="info-box show">
                    <!--content-anchor s-->
                    <div class="content-anchor">
                        <div class="selected-value _anchor-value">
                            <span class="text">CRISPR gRNA Synthesis</span>
                        </div>
                        <ul class="anchor-option">
                            <!--v0.11 줄바꿈 이슈-->
                            <li class="anchor-value" onclick="TitleMove('target1')"><a href="#">CRISPR gRNA Synthesis</a></li>
                            <li class="anchor-value" onclick="TitleMove('target2')"><a href="#">CRISPR Validated gRNA</a></li>
                            <li class="anchor-value" onclick="TitleMove('target3')"><a href="#">CRISPR gRNA Plasmid</a>
                            </li>
                            <li class="anchor-value" onclick="TitleMove('target4')"><a href="#">CRISPR KI/KO Mouse</a>
                            </li>
                        </ul>
                    </div>
                    <!--content-anchor e-->
                    <p class="font-h4 main-title">CRISPR Knock-In/Out</p>
                    <p class="subject font-body-h-b">We produce and supply KI/KO mice quickly at low cost based on
                        CRISPR (Clustered Regularly Interspaced Short Palindromic Repeats).</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-animal-crispr.png" alt="CRISPR Knock-In/Out">
                    </div>
                    <hr class="divider">
                    <div class="section-anchor"><p class="sub-title font-h5" id="target1">CRISPR gRNA Synthesis</p>
                        <p class="desc font-body">We supply gRNA design, gRNA synthesis, and synthesized gRNA for
                            specific
                            genes. CRISPR/Cas9 is considered as the most advanced technology to modify/edit genes, and
                            Macrogen synthesizes and provides CRISPR gRNA that researchers need. This allows them
                            directly
                            perform corrections of such genes as KO or KI on cells. Macrogen is developing gene editing
                            technology with Seoul National University Hospital and the most prestigious domestic and
                            overseas research institutes, including the Broad Institute co-founded by MIT (Massachusetts
                            Institute of Technology) and Harvard University. We have also managed to secure more than 50
                            CRISPR gene editing technologies owned by the Broad Research Institute in the United States,
                            and
                            exclusively introduced the "drug-induced CRISPR-Cas9 recombination vector technology”
                            developed
                            by Professor Lee Eun-Joo and Kim Hyo-Soo from the Cell Therapy Commercialization Center at
                            Seoul
                            National University Hospital. The Macrogen GEM Division searches for and delivers gRNA
                            candidates that meet the researcher's needs for free.</p></div>
                    <hr class="divider">
                    <div class="section-anchor"><p class="font-h5 sub-title" id="target2">CRISPR Validated gRNA</p>
                        <p class="desc font-body">We supply gRNA design, gRNA synthesis, and activity-measured gRNA for
                            specific genes.</p></div>
                    <hr class="divider">
                    <div class="section-anchor"><p class="font-h5 sub-title" id="target3">CRISPR gRNA Plasmid</p>
                        <p class="desc font-body list_bottom">We supply gRNA design for specific genes, gRNA synthesis
                            by
                            producing one selected gRNA as plasmid. CRISPR/Cas9 is currently the most advanced
                            technology
                            for modifying and correcting genes, and the Macrogen GEM Division provides CRISPR Grna
                            needed by
                            researchers in plasmid form so that they can directly conduct gene editing such as KO or KI
                            in
                            cells.</p>
                        <div class="list-area">
                            <p class="font-body-h-b title">Service</p>
                            <ul class="list-circle-dot img_bottom">
                                <li><p>Co-expression of GRNA and Cas9</p></li>
                                <li><p>Continuous use through DNA prep.</p></li>
                                <li><p>Include EGFP or PuroR as selection markers</p></li>
                                <li><p>Single-cutting or double-cutting available</p></li>
                            </ul>
                        </div>
                    </div>
                    <hr class="divider">
                    <div class="section-anchor"><p class="font-h5 sub-title" id="target4">CRISPR KI/KO Mouse</p>
                        <p class="desc font-body list_bottom">We provide Knock-In and Knock-Out mouse production
                            services
                            based on CRISPR (Clustered Regularly Interspaced Short Palindromic Repeats). CRISPR gene
                            editing
                            is used on KI (Knock-In Mouse) and KO (Knock-Out Mouse) in a more efficient way. The KI
                            refers
                            to mice in which another gene is expressed, instead of the original gene, by inserting and
                            removing a specific gene. KO refers to those mice in which the expression of a gene is
                            suppressed by removing a specific gene. As a result, researchers can use KO or KI mice to
                            observe gene function in living creatures.
                        </p>
                        <div class="list-area img_bottom">
                            <p class="font-body-h-b title">Service</p>
                            <ul class="list-circle-dot">
                                <li><p>Macrogen produces and supplies KI/KO mice in a shorter time frame and at a lower
                                    cost
                                    based on the CRISPR system that simplified the existing testing process.</p></li>
                                <li><p>We take care of the entire process of mouse production and delivery with only the
                                    name of the gene specified.</p></li>
                            </ul>
                        </div>
                        <div class="border-gray-box">
                            <div class="img">
                                <img src="/publishing/mobile-en/dist/img/business/img-crisper_kiko_mouse.png" alt="CRISPR KI/KO Mouse">
                                <span class="btnZoom-1"><i class="icon ico-zoom-white"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:mouse@macrogen.com"
                                                    class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="mailto:mouse@macrogen.com" class="btn btn-light"><span>Quotation</span></a></div>
                        <div class="btn-wrapper"><a href="mailto:mouse@macrogen.com" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>Order</span></a></div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col disabled"><i class="icon ico-left-black"></i><span
                                        class="font-body-h-b">Prev</span></div>
                                <div class="col" onclick="setTabContent(1)"><span class="font-body-h-b">Next</span><i
                                        class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                    <script>

                    </script>
                </div>
                <!--CRISPR Knock-In/Out e-->

                <!--Genetically Engineered Mouse s-->
                <div class="info-box">
                    <p class="font-h4 main-title">Genetically Engineered Mouse</p>
                    <p class="subject font-body-h-b">We provide GEM services for the production and supply of
                        genetically engineered mice.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-animal-genetically.png" alt="Genetically Engineered Mouse">
                    </div>

                    <!--content-anchor s-->
                    <div class="content-anchor">
                        <div class="selected-value _anchor-value">
                            <span class="text">Knock-out (KO)</span>
                        </div>
                        <!--v0.11 줄바꿈이슈-->
                        <ul class="anchor-option">
                            <li class="anchor-value" onclick="TitleMove('target5')"><a href="#">Knock-out (KO)</a></li>
                            <li class="anchor-value" onclick="TitleMove('target6')"><a href="#">Conditional Knock-out (cKO) Mouse</a></li>
                            <li class="anchor-value" onclick="TitleMove('target7')"><a href="#">Knock-in (KI) Mouse</a></li>
                            <li class="anchor-value" onclick="TitleMove('target8')"><a href="#">Transgenic (TG) Mouse</a></li>
                        </ul>
                    </div>
                    <!--content-anchor e-->
                    <hr class="divider">
                    <!--v0.11 section-anchor 추가-->
                    <div class="section-anchor"><p class="sub-title font-h5" id="target5">Knock-out (KO)</p>
                        <p class="desc font-body">This is a mouse production service in which a specific gene has been
                            removed. KO (knock-out) is a technology that produces individuals with new traits by
                            removing
                            specific genes. This allows us to understand the function of specific genes in vivo and to
                            identify genetic mutations that are associated with specific diseases. Macrogen has superior
                            expertise and know-how to secure the mice that researchers need, based on extensive
                            experience
                            in the field.</p></div>
                    <hr class="divider">
                    <!--v0.11 section-anchor 추가-->
                    <div class="section-anchor">
                        <p class="font-h5 sub-title" id="target6">Conditional Knock-out (cKO) Mouse</p>
                        <p class="desc list_bottom font-body">This is a GEM service in which specific genes have been
                            conditionally removed. For genes that cannot be knocked out, such as a lethal gene, we
                            provide
                            Conditional KO mice that can be knocked out at certain point by applying the Cre/loxP
                            system. If
                            the function of a specific gene is lethal, then KO mice cannot be produced by simply
                            removing
                            genes. To solve this problem, we produce mice in which a specific gene is conditionally
                            removed
                            so researchers can more precisely analyze the function and role of the gene. Macrogen has
                            superior expertise and know-how to secure the mice that researchers need, based on extensive
                            experience in the field. </p>
                        <div class="list-area">
                            <p class="font-body-h-b title">Service</p>
                            <ul class="list-circle-dot">
                                <li><p>KO mice can be produced for lethal genes</p></li>
                                <li><p>Tissue-specific KO of genes available</p></li>
                            </ul>
                        </div>
                    </div>
                    <hr class="divider">
                    <!--v0.11 section-anchor 추가-->
                    <div class="section-anchor">
                        <p class="font-h5 sub-title" id="target7">Knock-in (KI) Mouse</p>
                        <p class="desc font-body list_bottom">This is a GEM production service in which a specific gene
                            is
                            precisely inserted into the target location. The KI (knock-in) based on ESC (Embryonic Stem
                            Cell) is a GEM production technology that has been proven over the years. Through this
                            method, a
                            specific gene can be inserted at the correct location to ensure that the specific gene is
                            expressed. Furthermore, it is possible to newly identify the role of an unknown gene by
                            using a
                            TAG or injecting a fluorescent gene into an unknown gene. Insertion of a specific gene (KI)
                            allows the role/function of that gene to be identified in mice. Today, the function of human
                            genes can be identified in mice with humanized mice in which human genes are inserted.</p>
                        <div class="list-area">
                            <p class="font-body-h-b title">Service</p>
                            <ul class="list-circle-dot img_bottom">
                                <li><p>Check the function of specific genes through insertion</p></li>
                                <li><p>Create humanized mice with human genes</p></li>
                                <li><p>Identify the function of the mutation through insertion</p></li>
                            </ul>
                        </div>
                    </div>
                    <hr class="divider">
                    <!--v0.11 section-anchor 추가-->
                    <div class="section-anchor"><p class="font-h5 sub-title" id="target8">Transgenic (TG) Mouse</p>
                        <p class="desc font-body list_bottom">This is a mouse production service in which a specific
                            gene is
                            overexpressed. A transgenic mouse is one in which a gene of interest is inserted into the
                            mouse’s genome so that the gene is over-expressed. Clients can choose conventional,
                            inducible,
                            and conditional expression vectors freely, depending on their needs.</p>
                        <div class="list-area-group">
                            <div class="list-area">
                                <p class="font-body-h-b title">Service</p>
                                <ul class="list-circle-dot">
                                    <li><p>The function of the gene can be checked through over-expression.</p></li>
                                    <li><p>This requires lower production cost and shorter production time than regular
                                        KI
                                        mice.</p></li>
                                </ul>
                            </div>
                            <div class="list-area ">
                                <p class="font-body-h-b title img_bottom">Workflow</p>
                                <!--10.05 이미지 경로 변경-->
                                <div class="img">
                                    <img src="/publishing/mobile-en/dist/img/business/img_workflow_level4.png" alt="workflow">
                                </div>
                            </div>
                            <div class="list-area">
                                <p class="font-body-h-b title img">Documents</p>
                                <div class="file-download">
                                    <div class="item">
                                        <i class="icon ico-file-pdf"></i>
                                        <span class="font-body-b">Construction of expression vector.pdf</span>
                                        <a href="#" class="download"><i class="icon ico-download-black"></i></a>
                                    </div>
                                    <div class="item">
                                        <i class="icon ico-file-pdf"></i>
                                        <span class="font-body-b">Purification of Expression vector for microinjection.pdf</span>
                                        <a href="#" class="download"><i class="icon ico-download-black"></i></a>
                                    </div>
                                    <div class="item">
                                        <i class="icon ico-file-pdf"></i>
                                        <span class="font-body-b">Microinjection/Production of founder mouse.pdf</span>
                                        <a href="#" class="download"><i class="icon ico-download-black"></i></a>
                                    </div>
                                    <div class="item">
                                        <i class="icon ico-file-pdf"></i>
                                        <span class="font-body-b">Indentification of the founder(FO).pdf</span>
                                        <a href="#" class="download"><i class="icon ico-download-black"></i></a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:mouse@macrogen.com"
                                                    class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="mailto:mouse@macrogen.com" class="btn btn-light"><span>Quotation</span></a></div>
                        <div class="btn-wrapper"><a href="mailto:mouse@macrogen.com" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>Order</span></a></div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(0)"><i class="icon ico-left-black"></i><span
                                        class="font-body-h-b">Prev</span>
                                </div>
                                <div class="col" onclick="setTabContent(2)"><span class="font-body-h-b">Next</span><i
                                        class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Genetically Engineered Mouse e-->

                <!--Mass Reproduction s -->
                <div class="info-box">
                    <p class="font-h4 main-title">Mass Reproduction</p>
                    <p class="subject font-body-h-b">Macrogen uses IVF (In Vitro Fertilization) technology to offer a
                        mass reproduction service.</p>
                    <p class="desc img_bottom font-body">It is possible to secure the desired number of mice in a short
                        period of time through natural breeding and IVF. Macrogen’s mass reproduction service produces
                        mice necessary for non-clinical studies by using IVF technology to secure large numbers of
                        individuals of the same age (measured in weeks). We also utilize stable embryo transfer
                        technologies and highly efficient IVF methods to provide clients with large numbers of mice of
                        the desired age and quantity in a short period. This allows us to efficiently provide mice
                        necessary for various studies such as those conducted by pharmaceutical laboratories and
                        national research institutions, enabling our clients to obtain non-clinical study results within
                        a short time frame.</p>
                    <div class="border-gray-box">
                        <!--10.05 이미지 경로 변경-->
                        <div class="img">
                            <img src="/publishing/mobile-en/dist/img/business/img-breeding.png" alt="Mass Reproduction">
                            <span class="btnZoom-2"><i class="icon ico-zoom-white"></i></span>
                        </div>
                    </div>
                    <div class="list-area">
                        <p class="font-body-h-b title img_bottom">Workflow</p>
                        <!--10.05 이미지 경로 변경-->
                        <div class="img">
                            <img src="/publishing/mobile-en/dist/img/business/img_workflow_level6.png" alt="workflow">
                        </div>
                    </div>

                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:mouse@macrogen.com"
                                                    class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="mailto:mouse@macrogen.com" class="btn btn-light"><span>Quotation</span></a></div>
                        <div class="btn-wrapper"><a href="mailto:mouse@macrogen.com" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>Order</span></a></div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(1)"><i class="icon ico-left-black"></i><span
                                        class="font-body-h-b">Prev</span>
                                </div>
                                <div class="col" onclick="setTabContent(3)"><span class="font-body-h-b">Next</span><i
                                        class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                    <script>

                    </script>
                </div>
                <!--Mass Reproduction e -->

                <!--Additional s-->
                <div class="info-box">
                    <p class="font-h4 main-title">Additional</p>
                    <p class="subject font-body-h-b">We offer additional testing services in various scales tailored to
                        the needs of our clients.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-animal-additional.png" alt="Additional">
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">Mouse Maintenance</p>
                    <p class="desc list_bottom font-body">Macrogen breeds hetero- and homo-KO/TG mice, and all mice are
                        managed as SPF (Specific Pathogen Free). In addition, F1 mice are finally checked for germline
                        transmission through PCR screening. We also maintain the SPF facilities for easy maintenance of
                        GEM so they do not need to be moved after production, and generations can be reproduced after
                        the selection service. If it is difficult to manage GEM at the client's animal room after
                        production, then they can breed and be kept in the Macrogen animal room indefinitely.</p>
                    <div class="list-area">
                        <p class="font-body-h-b title">Documents</p>
                        <div class="file-download">
                            <div class="item">
                                <i class="icon ico-file-pdf"></i>
                                <span class="font-body-b">Mouse Line Recovery</span>
                                <a href="#" class="download"><i class="icon ico-download-black"></i></a>
                            </div>
                        </div>
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">Embryo freezing & Reproduction to Live</p>
                    <p class="desc font-body">Macrogen operates a GEM bank system while also using cryo-sperm and
                        embryos to provide embryo freezing and reproduction services.
                        If it is difficult to manage disease model mice, then we provide a fertilized egg freezing
                        service where we freeze their fertilized eggs so they can be freely moved and sold. Our
                        technological prowess enables us to offer long-term storage services for our clients’ GEM.</p>
                    <hr class="divider">
                    <p class="font-h5 sub-title">Mouse Line Recovery</p>
                    <p class="desc font-body">This is a service for breeding and maintaining disease model mice at SPF
                        facilities. We provide IVF (In Vitro Fertilization) and ET (Embryo Transfer) services for mice
                        with a low reproducibility or clients who need lineage maintenance of GEM. Our staff at the SPF
                        facilities are in charge of maintaining the cycle and reproduction schedule for clients.
                        Detailed information on mouse management is provided once every three months, so our clients can
                        use the service with confidence.</p>
                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:mouse@macrogen.com"
                                                    class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="mailto:mouse@macrogen.com" class="btn btn-light"><span>Quotation</span></a></div>
                        <div class="btn-wrapper"><a href="mailto:mouse@macrogen.com" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>Order</span></a></div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(2)"><i class="icon ico-left-black"></i><span
                                        class="font-body-h-b">Prev</span>
                                </div>
                                <div class="col disabled"><span class="font-body-h-b">Next</span><i
                                        class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Additional e-->
            </div>


        </div>
    </div>
    <!--컨텐츠 내용 e-->
    <!--v0.11 mo-ko랑 싱크 비즈니스 스크립트 추가-->
    <!--비즈니스 스크립트 리펙토링 s-->
<script>
    /*변수*/
    var selectBox = $(".select-box");
    var option = $(".option-value");

    var contentAnchor = $(".content-anchor");
    var anchorOption = $(".anchor-value");
    var anchor = $("._anchor");
    var offset = anchor.offset();
    var infoSectionList = [];


    function onClickSelectBox() {
        // console.log('onClickSelectBox');
        /*드롭다운 클릭시 이벤트*/
        selectBox.on('click', function () {
            var select = $(this);
            if (select.hasClass('open')) {
                select.removeClass("open").children('.select-option').slideUp(200).removeClass("open");
            } else {
                select.addClass("open").children('.select-option').slideDown(200).addClass("open");

            }
        });
    }

    function onClickSelectOption() {
        // console.log('onClickSelectOption');
        /*클릭시 탭메뉴 변경*/
        option.on('click', function () {
            $(this).addClass('active').siblings().removeClass('active')
            var idx = $(this).index();
            var $info = $(".info-box-wrap > div");
            $info.addClass('show').siblings().removeClass('show');
            $info.eq(idx).addClass('show').siblings().removeClass('show');
            textChange($(this));
            setInfoSectionList($(this).text())
        })
    }

    function onClickBody() {
        $('body').on('click', function (e) {
            if (selectBox.hasClass('open')) {
                if (!selectBox.has(e.target).length) {
                    selectBox.removeClass("open").next('._dropdown').slideUp(200).removeClass("open");
                }
            }
            if (!selectBox.has(e.target).length) {
                selectBox.removeClass("open").children('.select-option').slideUp(200);
            }
        })
    }

    /*클릭시 텍스트 변경*/
    function textChange(target) {
        var select = target.find('a').text();
        $('._selected-value').find('span').text(select);
    }

    /*이전 다음 이동*/
    function setTabContent(idx) {
        var $Select = $('._select-option li');
        var $Selected = $('._selected-value');
        var $info = $(".info-box-wrap > div");
        var change = $(".option-value");

        console.log(change);
        <!--탭메뉴 클릭시 페이지 변경-->
        $Selected.text($Select.eq(idx).text());
        $info.addClass('show').siblings().removeClass('show');
        $info.eq(idx).addClass('show').siblings().removeClass('show');

        change.eq(idx).addClass('active').siblings().removeClass('active');

        setInfoSectionList($Select.eq(idx).text())
        /*페이지 변경후 상단 이동*/
        fnMove();

    }

    /*탭메뉴 상단으로 이동*/
    function fnMove() {
        var offset = $("._content-anchor").offset();
        $('html, body').animate({scrollTop: offset.top - 95}, 100);
    }

    /*특정위치 show & hide*/
    function fnMousewheel() {
        var lastScroll = 0;
        var listPos = $('.info-box').offset().top;
        $(window).on('scroll', function (e) {
            let offset = $(this).scrollTop();
            console.log(offset);

            if (offset > lastScroll){
                // console.log('down')
                if (offset > listPos) {
                    contentAnchor.show().css({'position': 'fixed','top':'0px'});
                }
                else {
                    contentAnchor.hide();
                }
            } else {
                // console.log('up')
                if (offset > listPos) {
                    contentAnchor.show().css({'position': 'fixed','top':'70px'});
                }
                else {
                    contentAnchor.hide();
                }
            }
            lastScroll = offset;



            /*v0.10 스크립트 변경 s*/

            /*스크롤 변경시 텍스트 변경 및 칼러값 추가 */
            var title;
            for (
                let i = 0; i < infoSectionList.list.length; i++) {
                var item = infoSectionList.list[i]
                var title = item.title
                writeText(title)
                ChangeColor(title)

                if (offset > item.offset) {
                    // console.log(i);
                    title = item.title

                    break
                }
            }
            writeText(title)
            ChangeColor(title)
        });

        /*v0.10 스크립트 변경 e*/
    }


    /**
     * Anchor 글씨 쓰기
     * @param text
     */
    function writeText(text) {
        $('._anchor-value .text').text(text)
    }

    function ChangeColor(title){
        console.log(title);
        $(".anchor-value a").css({
            'color' : '#454545',
            'font-weight' : 'normal'
        });
        $(".anchor-value a:contains(" + title + ")").css({
            'color' : '#2E87EF',
            'font-weight' : 'bold'
        });
    }







    function setInfoSectionList(tit) {

        writeText(tit);

        infoSectionList = {
            title: tit,
            list: [],
        }
        $('.info-box.show').find('.section-anchor').each(function (index) {
            // console.log(i)
            let top = $(this).offset().top - 75;
            // console.log(top);
            let title = $(this).find('.sub-title').text();
            infoSectionList.list.unshift({
                index: index,
                offset: top,
                title: title
            })

        })
        // console.log(infoSectionList);
    }

    /*드롭다운 클릭시 이벤트*/
    function onClickFixedAnchor() {
        contentAnchor.on('click', function () {
            var select = $(this);
            if (select.hasClass('open')) {
                select.removeClass("open").children('.anchor-option').slideUp(200).removeClass("open");
            } else {
                select.addClass("open").children('.anchor-option').slideDown(200).addClass("open");

            }
        });
        $('body').on('click', function (e) {
            if (contentAnchor.hasClass('open')) {
                if (!contentAnchor.has(e.target).length) {
                    contentAnchor.removeClass("open").children('.anchor-option').slideUp(200).removeClass("open");
                }
            }
        })
        /*클릭시 텍스트 변경*/
        anchorOption.on('click', function () {
            var select = $(this).find('a').text();
            writeText(select)
        });
    }

    /*클릭시 페이지 이동 이동*/
    function TitleMove(target) {
        var id = $('#' + target);
        var offset = id.offset();
        $('html, body').animate({scrollTop: offset.top - 60}, 300);
    }


    function init() {
        onClickSelectBox();
        onClickSelectOption();
        onClickBody();
        onClickFixedAnchor();
        fnMousewheel();
        setInfoSectionList($('._selected-value span').text())
    }

    init()

	// location.hash // 20230502
    if(location.hash != "#none") {    	
   		//var loadtab = $('._select-option .option-value').filter(location.hash);
   		//loadtab.click();	// tab content view
   		//setTabContent(loadtab.index());	// scroll 이동
   		
   		var loadtab = $('._select-option .option-value').filter(location.hash);
   		// option click, business.js line 22 function onClickSelectOption
   		loadtab.addClass('active').siblings().removeClass('active')
        var idx = loadtab.index();
        var $info = $(".info-box-wrap > div");
        $info.addClass('show').siblings().removeClass('show');
        $info.eq(idx).addClass('show').siblings().removeClass('show');
        textChange(loadtab);
        setInfoSectionList(loadtab.text())
        // scroll 이동
        setTabContent(loadtab.index());    		
    }
		
    $(window).on("hashchange",function () { 
    	 if(location.hash != "#none"){
      	location.reload();
    	 }

    });
    
</script>
<!--비즈니스 스크립트 리펙토링 e-->

    <!--v0.7 tost-popup 추가-->
    <div class="toast-popup">
        <p>You can enlarge it by clicking on the image.</p>
    </div>
    <!--modalImageViewer1 s-->
    <div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer1" data-bs-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
                <a href="#" class="btn-close"><span class="sr-only">Close</span></a>
                <div class="parent">
                    <div class="panzoom"><img src="/publishing/mobile-en/dist/img/business/img-crisper_kiko_mouse.png" alt="줌이미지"></div>
                </div>
            </div>
        </div>
    </div>
    <script>
        // modal show
        var modalImageViewer1 = new bootstrap.Modal(document.getElementById('modalImageViewer1'));
        // zoom
        var el = document.querySelector('.panzoom');
        // new PinchZoom.default(el, {});
        // modal close
        $('.btn-close').on('click', function () {
            modalImageViewer1.hide();
            hideToastPopup();
        })

        // modal open
        $('.btnZoom-1').on('click', function () {
            modalImageViewer1.show();
            showToastPopup();
        })

        // toast popup
        function showToastPopup() {
            $('.toast-popup').addClass('active');
            setTimeout(hideToastPopup, 2000);
        }

        function hideToastPopup() {
            $('.toast-popup').removeClass('active');
        }
    </script>
    <!--modalImageViewer1 s-->

    <!--modalImageViewer2 s-->
    <div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer2" data-bs-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
                <a href="#" class="btn-close"><span class="sr-only">Close</span></a>
                <div class="parent">
                    <div class="panzoom"><img src="/publishing/mobile-en/dist/img/business/img-breeding.png" alt="줌이미지"></div>
                </div>
            </div>
        </div>
    </div>
    <script>
        // modal show
        var modalImageViewer2 = new bootstrap.Modal(document.getElementById('modalImageViewer2'));
        // zoom
        var el = document.querySelector('.panzoom');
        // new PinchZoom.default(el, {});
        // modal close
        $('.btn-close').on('click', function () {
            modalImageViewer2.hide();
            hideToastPopup();
        })

        // modal open
        $('.btnZoom-2').on('click', function () {
            modalImageViewer2.show();
            showToastPopup();
        })

        // toast popup
        function showToastPopup() {
            $('.toast-popup').addClass('active');
            setTimeout(hideToastPopup, 2000);
        }

        function hideToastPopup() {
            $('.toast-popup').removeClass('active');
        }
    </script>
    <!--modalImageViewer2 s-->

</body>
