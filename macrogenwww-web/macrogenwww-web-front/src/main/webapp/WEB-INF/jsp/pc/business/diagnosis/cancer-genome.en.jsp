<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<body>	
	<div class="wrap">
		<div class="full-bg business_bg bg-type2">
		    <!--header 수정시 메인 header 같이 수정해주세요-->
			<header class="header" id="header">
				<c:import url="/inc/header-inner-gnb" />
			</header>
			<div class="frame frameB">
	            <nav aria-label="breadcrumb">
	                <ol class="breadcrumb breadcrumb-white">
	                    <li class="breadcrumb-item">Home</li>
	                    <li class="breadcrumb-item">SERVICE</li>
	                    <li class="breadcrumb-item">Clinical Services</li>
	                    <li class="breadcrumb-item">Genetic testing for cancer risk</li>
	                </ol>
	            </nav>
	            <div class="hero-title">Genetic testing for cancer risk</div>
	            <a href="#_tab-box" class="btn btn-round btn-service">
	                <span>SERVICE</span>
	                <i class="icon icon-arrow-bottom-short-white"></i>
	            </a>
	        </div>
		</div>

		<div class="container">
	        <link type="text/css" rel="stylesheet" href="/publishing/pc-ko/dist/css/business.css"/>
	        <div class="section_business">
	            <div class="subject-box">
	                <p class="font-h4 title">At Macrogen, we use a variety of highly sensitive NGS tests to analyze genetic mutations associated with cancer, to help with the prevention, early detection and treatment of cancer.</p>
	                <p class="subject info">As cancer is the leading cause of death in Korea, Macrogen offers services to help ward off and address this risk as much as possible. An NGS targeted sequencing panel that is highly customized to each individual is used to screen for, detect and monitor cancers of various types, from those hereditary in nature, to those in their early stages, to those that have progressed or metastasized.</p>
	                <div class="img last"><img src="/publishing/pc-ko/dist/img/business/img_cancer_genome01.png" alt=""/></div>
	            </div>
	            
	            <!--탭 슬라이드-->
	            <div class="tab-box" id="_tab-box">
	                <p class="font-h4 title">SERVICE</p>
	                <div class="slide-tab-wrap">
	                    <div class="swiper-container tab-slide-box _swiperTab">
	                        <div class="swiper-wrapper _swiperTab">
	                            <div class="swiper-slide active" id="cancer"><a href="#">Cancer Panel</a></div>
	                            <div class="swiper-slide" id="hereditary"><a href="#">Hereditary Cancer Panel</a></div>
	                            <div class="swiper-slide" id="brca"><a href="#">BRCA 1/2 Cancer Panel</a></div>
	                            <div class="swiper-slide" id="gastric"><a href="#">Gastric Cancer Panel</a></div>
	                        </div>
	                    </div>
	                    <div class="btn-box">
	                        <a href="#" class="btn btn-circle btn-white btn-sm _slideLeft swiper-button-disabled" tabindex="-1" role="button" aria-label="Previous slide" aria-disabled="true"><i class="icon icon-arrow-left-sm"></i></a>
	                        <a href="#" class="btn btn-circle btn-white btn-sm _slideRight swiper-button-disabled" tabindex="-1" role="button" aria-label="Next slide" aria-disabled="true"><i class="icon icon-arrow-right-sm"></i></a>
	                        <a href="#" class="btn btn-circle btn-black btn-sm _btnMenu"><i class="icon icon-menu-white"></i></a>
	                    </div>
	                    <div class="tab-modal">
	                        <div class="tab-modal-header">
	                            <div class="close-btn _closebtn">
	                                <span></span>
	                                <span></span>
	                            </div>
	                        </div>
	                        <ul class="tab-modal-body">
	                            <li><a href="#" onclick="setTabContent(0)">Cancer Panel</a></li>
	                            <li><a href="#" onclick="setTabContent(1)">Hereditary Cancer Panel</a></li>
	                            <li><a href="#" onclick="setTabContent(2)">BRCA 1/2 Cancer Panel</a></li>
	                            <li><a href="#" onclick="setTabContent(3)">Gastric Cancer Panel</a></li>
	                        </ul>
	                    </div>
	                </div>
	            </div>
	            <!--//탭 슬라이드-->
	
	            <!-- 탭 컨텐츠 -->
	            <div class="info-box-wrap tab-content">
	                <!-- 암 유전자 검사 (Axen™ Cancer Panel) -->
	                <div class="info-box show">
	                    <p class="font-h4 main-title">Cancer Panel</p>
	                    <p class="desc">The Axen™ Cancer Panel is a pan-cancer panel using capture hybridization technology. With better coverage than conventional methods, the Axen™ Cancer Panel is able to effectively detect a wide range of aberration types in exons of genes associated with cancer, including not only SNV and InDel, but also fusion genes, CNV, TMB and MSI. Depending on the desired range of analysis, you can choose among three types of cancer panels, consisting of as few as 88 genes or as many as 559 genes. Both liquid biopsy and tumor biopsy are available for the panels.</p>
	                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_cancer_genome0301_en.png" alt="Tissue biopsy / Liquid biopsy"/></div>
	                    <hr class="divider">
	                    <div class="board">
	                        <div class="navigation">
	                            <div class="content clearfix">
	                                <a href="#" class="item next"onclick="setTabContent(1)"><div class="title">Hereditary Cancer Panel</div></a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //암 유전자 검사 (Axen™ Cancer Panel) -->
	
	                <!-- 유전성 암 감수성 검사 (Axen™ Hereditary Cancer Panel) -->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Hereditary Cancer Panel</p>
	                    <p class="desc">The Axen™ Test for Hereditary Cancer that uses blood samples to screen for some of the most common inherited cancers has been cited in many papers for its unique design that allows for genetic mutations to be effectively checked for, paving the way for early detection of specific cancer syndromes. Specifically, the Axen Test applies a next-generation genome sequencing technique to analyze all at once 69 genes closely linked with hereditary cancers, of which breast cancer and colorectal cancer, are the most widely known.</p>
	                    <div class="cancer_genome_box01">
	                        <div class="font-h8">Which diseases can genetic testing be used for?</div>
	                        <ul>
	                            <li class="cancer_genome0101">
	                                <img src="/publishing/pc-ko/dist/img/business/img_cancer_genome0101_en.png" alt=""/>
	                                <dl>
	                                    <dt>Hereditary breast and ovarian cancer syndrome</dt>
	                                    <dd>This particular cancer syndrome is closely associated with mutations in the genes BRCA1 and/or BRCA2. BRCA1 and BRCA2 mutation carriers, even in the case of a single mutation, have elevated risks of cancer in the pancreas, prostate or skin.</dd>
	                                    <dt>Li-Fraumeni syndrome</dt>
	                                    <dd>Li-Fraumeni syndrome is inherited in an autosomal dominant pattern, which means one copy of the altered gene in each cell is sufficient to increase the risk of developing cancer. Those with Li-Fraumeni syndrome in the family have a genetic predisposition to breast cancer, a form of bone cancer called osteosarcoma, soft tissue sarcomas, leukemias, and adrenocortical carcinoma.</dd>
	                                    <dt>Peutz-Jeghers syndrome</dt>
	                                    <dd>Peutz-Jeghers syndrome is an inherited condition that increases the risk for developing dark-colored spots on the mucous lining of the lips and mouth, fingers and toes, as well as polyps in the digestive tract which can lead to cramping pain in the belly area, blood in the stools and intestinal obstruction. It can also cause cancers in a variety of other organs, including the ovaries, fallopian tubes, breasts, lungs, gallbladder and pancreas.</dd>
	                                </dl>
	                            </li>
	                            <li class="cancer_genome0102">
	                                <img src="/publishing/pc-ko/dist/img/business/img_cancer_genome0102_en.png" alt=""/>
	                                <dl>
	                                    <dt>Cowden syndrome</dt>
	                                    <dd>Cowden syndrome is an inherited disorder characterized by multiple, noncancerous growths on the skin and mucous lining, and increases the risk of benign or malignant tumors in the breasts, uterus and thyroid.</dd>
	                                    <dt>Neurofibromatosis</dt>
	                                    <dd>Neurofibromatosis is a genetic disorder that causes benign tumors of the nerves and coffee-colored patches on the skin.</dd>
	                                </dl>
	                            </li>
	                            <li class="cancer_genome0103">
	                                <img src="/publishing/pc-ko/dist/img/business/img_cancer_genome0103_en.png" alt=""/>
	                                <dl>
	                                    <dt>Familial adenomatous polyposis</dt>
	                                    <dd>Familial adenomatous polyposis is an autosomal dominant inherited disorder characterized by hundreds to thousands of precancerous colorectal polyps. If left untreated, affected individuals inevitably develop cancer of the colon and/or rectum.</dd>
	                                    <dt>Lynch syndrome</dt>
	                                    <dd>Lynch syndrome is an autosomal dominant inherited disorder that makes the individual predisposed to cancer of the colon and/or rectum as well as other specific types of cancer before the age of 50. It is seen more commonly than familial adenomatous polyposis.</dd>
	                                </dl>
	                            </li>
	                            <li class="cancer_genome0104">
	                                <img src="/publishing/pc-ko/dist/img/business/img_cancer_genome0104.png" alt=""/>
	                                <dl>
	                                    <dt>Von Hippel-Lindau syndrome</dt>
	                                    <dd>Von Hippel-Lindau syndrome is an autosomal dominant inherited disorder that causes tumors and cysts to grow in certain parts of the body, including the central nervous system and kidney. The tumors can be either benign or malignant.</dd>
	                                </dl>
	                            </li>
	                            <li class="cancer_genome0105">
	                                <img src="/publishing/pc-ko/dist/img/business/img_cancer_genome0105.png" alt=""/>
	                                <dl>
	                                    <dt>Hereditary retinoblastoma</dt>
	                                    <dd>Hereditary retinoblastoma is a malignant tumor that appears on the retina. Once it reaches a certain size, it can appear as a pronounced white area in the pupil. It most commonly affects young children of around eight months old.</dd>
	                                </dl>
	                            </li>
	                        </ul>
	                    </div>
	                    <div class="reference"><i class="icon01"></i>In addition to screening for genetic mutations that may indicate the afore-mentioned cancers, Macrogen offers analysis of 69 genes closely related to cancer in the breast, ovary, pancreas, prostate, colon, rectum, uterus, stomach, skin, endocrine system, blood, neurological system and the brain, as well as sarcomas.</div>
	                    <hr class="divider">
	                    <div class="board">
	                        <div class="navigation">
	                            <div class="content clearfix">
	                                <a href="#" class="item prev" onclick="setTabContent(0)"><div class="title">Cancer Panel</div></a>
	                                <a href="#" class="item next"onclick="setTabContent(2)"><div class="title">BRCA 1/2 Cancer Panel</div></a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //유전성 암 감수성 검사 (Axen™ Hereditary Cancer Panel) -->
	
	                <!-- BRCA1/2 유전자 검사 (Axen™ BRCA / Axen™ BRCA Premium) -->
	                <div class="info-box">
	                    <p class="font-h4 main-title">BRCA 1/2 Cancer Panel</p>
	                    <p class="desc">Analysis can be done on the full range of the BRCA1/2 gene, well known to its association with an elevated risk for hereditary breast and ovarian cancers. <br>Alternatively, 53 relevant genes, including the BRCA1/2 can be analyzed. For those with a family history of breast cancer or ovarian cancer, selective screening can be conducted to forecast the risk of incidence caused by gene mutations. The thorough and precise analysis and testing conducted by Macrogen on gene mutations in patients diagnosed with cancer also helps in designing the best treatment program tailored to the individual’s needs.</p>
	                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_cancer_genome0201.png" alt=""/></div>
	                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_cancer_genome0202.png" alt=""/></div>
	                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_cancer_genome0203.png" alt=""/></div>
	                    <hr class="divider">
	                    <div class="board">
	                        <div class="navigation">
	                            <div class="content clearfix">
	                                <a href="#" class="item prev" onclick="setTabContent(1)"><div class="title">Hereditary Cancer Panel</div></a>
	                                <a href="#" class="item next"onclick="setTabContent(3)"><div class="title">Gastric Cancer Panel</div></a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //BRCA1/2 유전자 검사 (Axen™ BRCA / Axen™ BRCA Premium) -->
	
	                <!-- 위암 검사 패널(Axen™ Gastric Cancer) -->
	                <div class="info-box">
	                    <p class="font-h4 main-title">Gastric Cancer Panel</p>
	                    <p class="desc">The Axen™ Gastric Cancer Panel was designed to analyze various types of stomach cancer by selectively focusing on genes that are more likely to show mutations in patients of stomach cancer. Particular emphasis is placed on genes associated with specific types of stomach cancer that are most common in Asians or Koreans; Somatic analysis is carried out to detect the intestinal type stomach cancer, which accounts for the majority of stomach cancers. CDH1, ARID1A and RHOA, found to be clinically significant in diffuse-type stomach cancers, are also analyzed as part of the panel, offering broad coverage in detecting stomach cancers including those that are hereditary in nature.</p>
	                    <div class="img"><img src="/publishing/pc-ko/dist/img/business/img_cancer_genome0401.png" alt=""/></div>
	                    <hr class="divider">
	                    <div class="board">
	                        <div class="navigation">
	                            <div class="content clearfix">
	                                <a href="#" class="item prev" onclick="setTabContent(1)"><div class="title">BRCA 1/2 Cancer Panel</div></a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- //위암 검사 패널(Axen™ Gastric Cancer) -->
	                <div class="btn-area">
	                    <a href="mailto:ngsclinic@macrogen.com" target="_blank" class="btn btn-white"><span>Service Inquiry</span></a>
	                </div>
	            </div>
	            <!-- //탭 컨텐츠 -->
	
	            <script>
	                var swiper = new Swiper("._swiperTab", {
	                    slidesPerView: "auto",
	                    spaceBetween: 0,
	                    centeredSlides: false,
	                    watchActiveIndex: true,
	                    slideToClickedSlide: true,
	                    navigation: {
	                        nextEl: "._slideRight",
	                        prevEl: "._slideLeft",
	                    },
	                });
	                var idx = $('._swiperTab .swiper-slide').length;
	                var sum= 0;
	                // slide wrap width
	                for (var j = 0; j < idx; j++) {
	                    sum = sum + $(".swiper-slide:eq("+j+")").outerWidth(true);
	                }
	                $('.swiper-wrapper').css('width',sum);
	                // slide width
	                for (var i = 0; i <= idx; i++) {
	                    var target = $(".swiper-slide:eq("+"i"+")");
	                    var idxWidth = $(".swiper-slide:eq("+"i"+")").outerWidth(true);
	                    target.css('width',idxWidth)
	                }
	                function setTabContent (idx){
	                    $('._swiperTab .swiper-slide').eq(idx).addClass('active').siblings().removeClass('active');
	                    swiper[0].slideTo(idx);
	                    //탭메뉴 클릭시 페이지 변경
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
	                $('._swiperTab .swiper-slide').on('click', function(){
	                    var idx = $(this).index();
	                    setTabContent(idx)
	                });
	                $('.swiper-notification').remove();
	                // 탭모달 스크립트
	                $("._btnMenu").on('click',function() {
	                    $(".tab-modal").show();
	                });
	                $("._closebtn").on('click',function() {
	                    $(".tab-modal").hide();
	                });
	                $(document).mouseup(function (e){
	                    var LayerPopup = $(".tab-modal");
	                    if(LayerPopup.has(e.target).length === 0){
	                        LayerPopup.hide();
	                    }
	                });
	                
	            	 // location.hash // 20230502
	                if(location.hash) {
	                	
	               		var loadtab = $('._swiperTab .swiper-slide').filter(location.hash);
	               		loadtab.click();	// tab content view
	               		setTabContent(loadtab.index());	// scroll 이동
	                }
	           		
	                $(window).on("hashchange",function () { 
	                	location.reload();
	                });
	                
	            </script>
	        </div>
	    </div>
	</div> 
</body>