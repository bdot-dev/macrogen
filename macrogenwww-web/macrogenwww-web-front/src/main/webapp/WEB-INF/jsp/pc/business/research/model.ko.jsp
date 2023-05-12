<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

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
        <li class="breadcrumb-item">연구분석서비스</li>
        <li class="breadcrumb-item">모델동물/크리스퍼</li>
    </ol>
</nav>

            <div class="hero-title">모델동물사업부</div>
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
  <p class="title font-h4">유전자 변형 마우스(GEM) 맞춤 제작과<br>
    유전자 편집을 위한 혁신기술(CRISPR)을 제공합니다.</p>
  <p class="subject">CRISPR 시스템을 바탕으로 유전자 변형 마우스를 생산 및 공급하는 GEM 서비스를 제공합니다.</p>
  <div class="img">
    <img src="/publishing/pc-ko/dist/img/business/img-animal-intro.png" alt="모델동물사업부intro">
  </div>
  <p class="desc">유전자 변형 마우스(GEM : Genetically Engineered Mouse)란 유전자 편집 기술을 이용해 특정 유전자를 삽입/제거/변형한 실험용 쥐를 말하며 인간 유전자의 기능을 밝히기 위한 목적으로 바이오 및 의학 연구 분야에 활용되고 있습니다. GEM 서비스는 Transgenic Mouse와 Knock-Out/Knock-In Mouse입니다. Transgenic Mouse는 유전자의 기능을 연구하기 위해 특정 유전자를 삽입한 형질 전환 마우스입니다. Knock-Out Mouse는 특정 유전자를 제거함으로써  목표 유전자 발현을 억제한 유전자 변형 마우스이며, Knock-In Mouse는 특정 유전자를 변형함으로써 목표 유전자 발현을 조절 및 탐색할 수 있는 유전자 변형 마우스입니다. 이 밖에도 대량증식, 마우스 계통, 수정란 동결 및 복원, KO/TG 마우스 사육 및 선별 등 GEM과 관련된 다양한 부가 서비스를 제공하고 있습니다. 고객의 다양한 요구를 충족할 수 있도록 맞춤형 부분 공정 서비스를 제공하며, 효율적 공정을 위해 충분한 실험 설계 과정을 거친 후 유전자 변형 마우스를 제작하고 있습니다. 철저한 검역 시스템을 통해 모든 마우스를 SPF(Specific Pathogen Free) 상태로 유지∙공급하고 있습니다.
      <br><br>
    활발한 연구가 이루어지고 있는 마크로젠의 대표적인 서비스 CRISPR-Cas9은 길잡이 역할을 하는 가이드 RNA와 DNA를 자르는 Cas9 단백질을 붙여 만듭니다. 기본 원리는 표적 DNA를 찾아가는 가이드 RNA의 설계에 따라 DNA 염기서열을 잘라내고 편집하는 위치가 달라지는 것입니다. 마크로젠은 매사추세츠공과대학(MIT)과 하버드대학교가 공동 설립한 브로드연구소(Broad Institute)와 서울대학교병원 등 국내외 최고의 연구기관들과 함께하며 유전자 편집 기술을 발전 시켜 나가고 있습니다. 또한, 미국 브로드연구소가 보유한 50여 건의 CRISPR 유전자 편집 기술을 확보했습니다. </p>
