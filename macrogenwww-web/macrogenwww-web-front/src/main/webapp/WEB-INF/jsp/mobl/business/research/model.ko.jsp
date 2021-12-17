<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="top-bg" style="background-image: url(/publishing/mobile-ko/dist/img/business/ngs-bg.png);">
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
            <div class="font-h1">모델동물사업부</div>
            <div class="btn-wrap"><a href="#tab_anchor" class="btn-service"><span class="sr-only">service</span></a>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <!--동물모델사업부 공통 s -->
            <div class="subject-box">
                <p class="title font-h4">유전자 변형 마우스(GEM) 맞춤 제작과 유전자 편집을 위한 혁신기술(CRISPR)을 제공합니다
                </p>
                <p class="subject font-body-h img_bottom">CRISPR 시스템을 바탕으로 유전자 변형 마우스를 생산 및 공급하는 GEM 서비스를 제공합니다.</p>
                <div class="img">
                    <img src="/publishing/mobile-ko/dist/img/business/img-animal-intro.png" alt="oligoIntro">
                </div>
                <p class="desc font-body">유전자 변형 마우스(GEM : Genetically Engineered Mouse)란 유전자 편집 기술을 이용해 특정 유전자를
                    삽입/제거/변형한 실험용 쥐를 말하며 인간 유전자의 기능을 밝히기 위한 목적으로 바이오 및 의학 연구 분야에 활용되고 있습니다. GEM 서비스는 Transgenic Mouse와
                    Knock-Out/Knock-In Mouse입니다. Transgenic Mouse는 유전자의 기능을 연구하기 위해 특정 유전자를 삽입한 형질 전환 마우스입니다. Knock-Out
                    Mouse는 특정 유전자를 제거함으로써 목표 유전자 발현을 억제한 유전자 변형 마우스이며, Knock-In Mouse는 특정 유전자를 변형함으로써 목표 유전자 발현을 조절 및
                    탐색할 수 있는 유전자 변형 마우스입니다. 이 밖에도 대량증식, 마우스 계통, 수정란 동결 및 복원, KO/TG 마우스 사육 및 선별 등 GEM과 관련된 다양한 부가 서비스를
                    제공하고 있습니다. 고객의 다양한 요구를 충족할 수 있도록 맞춤형 부분 공정 서비스를 제공하며, 효율적 공정을 위해 충분한 실험 설계 과정을 거친 후 유전자 변형 마우스를 제작하고
                    있습니다. 철저한 검역 시스템을 통해 모든 마우스를 SPF(Specific Pathogen Free) 상태로 유지∙공급하고 있습니다.
                    <br><br>
                    활발한 연구가 이루어지고 있는 마크로젠의 대표적인 서비스 CRISPR-Cas9은 길잡이 역할을 하는 가이드 RNA와 DNA를 자르는 Cas9 단백질을 붙여 만듭니다. 기본 원리는
                    표적 DNA를 찾아가는 가이드 RNA의 설계에 따라 DNA 염기서열을 잘라내고 편집하는 위치가 달라지는 것입니다. 마크로젠은 매사추세츠공과대학(MIT)과 하버드대학교가 공동 설립한
                    브로드연구소(Broad Institute)와 서울대학교병원 등 국내외 최고의 연구기관들과 함께하며 유전자 편집 기술을 발전 시켜 나가고 있습니다. 또한, 미국 브로드연구소가 보유한
                    50여 건의 CRISPR 유전자 편집 기술을 확보했습니다.</p>
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
                        <li class="option-value active"><a href="#">CRISPR Knock-In/Out</a></li>
                        <li class="option-value"><a href="#">Genetically Engineered Mouse</a></li>
                        <li class="option-value"><a href="#">Mass Reproduction</a></li>
                        <li class="option-value"><a href="#">Additional</a></li>
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
                            <li class="anchor-value" onclick="TitleMove('target1')"><a href="#">CRISPR gRNA Synthesis</a></li>
                            <li class="anchor-value" onclick="TitleMove('target2')"><a href="#">CRISPR Validated gRNA</a></li>
                            <li class="anchor-value" onclick="TitleMove('target3')"><a href="#">CRISPR gRNA Plasmid</a></li>
                            <li class="anchor-value" onclick="TitleMove('target4')"><a href="#">CRISPR KI/KO Mouse</a></li>
                        </ul>
                    </div>
                    <!--content-anchor e-->
                    <p class="font-h4 main-title">CRISPR Knock-In/Out</p>
                    <p class="subject font-body-h-b">CRISPR(Clustered Regularly Interspaced Short Palindromic
                        Repeats)시스템을 바탕으로 짧은 시간과 적은 비용으로 KI/KO 마우스 제작 및 Product를 공급합니다.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img-animal-crispr.png" alt="CRISPR Knock-In/Out">
                    </div>
                    <hr class="divider">
                    <div class="section-anchor"><p class="sub-title font-h5" id="target1">CRISPR gRNA Synthesis</p>
                        <p class="desc font-body">원하는 유전자에 대한 gRNA 디자인, gRNA 합성, 합성된 gRNA를 공급합니다. CRISPR/Cas9 기술은 유전자를
                            변형/교정하는 가장 앞선 기술이며 마크로젠은 연구자가 원하는 CRISPR gRNA를 합성 및 제공합니다. 이를 통해 연구자가 직접 세포에 KO 또는 KI 와 같은
                            유전자
                            교정을 수행할 수 있습니다. 마크로젠은 매사추세츠공과대학(MIT)과 하버드대학교가 공동 설립한 브로드연구소(Broad Institute)와 서울대학교병원 등 국내외
                            최고의
                            연구기관들과 함께 유전자 편집 기술을 발전시켜 나가고 있습니다. 또한, 미국 브로드연구소가 보유한 총 50여 건의 CRISPR 유전자 편집 기술을 확보하고 있으며,
                            서울대학교병원 세포치료실용화센터 이은주·김효수 교수팀이 개발한 ‘약물 유도 유전자가위 재조합 벡터 기술'을 독점 도입해 연구 및 서비스 분야에 활용하고 있습니다.
                            마크로젠
                            모델동물사업부는 연구자의 실험 목적에 부합하는 gRNA 후보군을 무상으로 검색하여 전달하고 있습니다.</p></div>
                    <hr class="divider">
                    <div class="section-anchor"><p class="font-h5 sub-title" id="target2">CRISPR Validated gRNA</p>
                        <p class="desc font-body">원하는 유전자에 대한 gRNA 디자인, gRNA 합성, activity 측정된 gRNA를 공급합니다.</p></div>
                    <hr class="divider">
                    <div class="section-anchor"><p class="font-h5 sub-title" id="target3">CRISPR gRNA Plasmid</p>
                        <p class="desc font-body list_bottom">원하는 유전자에 대한 gRNA 디자인, gRNA 합성, 선별된 1개의 gRNA를 plasmid 로
                            제작하여
                            공급합니다. CRISPR/Cas9 기술은 현재 유전자를 변형/교정시키기 위한 가장 앞선 기술이며 마크로젠 모델동물사업부는 연구자가 원하는 CRISPR Grna를
                            plasmid 형태로 제공하여 연구자가 직접 세포에서 KO 또는 KI 과 같은 유전자 교정을 수행할 수 있도록 지원합니다.</p>
                        <div class="list-area">
                            <p class="font-body-h-b title">Service</p>
                            <ul class="list-circle-dot img_bottom">
                                <li><p>GRNA와 Cas9이 동시 발현</p></li>
                                <li><p>DNA prep.을 통해 지속적으로 사용 가능</p></li>
                                <li><p>Selection 마커로 EGFP 또는 PuroR 포함</p></li>
                                <li><p>Sing cutting 또는 double cutting 가능</p></li>
                            </ul>
                        </div>
                    </div>
                    <hr class="divider">
                    <div class="section-anchor"><p class="font-h5 sub-title" id="target4">CRISPR KI/KO Mouse</p>
                        <p class="desc font-body list_bottom">CRISPR 기술을 이용한 Knock-In, Knock-Out 마우스 제작 서비스를 제공합니다.
                            마크로젠은
                            CRISPR 유전자 편집 기술을 활용하여 더욱 효율적인 방법으로 KI 마우스(Knock-In Mouse)와 KO 마우스(Knock-Out Mouse)를 제공하고
                            있습니다.
                            KI 마우스란 특정 유전자를 제거한 후 다른 유전자를 삽입함으로써 본래의 유전자 대신 다른 유전자가 발현되는 마우스를 의미하며, KO 마우스는 특정 유전자를 제거하여
                            유전자의 발현을 억제한 마우스를 뜻합니다. 연구자는 KO 또는 KI 마우스를 이용하여 유전자의 기능을 살아있는 마우스에서 관찰할 수 있습니다.
                        </p>
                        <div class="list-area img_bottom">
                            <p class="font-body-h-b title">Service</p>
                            <ul class="list-circle-dot">
                                <li><p>마크로젠은 기존의 실험 단계를 간편화한 CRISPR 시스템을 바탕으로 보다 짧은 시간과 적은 비용으로 KI/KO 마우스를 제작하여 공급하고
                                    있습니다.</p></li>
                                <li><p>연구자가 유전자명만 알려주시면 마우스 제작의 전 과정을 일임하여 마우스를 제작 및 전달 드리고 있습니다.</p></li>
                            </ul>
                        </div>
                        <div class="border-gray-box">
                            <div class="img">
                                <img src="/publishing/mobile-ko/dist/img/business/img-crisper_kiko_mouse.png" alt="CRISPR KI/KO Mouse">
                                <span class="btnZoom-1"><i class="icon ico-zoom-white"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:mouse@macrogen.com"
                                                    class="btn btn-light"><span>서비스문의</span></a>
                            <a href="mailto:mouse@macrogen.com" class="btn btn-light"><span>견적의뢰</span></a></div>
                        <div class="btn-wrapper"><a href="mailto:mouse@macrogen.com" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>주문하기</span></a></div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col disabled"><i class="icon ico-left-black"></i><span
                                        class="font-body-h-b">이전</span></div>
                                <div class="col" onclick="setTabContent(1)"><span class="font-body-h-b">다음</span><i
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
                    <p class="subject font-body-h-b">유전자 변형 마우스를 생산 및 공급하는 GEM(Genetically Engineered Mouse) 서비스를
                        제공합니다.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img-animal-genetically.png" alt="Genetically Engineered Mouse">
                    </div>

                    <!--content-anchor s-->
                    <div class="content-anchor">
                        <div class="selected-value _anchor-value">
                            <span class="text">Knock-out (KO)</span>
                        </div>
                        <ul class="anchor-option">
                            <li class="anchor-value" onclick="TitleMove('target5')"><a href="#">Knock-out (KO)</a></li>
                            <li class="anchor-value" onclick="TitleMove('target6')"><a href="#">Conditional Knock-out (cKO) 마우스</a></li>
                            <li class="anchor-value" onclick="TitleMove('target7')"><a href="#">Knock-in (KI) 마우스</a>
                            </li>
                            <li class="anchor-value" onclick="TitleMove('target8')"><a href="#">Transgenic (TG) 마우스</a>
                            </li>
                        </ul>
                    </div>
                    <!--content-anchor e-->
                    <hr class="divider">
                    <div class="section-anchor"><p class="sub-title font-h5" id="target5">Knock-out (KO)</p>
                        <p class="desc font-body">특정 유전자가 제거된 마우스 제작 서비스입니다. KO(Knock-Out) 기술은 특정 유전자를 제거함으로써 새로운 형질을
                            나타내는
                            개체를 생산하는 기술입니다. 이를 통해 생체 내 특정 유전자의 기능을 알 수 있으며 특정 질병과 관련 있는 유전자 변이를 확인할 수 있습니다. 마크로젠은 수년간의
                            마우스
                            제작 경험을 바탕으로 연구자가 원하는 최적의 마우스를 확보할 수 있는 기술 및 노하우를 보유하고 있습니다.</p></div>
                    <hr class="divider">
                    <div class="section-anchor">
                        <p class="font-h5 sub-title" id="target6">Conditional Knock-out (cKO) 마우스</p>
                        <p class="desc list_bottom font-body">조건부로 특정 유전자가 제거된 마우스 제작 서비스입니다. 치사 유전자(lethal gene)와 같이
                            KO가
                            불가능한 유전자의 경우, Cre/loxP 시스템을 적용해 원하는 시점에 KO 할 수 있도록 하는 Conditional KO 마우스를 제공합니다. 특정 유전자의 기능이
                            치명적이라면 단순한 유전자 제거로는 KO 마우스가 제작되지 않는 경우가 있으므로 이를 극복하기 위해 조건부로 특정 유전자가 제거되는 마우스를 제작하여 연구자는 더욱
                            정밀하게
                            해당 유전자의 기능 및 역할을 마우스에서 연구할 수 있습니다. 마크로젠은 수년간의 마우스 제작 경험을 바탕으로 연구자가 원하는 최적의 마우스를 확보할 수 있는 기술
                            및
                            노하우를 보유하고 있습니다.</p>
                        <div class="list-area">
                            <p class="font-body-h-b title">Service</p>
                            <ul class="list-circle-dot">
                                <li><p>치명 유전자에 대해서 KO 마우스를 제작 가능</p></li>
                                <li><p>조직 특이적으로 유전자의 KO 가능</p></li>
                            </ul>
                        </div>
                    </div>
                    <hr class="divider">
                    <div class="section-anchor">
                        <p class="font-h5 sub-title" id="target7">Knock-in (KI) 마우스</p>
                        <p class="desc font-body list_bottom">특정 유전자가 타겟 위치에 정확히 삽입된 마우스 제작 서비스입니다. ESC(Embryonic Stem
                            Cell,
                            배아줄기세포) 기반의 KI 마우스(Knock-In Mouse) 기술은 오랜 시간에 걸쳐 검증된 GEM 생산 기술입니다. 이 기술을 활용하면 정확한 위치에 특정
                            유전자를
                            삽입하여 원하는 유전자가 발현되도록 만들 수 있습니다. 또한 unknown 유전자에 TAG 장착 또는 형광 유전자를 주입하여 밝혀지지 않았던 유전자의 역할을 새롭게
                            규명할
                            수도 있습니다. 특정 유전자의 삽입(KI)을 통해 해당 유전자의 역할/기능을 마우스에서 확인할 수 있습니다. 요즘에는 인간 유전자를 삽입한 humanized 마우스를
                            통해
                            인간 유전자의 기능을 마우스에서 확인할 수 있습니다.</p>
                        <div class="list-area">
                            <p class="font-body-h-b title">Service</p>
                            <ul class="list-circle-dot img_bottom">
                                <li><p>유전자 삽입를 통해 해당 유전자의 기능을 확인</p></li>
                                <li><p>인간 유전자를 삽입한 humanized 마우스 제작 가능</p></li>
                                <li><p>돌연변이를 삽입하여 돌연변이의 기능 확인 가능</p></li>
                            </ul>
                        </div>
                    </div>
                    <hr class="divider">
                    <div class="section-anchor">
                        <p class="font-h5 sub-title" id="target8">Transgenic (TG) 마우스</p>
                        <p class="desc font-body list_bottom">특정 유전자가 과발현되는 마우스 제작 서비스입니다. 유전자 이식 마우스(Transgenic Mouse)란
                            마우스의 게놈(Genome)에 특정 유전자 (Gene of Interest gene)를 삽입하여 해당 유전자가 과발현(Over-expression)되도록 만든
                            마우스입니다.
                            디자인에 따라 conventional, inducible, conditional expression vector 등 자유롭게 제작 가능합니다.
                        </p>
                        <div class="list-area-group">
                            <div class="list-area">
                                <p class="font-body-h-b title">Service</p>
                                <ul class="list-circle-dot">
                                    <li><p>유전자 과발현을 통해 해당 유전자의 기능을 확인</p></li>
                                    <li><p>일반 KI 마우스에 비해 제작비가 저렴하고 제작기간이 짧음</p></li>
                                </ul>
                            </div>
                            <div class="list-area ">
                                <p class="font-body-h-b title img_bottom">Workflow</p>
                                <!--10.05 이미지 경로 변경-->
                                <div class="img">
                                    <img src="/publishing/mobile-ko/dist/img/business/img_workflow_level4.png" alt="workflow">
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
                                                    class="btn btn-light"><span>서비스문의</span></a>
                            <a href="mailto:mouse@macrogen.com" class="btn btn-light"><span>견적의뢰</span></a></div>
                        <div class="btn-wrapper"><a href="mailto:mouse@macrogen.com" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>주문하기</span></a></div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(0)"><i class="icon ico-left-black"></i><span
                                        class="font-body-h-b">이전</span>
                                </div>
                                <div class="col" onclick="setTabContent(2)"><span class="font-body-h-b">다음</span><i
                                        class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Genetically Engineered Mouse e-->

                <!--Mass Reproduction s -->
                <div class="info-box">
                    <p class="font-h4 main-title">Mass Reproduction</p>
                    <p class="subject font-body-h-b">IVF(In Vitro Fertilization, 체외수정) 기술을 활용하여 마우스 대량증식 서비스를 제공합니다.</p>
                    <p class="desc img_bottom font-body">자연 교배 및 체외수정을 통해 단기간에 원하는 수량의 마우스 확보가 가능합니다. 마크로젠의 대량증식 서비스는
                        IVF 기술을 통해
                        대량의 동일 주령 개체 수를 확보하여 비 임상 실험에 필요한 마우스를 제작합니다. 이를 바탕으로 의약 연구소 및 국가 연구 기관 등 다양한 실험에 필요한 마우스를 효율적으로
                        제공하여 고객이 빠른 시간 내 비임상시험
                        결과를 도출할 수 있도록 지원하고 있습니다. 안정적인 수정란 이식(Embryo transfer) 기술과 높은 효율의 IVF 방법을 활용하여 고객이 원하는 주령 및 수량에
                        맞춰 단기간에 대량으로 마우스를 제공합니다.</p>
                    <div class="border-gray-box">
                        <!--10.05 이미지 경로 변경-->
                        <div class="img">
                            <img src="/publishing/mobile-ko/dist/img/business/img-breeding.png" alt="Mass Reproduction">
                            <span class="btnZoom-2"><i class="icon ico-zoom-white"></i></span>
                        </div>
                    </div>
                    <div class="list-area">
                        <p class="font-body-h-b title img_bottom">Workflow</p>
                        <!--10.05 이미지 경로 변경-->
                        <div class="img">
                            <img src="/publishing/mobile-ko/dist/img/business/img_workflow_level6.png" alt="workflow">
                        </div>
                    </div>

                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:mouse@macrogen.com"
                                                    class="btn btn-light"><span>서비스문의</span></a>
                            <a href="mailto:mouse@macrogen.com" class="btn btn-light"><span>견적의뢰</span></a></div>
                        <div class="btn-wrapper"><a href="mailto:mouse@macrogen.com" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>주문하기</span></a></div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(1)"><i class="icon ico-left-black"></i><span
                                        class="font-body-h-b">이전</span>
                                </div>
                                <div class="col" onclick="setTabContent(3)"><span class="font-body-h-b">다음</span><i
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
                    <p class="subject font-body-h-b">고객의 실험 목적에 맞는 부가서비스 실험을 다양한 규모로 제공합니다.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img-animal-additional.png" alt="Additional">
                    </div>
                    <hr class="divider">
                    <div class="section-anchor">
                        <p class="font-h5 sub-title">마우스 사육 및 선별 (Mouse Maintenance)</p>
                        <p class="desc list_bottom font-body">마크로젠은 Hetero 및 Homo 계통의 KO/TG 마우스를 사육하고 있으며 모든 마우스는
                            SPF(Specific
                            Pathogen Free)로
                            관리합니다. 뿐만 아니라 F1 마우스는 PCR에 의한 screening을 통해 최종적으로
                            Germline Transmission 여부를 확인합니다. 마크로젠은 SPF 시설을 유지하고 있어 유전자 변형 마우스 제작 후 이동 없이 SPF 시설에서 유지관리가
                            순조로우며, 선별
                            서비스를
                            거친 후 세대 번식이 가능합니다.
                            유전자 변형 마우스 제작 후 고객의 동물실에서 관리가 어려울 경우, 마크로젠 동물실에서 유효기간 없이 번식 및 사육이 가능합니다.
                        </p>
                        <div class="list-area">
                            <p class="font-body-h-b title">Documents</p>
                            <div class="file-download">
                                <div class="item">
                                    <i class="icon ico-file-pdf"></i>
                                    <span class="font-body-b">마우스 사육 및 계통유지</span>
                                    <a href="#" class="download"><i class="icon ico-download-black"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr class="divider">
                    <div class="section-anchor">
                        <p class="font-h5 sub-title">수정란 동결 및 마우스 복원 (Embryo freezing &#38; Reproduction to Live)</p>
                        <p class="desc font-body">마크로젠은 GEM Bank System 운영과 냉동정자(Cryo-sperm)와 배아(Embryo)를 이용한 수정란 동결 및
                            마우스
                            복원 서비스를
                            제공합니다.<br>
                            질환모델마우스 관리가 어려울 경우 수정란 동결 서비스를 제공하며 질환모델마우스의 수정란을 동결하면 이동이 자유로워 원하는 연구자에게 분양도 가능합니다.<br>
                            마크로젠은 최적의 기술력을 바탕으로 고객의 GEM을 장기 보존합니다.
                        </p>
                    </div>
                    <hr class="divider">
                    <div class="section-anchor">
                        <p class="font-h5 sub-title">마우스 계통유지 (Mouse Line Recovery)</p>
                        <p class="desc font-body">질환모델마우스를 SPF 시설에서 번식 및 유지관리하는 서비스입니다.
                            번식 능력이 떨어진 마우스나 실험에 사용되는 유전자 변형 마우스의 계통 유지가 필요한 고객을 위해 IVF(In Vitro Fertilization, 체외수정)와
                            ET(Embryo
                            Transfer, 수정란 이식) 서비스를 제공합니다. 마크로젠 연구원이 SPF 시설에서 담당하여 고객이 마우스 주령 및 번식 일정을 신경 쓸 필요 없이 계통 유지가
                            가능합니다.
                            세 달에 한 번씩 마우스 관리 내용을 상세히 안내하고 있어 안심하고 서비스 이용이 가능합니다.
                        </p>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:mouse@macrogen.com"
                                                    class="btn btn-light"><span>서비스문의</span></a>
                            <a href="mailto:mouse@macrogen.com" class="btn btn-light"><span>견적의뢰</span></a></div>
                        <div class="btn-wrapper"><a href="mailto:mouse@macrogen.com" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>주문하기</span></a></div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(2)"><i class="icon ico-left-black"></i><span
                                        class="font-body-h-b">이전</span>
                                </div>
                                <div class="col disabled"><span class="font-body-h-b">다음</span><i
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


</script>

<!--비즈니스 스크립트 리펙토링 e-->


    <!--v0.7 tost-popup 추가-->
    <div class="toast-popup">
        <p>이미지를 확대할 수 있습니다</p>
    </div>
    <!--modalImageViewer1 s-->
    <div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer1" data-bs-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
                <a href="#" class="btn-close"><span class="sr-only">닫기</span></a>
                <div class="parent">
                    <div class="panzoom"><img src="/publishing/mobile-ko/dist/img/business/img-crisper_kiko_mouse.png" alt="줌이미지"></div>
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
                <a href="#" class="btn-close"><span class="sr-only">닫기</span></a>
                <div class="parent">
                    <div class="panzoom"><img src="/publishing/mobile-ko/dist/img/business/img-breeding.png" alt="줌이미지"></div>
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
