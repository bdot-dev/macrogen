<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
    <div class="top-bg">
        <header class="header">
    <div class="inner">
        <h1 class="logo"><a href="/en">마크로젠 로고</a></h1>
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
            <h2 class="font-h1">Oligo</h2>
            <!-- <div class="btn-wrap"><a href="#tab_anchor" class="btn-service"><span class="sr-only">SERVICE</span></a></div> -->
        </div>
    </div>
    <div class="container oligo_sec"> 
        <div class="section_business">
            <!--Oligo 공통 s -->
            <div class="subject-box">
                <p class="title font-h4">Macrogen offers high-quality and quick Oligo at a reasonable price using a state-of-the-art automated system.</p>
                <p class="subject font-body-h img_bottom">We will continue to take the lead in technological innovation in the fields of biology and medicine by providing high-quality Oligo through Personalized Oligo Production</p>
                <!--10.05 이미지 경로 변경-->
                <div class="img">
                    <img src="/publishing/mobile-en/dist/img/business/img-oligo-intro.png" alt="oligoIntro">
                </div>
                <p class="desc font-body">Macrogen offers an oligo synthesis service at various scales using high-quality materials and an optimized process. This is a tailored service that provides various oligoes synthesized to the sequence required by the client. The synthesized oligos are used in various biology and medical fields such as DNA sequencing, PCR, SNP study, gene synthesis, NGS service, qPCR service, biochip, and siRNA expression. Macrogen uses superior materials and an automation system to provide high-quality oligos, and offers MOPC purification for all oligos free of charge. MOPC purification, an independently developed cartridge purification method, has efficiency similar to that of HPLC and PAGE purification. Furthermore, all oligos are subject to a quality control process using MALDI-TOF, and a set quantity of oligos are provided through an automatic dispensing system to ensure their quality and more convenient test conditions for clients. The synthesized oligos are also provided with result reports.</p>
            </div>
            <!--Oligo 공통 e -->

            <!--Oligo 탭 네비 s-->
            <div class="select-nav-box _content-anchor" id="tab_anchor">
            	<div class="select-tab-tit-box">
            		<div class="select_tit active" id="dna">DNA</div>
            		<div class="select_tit" id="rna">RNA</div>
            		<div class="select_tit" id="peptide">Peptide</div>
            	</div>
                <p class="title font-h4">Oligo Synthesis</p> 
                <div class="select-box DNA active">
                    <div class="selected-value _selected-value">
                        <span class="text">Standard Oligo</span>
                    </div>
                    <ul class="select-option _select-option">
                        <li class="option-value active"><a href="#">Standard Oligo</a></li>
                        <li class="option-value"><a href="#">Modified Oligo</a></li>
                        <li class="option-value"><a href="#">Premade Oligo</a></li>
                        <li class="option-value"><a href="#">Plate Oligo</a></li>
                        <li class="option-value"><a href="#">Duplex Oligo</a></li>
                        <li class="option-value"><a href="#">RAPD Kits</a></li>
                    </ul>
                </div>
                <div class="select-box RNA">
                    <div class="selected-value _selected-value">
                        <span class="text">Single Strand RNA</span>
                    </div>
                    <ul class="select-option _select-option">
                        <li class="option-value active"><a href="#">Single Strand RNA</a></li>
                        <li class="option-value"><a href="#">Double Strand RNA</a></li>
                    </ul>
                </div>
                <div class="select-box Peptide">
                    <div class="selected-value _selected-value">
                        <span class="text"></span>
                    </div>
                    <ul class="select-option _select-option">
                        <li class="option-value active"></li>
                    </ul>
                </div>
            </div>
            <!--Oiigo 탭 네비 e-->

            <!--DNA 탭 메뉴 s-->
            <div class="info-box-wrap tab-content DNA active">
                <!--Standard Oligo-->
                <div class="info-box show">
                    <p class="font-h4 main-title">Standard Oligo</p>
                    <p class="subject font-body-h-b">Standard oligo service is provided by synthesizing oligo used in various tests into the sequence as demanded by the client.</p>
                    <p class="desc font-body img_bottom">Macrogen's oligo synthesis service uses an unmatched automation system that is developed independently to quickly provide the entire process from synthesis to purification and dispensing, while supporting LIMS, an online ordering system that can monitor the entire process from order to delivery. The quality of all oligos is controlled through MALDI-TOF mass spectrometry.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-oligo-standard.png" alt="Standard Oligo cffnb">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>50 nmole, 200 nmole, and 1 umole scales are available.</p></li>
                                <li><p>Delivery within 24 hours after order (delivered by sales personnel / 50 mer or less / order before 5:00pm)</p></li>
                                <li><p>Accurate concentration provided by the automatic distribution system</p></li>
                                <li><p>Order, synthesis, delivery and result check based on LIMS (Laboratory Information Management System)</p></li>
                            </ul>
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper">
                            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>Quotation</span></a>
                        </div>
                        <div class="btn-wrapper">
                         <a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i class="icon ico-cart-white"></i><span>Order</span></a>
                        </div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col disabled"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
                                <div class="col" onclick="setTabContent(1)"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Modified Oligo-->
                <div class="info-box">
                    <p class="font-h4 main-title">Modified Oligo</p>
                    <p class="subject font-body-h-b">This is an oligo service that is provided in the form of a special material bonded to the 3' and 5', internal, or both ends of the standard oligo.</p>
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-oligo-modified.png" alt="Modified Oligo">
                    </div>
                    <p class="desc font-body">The Modified Oligo service is conducted independently. Modified oligos including fluorescent dyes, non-fluorescent modifications, dark quenchers, and internal modification are synthesized on a daily basis to facilitate rapid test conditions. Additionally, the status of oligo production can be checked through the order page, and all modified oligos that are synthesized go through the complete quality control process using MALDI-TOF to ensure reliable quality.</p>
                    <div class="btn-area">
                        <div class="btn-wrapper">
                            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>Order</span></a>
                        </div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(0)"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
                                <div class="col" onclick="setTabContent(2)"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Premade Oligo-->
                <div class="info-box">
                    <p class="font-h4 main-title">Premade Oligo</p>
                    <p class="subject font-body-h-b">Premade oligo is produced by the PAGE purification of Universal Oligo and delivered immediately upon order.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-oligo-premade.png" alt="Premade Oligo">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>5nmol of ≥ 95&#37; pure primer(PAGE Purification).</p></li>
                                <li><p>MALDI-TOF QC</p></li>
                                <li><p>Purification checked with HPLC</p></li>
                                <li><p>70 types of primers for sequencing, 17 types of primers for identification of microorganisms, 5 types of random primers</p></li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="desc font-body">Macrogen provides premade oligo with a high level of purity through PAGE. It includes 70 types of primers for sequencing, 17 types of primers for identification of microorganisms, and 5 types of random primers so that the Universal Oligo, which is basically used for various tests, can be prepared in advance and delivered quickly. Furthermore, all synthesized oligos undergo 100% quality control process using MALDI-TOF to ensure reliable quality.
                            </p>
                        </div>
                    </div>

                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>Order</span></a></div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(1)"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
                                <div class="col" onclick="setTabContent(3)"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Plate Oligo-->
                <div class="info-box">
                    <p class="font-h4 main-title">Plate Oligo</p>
                    <p class="subject font-body-h-b">We provide oligos in the form of 96-well plates.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-oligo-plate.png" alt="Plate Oligo">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>50 nmole, 200 nmole, and 1 umole scales are available.</p></li>
                                <li><p>Only MOPC can be selected for purification.</p></li>
                                <li><p>Liquid Handling System ensures an accurate level of concentration.</p></li>
                                <li><p>Order, synthesis, delivery and result check based on LIMS (Laboratory Information Management System)</p></li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="desc font-body">The Plate Oligo service is provided by drying the oligo while it is on a deep-well plate for easier and more convenience use for tests.  When drying oligos, an independently developed drying system is used, and all synthesized oligos undergo 100% quality control process using MALDI-TOF to ensure more reliable quality.</p>
                        </div>

                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>Order</span></a></div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(2)"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
                                <div class="col" onclick="setTabContent(4)"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Duplex Oligo-->
                <div class="info-box">
                    <p class="font-h4 main-title">Duplex Oligo</p>
                    <p class="subject font-body-h-b">Duplex Oligo (Annealing service) is a service that provides two=complementary single strand DNA in the form of a double strand DNA.</p>
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-oligo-duplex.png" alt="Duplex Oligo">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>50 nmole, 200 nmole, and 1 umole scales are available.</p><li>
                                <li><p>Liquid Handling System ensures an accurate level of concentration.</p></li>
                                <li><p>Order, synthesis, delivery and result check based on LIMS (Laboratory Information Management System)</p></li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="desc font-body">The Duplex Oligo service provides two complementary single strand DNA in the form of a combined strand of DNA through an annealing process. The service is available up to 130bp for standard oligo and up to 60bp for modified oligo. The synthesis and annealing process undergoes quality control process twice before delivery to the client.</p>
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>Order</span></a></div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(3)"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
                                <div class="col" onclick="setTabContent(5)"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--RAPD Kits-->
                <div class="info-box">
                    <p class="font-h4 main-title">RAPD Kits</p>
                    <p class="subject font-body-h-b">RAPD Kits is a service that provides 20 individual 10 mer oligos for various types of research efforts and studies such as genetic mapping
                        and DNA fingerprinting.
                    </p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-oligo-rapdkit.png" alt="RAPD Kits">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>10nmol of ≥ 95&#37; pure primer(PAGE Purification)</p></li>
                                <li><p>MALDI TOF QC</p></li>
                                <li><p>60 types of RAPD 10 mer KIT</p></li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="desc font-body">RAPD (Random Amplified Polymorphic DNAs) Kits uses small oligos of about 10bp for amplifying only genomic regions aligned by two gene sequences. Macrogen has a total of 60 sets of RAPD Kits, and provides a high level of purity through PAGE. Furthermore, all synthesized oligos undergo MALDI QC to ensure reliable quality.</p>
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
                        <div class="btn-wrapper">
                            <a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i class="icon ico-cart-white"></i>
                                <span>Order</span></a>
                        </div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(4)"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
                                <div class="col disabled"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- DNA 탭 메뉴 e -->
            <!-- RNA 탭 메뉴 s -->
            <div class="info-box-wrap tab-content RNA">
                <!--Single Strand RNA-->
                <div class="info-box show">
                    <p class="font-h4 main-title">Single Strand RNA</p>
                    <p class="subject font-body-h-b">Single Strand RNA service is a service that synthesizes Oligo used in various experiments with a sequence designed by the customer.</p>
                    <p class="desc font-body img_bottom">Macrogen's RNA Oligo synthesis service uses high-quality raw materials to carry out its own synthesis and provides high-purity RNA Oligos through HPLC purification. In addition, we systematically manage all processes from ordering to delivery, and manages the quality of all oligos through MALDI-TOF mass spectrometry.</p>
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-oligo-single-strand.png" alt="Single Strand RNA">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>Yield : 10nmol, 30nmol, 50nmol</p></li>
                                <li><p>Purification : Cartridge, HPLC</p></li>
                            </ul>
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper">
                            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>Quotation</span></a>
                        </div>
                        <div class="btn-wrapper">
                         <a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i class="icon ico-cart-white"></i><span>Order</span></a>
                        </div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col disabled"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
                                <div class="col" onclick="setTabContent(7)"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Double Strand RNA-->
                <div class="info-box">
                    <p class="font-h4 main-title">Double Strand RNA</p>
                    <p class="subject font-body-h-b">Double Strand RNA (Annealing service) is a service that provides two complementary Single Strand RNAs designed by yourself in the form of a single Double Strand RNA.</p>
                    <p class="desc font-body img_bottom">Double Strand RNA is provided in the form of a combined oligo of two oligos of complementary sequences through an annealing process. Double strand RNA service is available up to 50 bp, and is provided to customers through two rounds of QC in the synthesis and annealing process.</p>
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-oligo-double-strand.png" alt="Double Strand RNA">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>Yield : 10nmole, 30nmole, 50nmol</p></li>
                                <li><p>Purification : Cartridge, HPLC</p></li>
                            </ul>
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper">
                            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>Order</span></a>
                        </div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(6)"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
                                <div class="col disabled"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- RNA 탭 메뉴 e -->
            <!-- Peptide 탭 메뉴 s -->
            <div class="info-box-wrap tab-content Peptide">
                <!--Peptide-->
                <div class="info-box show">
                    <p class="font-h4 main-title">Peptide Synthesis</p>
                    <!-- <p class="subject font-body-h-b">Peptide synthesis service is provided by synthesizing a sequence designed by the customer for use in various studies.</p> -->
                    <p class="desc font-body img_bottom">
                    	Peptide synthesis service is provided by synthesizing a sequence designed by the customer for use in various studies.<br/><br/>
                   		Macrogen's peptide synthesis service proceeds with synthesis using high-quality raw materials, and provides samples of desired purity through HPLC purification. In addition, we systematically manage all processes from ordering to delivery and provide high-quality peptides through MALDI-TOF mass spectrometry and HPLC analysis.<br /><br />
						By synthesizing a wide range of peptides, it is possible to manufacture basic custom peptides, difficult modified peptides such as cyclic peptides and glyco peptides, and structure-based peptides. Sufficient consultation is conducted before the start of synthesis, and the situation is informed step by step until shipment, so that the experiment schedule can be managed smoothly.
                   	</p>
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img-oligo-peptide.png" alt="Peptide Synthesis">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>Amount : 3mg, 6mg</p></li>
                                <li><p>Purity : &lt;85%, &lt;90%, &lt;95%</p></li>
                                <li><p>Provide product via HPLC purification</p></li>
                                <li><p>Provides high-quality peptides through the QC process of MALDI TOF and HPLC analysis</p></li>
                                <li><p>Modification : Biotin, Phosphorylation, Disulfied Bond, FITC, TAMRA, CY3, CY5, Dabcyl, Dansyl, Cyclization, EDANS, K(Me), K(Me)2, K(ME)3, K(AC), Ser/Thr(Gal-GalNAc)</p></li>
                                <li><p>If you want to synthesize more than that, please contact [oligo@macrogen.com] and inform us after confirming whether synthesis is possible</p></li>
                            </ul>
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper">
                            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/eng" target="_blank" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>Order</span></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Peptide 탭 메뉴 e -->
        </div>
    </div>
    <!--v0.11 mo-ko랑 싱크 비즈니스 스크립트 추가-->
    <!--비즈니스 스크립트 리펙토링 s-->