</div>

            <!--탭 슬라이드-->
            <div class="tab-box" id="_tab-box">
                <p class="font-h4 title">SERVICE</p>
                <div class="slide-tab-wrap">
                    <div class="swiper-container tab-slide-box _swiperTab swiper-container-initialized swiper-container-horizontal">
                        <div class="swiper-wrapper _swiperTab swiper-container-initialized swiper-container-horizontal">
                            <div class="swiper-slide active" id="crispr"><a href="#">CRISPR Knock-In/Out</a></div>
                            <div class="swiper-slide" id="gem"><a href="#">Genetically Engineered Mouse</a></div>
                            <div class="swiper-slide" id="mass"><a href="#">Mass Reproduction</a></div>
                            <div class="swiper-slide" id="additional"><a href="#">Additional</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <!--탭메뉴 스크립트-->
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
                    <p class="subject">CRISPR(Clustered Regularly Interspaced Short Palindromic Repeats)시스템을 바탕으로  짧은 시간과 적은 비용으로 KI/KO 마우스 제작 및 Product를 공급합니다.</p>
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/business/img-animal-crispr.png" alt="CRISPR Knock-In/Out">
                    </div>
                    <hr class="divider">
                    <p class="sub-title font-h5">CRISPR gRNA Synthesis</p>
                    <p class="desc">원하는 유전자에 대한 gRNA 디자인, gRNA 합성, 합성된 gRNA를 공급합니다. CRISPR/Cas9 기술은 유전자를 변형/교정하는 가장 앞선 기술이며 마크로젠은 연구자가 원하는 CRISPR gRNA를 합성 및 제공합니다. 이를 통해 연구자가 직접 세포에 KO 또는 KI 와 같은 유전자 교정을 수행할 수 있습니다. 마크로젠은 매사추세츠공과대학(MIT)과 하버드대학교가 공동 설립한 브로드연구소(Broad Institute)와 서울대학교병원 등 국내외 최고의 연구기관들과 함께 유전자 편집 기술을  발전시켜 나가고 있습니다. 또한, 미국 브로드연구소가 보유한 총 50여 건의 CRISPR 유전자 편집 기술을 확보하고 있으며, 서울대학교병원 세포치료실용화센터 이은주·김효수 교수팀이 개발한 ‘약물 유도 유전자가위 재조합 벡터 기술'을 독점 도입해 연구 및 서비스 분야에 활용하고 있습니다. 마크로젠 모델동물사업부는 연구자의 실험 목적에 부합하는 gRNA 후보군을 무상으로 검색하여 전달하고 있습니다.</p>
                    <hr class="divider">
                    <p class="font-h5 sub-title">CRISPR Validated gRNA</p>
                    <p class="desc">원하는 유전자에 대한 gRNA 디자인, gRNA 합성, activity 측정된 gRNA를 공급합니다.</p>
                    <hr class="divider">
                    <p class="font-h5 sub-title">CRISPR gRNA Plasmid</p>
                    <p class="desc list_bottom">원하는 유전자에 대한 gRNA 디자인, gRNA 합성, 선별된 1개의 gRNA를 plasmid 로 제작하여 공급합니다. CRISPR/Cas9 기술은 현재 유전자를 변형/교정시키기 위한 가장 앞선 기술이며 마크로젠 모델동물사업부는 연구자가 원하는 CRISPR Grna를 plasmid 형태로 제공하여 연구자가 직접 세포에서 KO 또는 KI 과 같은 유전자 교정을 수행할 수 있도록 지원합니다.</p>
                    <div class="list-area">
                        <p class="font-h8 title">Service</p>
                        <ul class="list-circle-dot img_bottom">
                            <li>GRNA와 Cas9이 동시 발현</li>
                            <li>DNA prep.을 통해 지속적으로 사용 가능</li>
                            <li>Selection 마커로 EGFP 또는 PuroR 포함</li>
                            <li>Sing cutting 또는 double cutting 가능</li>
                        </ul>
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">CRISPR KI/KO Mouse</p>
                    <p class="desc list_bottom">CRISPR 기술을 이용한 Knock-In, Knock-Out 마우스 제작 서비스를 제공합니다. 마크로젠은 CRISPR 유전자 편집 기술을 활용하여 더욱 효율적인 방법으로 KI 마우스(Knock-In Mouse)와 KO 마우스(Knock-Out Mouse)를 제공하고 있습니다. KI 마우스란 특정 유전자를 제거한 후 다른 유전자를 삽입함으로써 본래의 유전자 대신 다른 유전자가 발현되는 마우스를 의미하며, KO 마우스는 특정 유전자를 제거하여 유전자의 발현을 억제한 마우스를 뜻합니다. 연구자는 KO 또는 KI 마우스를 이용하여 유전자의 기능을 살아있는 마우스에서 관찰할 수 있습니다.
                    </p>
                    <div class="list-area figure_bottom">
                        <p class="font-h8 title">Service</p>
                        <ul class="list-circle-dot">
                            <li>마크로젠은 기존의 실험 단계를 간편화한 CRISPR 시스템을 바탕으로 보다 짧은 시간과 적은 비용으로 KI/KO 마우스를 제작하여 공급하고 있습니다.</li>
                            <li>연구자가 유전자명만 알려주시면 마우스 제작의 전 과정을 일임하여 마우스를 제작 및 전달 드리고 있습니다.</li>
                        </ul>
                    </div>
                    <div class="border-gray-box">
                        <img src="/publishing/pc-ko/dist/img/business/img-crisper_kiko_mouse.png" alt="CRISPR KI/KO Mouse">
                    </div>
                    <div class="btn-area">
                        <a href="mailto:mouse@macrogen.com" class="btn btn-white"><span>서비스문의</span></a>
                        <a href="mailto:mouse@macrogen.com" class="btn btn-white"><span>견적의뢰</span></a>
                        <a href="mailto:mouse@macrogen.com" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
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
                    <p class="subject">유전자 변형 마우스를 생산 및 공급하는 GEM(Genetically Engineered Mouse) 서비스를 제공합니다.</p>
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/business/img-animal-genetically.png" alt="Genetically Engineered Mouse">
                    </div>
                    <hr class="divider">
                    <p class="sub-title font-h5">Knock-out (KO)</p>
                    <p class="desc">특정 유전자가 제거된 마우스 제작 서비스입니다. KO(Knock-Out) 기술은 특정 유전자를 제거함으로써 새로운 형질을 나타내는 개체를 생산하는 기술입니다. 이를 통해 생체 내 특정 유전자의 기능을 알 수 있으며 특정 질병과 관련 있는 유전자 변이를 확인할 수 있습니다. 마크로젠은 수년간의 마우스 제작 경험을 바탕으로 연구자가 원하는 최적의 마우스를 확보할 수 있는 기술 및 노하우를 보유하고 있습니다.</p>
                    <hr class="divider">
                    <p class="font-h5 sub-title">Conditional Knock-out (cKO) 마우스</p>
                    <p class="desc list_bottom">조건부로 특정 유전자가 제거된 마우스 제작 서비스입니다. 치사 유전자(lethal gene)와 같이 KO가 불가능한 유전자의 경우, Cre/loxP 시스템을 적용해 원하는 시점에 KO 할 수 있도록 하는 Conditional KO 마우스를 제공합니다. 특정 유전자의 기능이 치명적이라면 단순한 유전자 제거로는 KO 마우스가 제작되지 않는 경우가 있으므로 이를 극복하기 위해 조건부로 특정 유전자가 제거되는 마우스를 제작하여 연구자는 더욱 정밀하게 해당 유전자의 기능 및 역할을 마우스에서 연구할 수 있습니다. 마크로젠은 수년간의 마우스 제작 경험을 바탕으로 연구자가 원하는 최적의 마우스를 확보할 수 있는 기술 및 노하우를 보유하고 있습니다.</p>
                    <div class="list-area">
                        <p class="font-h8 title">Service</p>
                        <ul class="list-circle-dot">
                            <li>치명 유전자에 대해서 KO 마우스를 제작 가능</li>
                            <li>조직 특이적으로 유전자의 KO 가능</li>
                        </ul>
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">Knock-in (KI) 마우스</p>
                    <p class="desc list_bottom">특정 유전자가 타겟 위치에 정확히 삽입된 마우스 제작 서비스입니다. ESC(Embryonic Stem Cell, 배아줄기세포) 기반의 KI 마우스(Knock-In Mouse) 기술은 오랜 시간에 걸쳐 검증된 GEM 생산 기술입니다. 이 기술을 활용하면 정확한 위치에 특정 유전자를 삽입하여 원하는 유전자가 발현되도록 만들 수 있습니다. 또한 unknown 유전자에 TAG 장착 또는 형광 유전자를 주입하여 밝혀지지 않았던 유전자의 역할을 새롭게 규명할 수도 있습니다. 특정 유전자의 삽입(KI)을 통해 해당 유전자의 역할/기능을 마우스에서 확인할 수 있습니다. 요즘에는 인간 유전자를 삽입한 humanized 마우스를 통해 인간 유전자의 기능을 마우스에서 확인할 수 있습니다.</p>
                    <div class="list-area">
                        <p class="font-h8 title">Service</p>
                        <ul class="list-circle-dot img_bottom">
                            <li>유전자 삽입를 통해 해당 유전자의 기능을 확인</li>
                            <li>인간 유전자를 삽입한 humanized 마우스 제작 가능</li>
                            <li>돌연변이를 삽입하여 돌연변이의 기능 확인 가능</li>
                        </ul>
                    </div>
                    <hr class="divider">

                    <p class="font-h5 sub-title">Transgenic (TG) 마우스</p>
                    <p class="desc list_bottom">특정 유전자가 과발현되는 마우스 제작 서비스입니다. 유전자 이식 마우스(Transgenic Mouse)란 마우스의 게놈(Genome)에 특정 유전자 (Gene of Interest gene)를 삽입하여 해당 유전자가 과발현(Over-expression)되도록 만든 마우스입니다. 디자인에 따라 conventional, inducible, conditional expression vector 등 자유롭게 제작 가능합니다.
                    </p>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-h8 title">Service</p>
                            <ul class="list-circle-dot">
                                <li>유전자 과발현을 통해 해당 유전자의 기능을 확인</li>
                                <li>일반 KI 마우스에 비해 제작비가 저렴하고 제작기간이 짧음</li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="font-h8 title img_bottom">Workflow</p>
                            <div class="img">
                                <img src="/publishing/pc-ko/dist/img/business/img_workflow_level4.png" alt="workflow">
                            </div>
                            <p class="caption">※ 디자인에 따라 conventional, inducible, conditional expression vector 등 자유롭게 제작 가능 </p>
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
                        <a href="mailto:mouse@macrogen.com" class="btn btn-white"><span>서비스문의</span></a>
                        <a href="mailto:mouse@macrogen.com" class="btn btn-white"><span>견적의뢰</span></a>
                        <a href="mailto:mouse@macrogen.com" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
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
                    <p class="subject">IVF(In Vitro Fertilization, 체외수정) 기술을 활용하여 마우스 대량증식 서비스를 제공합니다.</p>
                    <p class="desc img_bottom">자연 교배 및 체외수정을 통해 단기간에 원하는 수량의 마우스 확보가 가능합니다. 마크로젠의 대량증식 서비스는 IVF 기술을 통해 대량의 동일 주령 개체 수를 확보하여 비 임상 실험에 필요한 마우스를 제작합니다. 이를 바탕으로 의약 연구소 및 국가 연구 기관 등 다양한 실험에 필요한 마우스를 효율적으로 제공하여 고객이 빠른 시간 내 비임상시험 결과를 도출할 수 있도록 지원하고 있습니다. 안정적인 수정란 이식(Embryo transfer) 기술과 높은 효율의 IVF 방법을 활용하여 고객이 원하는 주령 및 수량에 맞춰 단기간에 대량으로 마우스를 제공합니다.</p>
                    <div class="border-gray-box">
                        <div class="img">
                            <img src="/publishing/pc-ko/dist/img/business/img-breeding.png" alt="Mass Reproduction">
                        </div>
                    </div>
                    <div class="list-area">
                        <p class="font-h8 title img_bottom">Workflow</p>
                        <div class="img">
                            <img src="/publishing/pc-ko/dist/img/business/img_workflow_level6.png" alt="workflow">
                        </div>
                    </div>

                    <div class="btn-area">
                        <a href="mailto:mouse@macrogen.com" class="btn btn-white"><span>서비스문의</span></a>
                        <a href="mailto:mouse@macrogen.com" class="btn btn-white"><span>견적의뢰</span></a>
                        <a href="mailto:mouse@macrogen.com" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
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
                    <p class="subject">고객의 실험 목적에 맞는 부가서비스 실험을 다양한 규모로 제공합니다.</p>
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/business/img-animal-additional.png" alt="Additional">
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">마우스 사육 및 선별 (Mouse Maintenance)</p>
                    <p class="desc list_bottom">마크로젠은 Hetero 및 Homo 계통의 KO/TG 마우스를 사육하고 있으며 모든 마우스는 SPF(Specific Pathogen Free)로 관리합니다. 뿐만 아니라 F1 마우스는 PCR에 의한 screening을 통해 최종적으로
                        Germline Transmission 여부를 확인합니다. 마크로젠은 SPF 시설을 유지하고 있어 유전자 변형 마우스 제작 후 이동 없이  SPF 시설에서 유지관리가 순조로우며, 선별 서비스를 거친 후 세대 번식이 가능합니다.
                        유전자 변형 마우스 제작 후 고객의 동물실에서 관리가 어려울 경우, 마크로젠 동물실에서 유효기간 없이 번식 및 사육이 가능합니다.
                    </p>
                    <div class="list-area">
                        <p class="font-h8 title img">Documents</p>
                        <div class="file-download">
                            <div class="row">
                                <div class="col-6">
                                    <div class="item">
                                        <i class="icon icon-pdf"></i>
                                        <span class="title">마우스 사육 및 계통유지</span>
                                        <a href="/pdf/마우스 사육 및 계통유지.pdf" target="_blank" class="btn-download"><i class="icon icon-download"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">수정란 동결 및 마우스 복원 (Embryo freezing &#38; Reproduction to Live)</p>
                    <p class="desc">마크로젠은 GEM Bank System 운영과 냉동정자(Cryo-sperm)와 배아(Embryo)를 이용한 수정란 동결 및 마우스 복원 서비스를 제공합니다.<br>
                        질환모델마우스 관리가 어려울 경우 수정란 동결 서비스를 제공하며 질환모델마우스의 수정란을 동결하면 이동이 자유로워 원하는 연구자에게 분양도 가능합니다.<br>
                        마크로젠은 최적의 기술력을 바탕으로 고객의 GEM을 장기 보존합니다.
                    </p>
                    <hr class="divider">
                    <p class="font-h5 sub-title">마우스 계통유지 (Mouse Line Recovery)</p>
                    <p class="desc">질환모델마우스를 SPF 시설에서 번식 및 유지관리하는 서비스입니다.
                        번식 능력이 떨어진 마우스나 실험에 사용되는 유전자 변형 마우스의 계통 유지가 필요한 고객을 위해 IVF(In Vitro Fertilization, 체외수정)와 ET(Embryo Transfer, 수정란 이식) 서비스를 제공합니다. 마크로젠 연구원이 SPF 시설에서 담당하여 고객이 마우스 주령 및 번식 일정을 신경 쓸 필요 없이 계통 유지가 가능합니다.
                        세 달에 한 번씩 마우스 관리 내용을 상세히 안내하고 있어 안심하고 서비스 이용이 가능합니다.
                    </p>
                    <div class="btn-area">
                        <a href="mailto:mouse@macrogen.com" class="btn btn-white"><span>서비스문의</span></a>
                        <a href="mailto:mouse@macrogen.com" class="btn btn-white"><span>견적의뢰</span></a>
                        <a href="mailto:mouse@macrogen.com" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
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