<script>
    /*변수*/
    var selectBox = $(".select-box");
    var option = $(".option-value");
    var tabTitle = $(".select_tit")

    var contentAnchor = $(".content-anchor");
    var anchorOption = $(".anchor-value");
    var anchor = $("._anchor");
    var offset = anchor.offset();
    var infoSectionList = [];
    
    function onClickTabTitle() {
    	/* 탭 타이틀 클릭시 이벤트 */
    	tabTitle.on('click', function() {
    		var idx = $(this).index(); 
    		$(this).addClass('active').siblings().removeClass('active');
    		
    		if($(this).text() === 'DNA') {
    			$('.select-box.DNA').addClass('active').siblings().removeClass('active');
    			$('.info-box-wrap').eq(idx).addClass('active').siblings().removeClass('active');
    			$('.select-box.DNA .option-value').eq(0).trigger('click');
    			$('.select-nav-box .title.font-h4').css('display', 'block');
    			$('.oligo_sec .select-nav-box').css('margin-bottom', '56px');
    		}
    		else if ($(this).text() === 'RNA') {
    			$('.select-box.RNA').addClass('active').siblings().removeClass('active');
    			$('.info-box-wrap').eq(idx).addClass('active').siblings().removeClass('active');
    			$('.select-box.RNA .option-value').eq(0).trigger('click');
    			$('.select-nav-box .title.font-h4').css('display', 'block');
    			$('.oligo_sec .select-nav-box').css('margin-bottom', '56px');
    		}
    		else if ($(this).text() === 'Peptide') {
    			$('.select-box.Peptide').addClass('active').siblings().removeClass('active');
    			$('.info-box-wrap').eq(idx).addClass('active').siblings().removeClass('active');
    			$('.select-box.Peptide .option-value').eq(0).trigger('click');
    			$('.select-box.Peptide').css('display', 'none');
    			$('.select-nav-box .title.font-h4').css('display', 'none');
    			$('.oligo_sec .select-nav-box').css('margin-bottom', '26px');
    			$('.info-box-wrap .main-title').css('margin-bottom', '20px');
    		}
    	});
    }


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
        option.on('click', function (event) {
        	event.stopPropagation();
            $(this).addClass('active').siblings().removeClass('active')
            var idx = $(this).index('.option-value');
            var $info = $(".info-box-wrap > div");
            $info.addClass('show').siblings().removeClass('show');
            $info.eq(idx).addClass('show').siblings().removeClass('show');
            textChange($(this));
            setInfoSectionList($(this).text());
            if(selectBox.hasClass('open')) selectBox.removeClass('open').children('.select-option').slideUp(200).removeClass('open');
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
        var $Selected = $('._selected-value span');
        var $info = $(".info-box-wrap > div");
        var change = $(".option-value");

        
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
    	onClickTabTitle();
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
    	
   		var loadtab = $('.select-tab-tit-box .select_tit').filter(location.hash);
   		setTabContent(loadtab.index());
   		loadtab.click();	

    }
		
    $(window).on("hashchange",function () { 
    	if(location.hash != "#none"){
        	location.reload(); 		
    	}

    });

</script>
<!--비즈니스 스크립트 리펙토링 e-->

</body>
