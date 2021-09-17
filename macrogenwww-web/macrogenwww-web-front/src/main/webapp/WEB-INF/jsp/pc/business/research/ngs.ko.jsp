<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg business_bg">
        <header class="header">
		    <div class="inner">
		    	<c:import url="/inc/header-inner-gnb" />
		    </div>
		</header>

        <div class="frame frameB">
            <nav aria-label="breadcrumb">
			    <ol class="breadcrumb breadcrumb-white">
			        <li class="breadcrumb-item">Home</li>
			        <li class="breadcrumb-item">Business</li>
			        <li class="breadcrumb-item">연구서비스</li>
			        <li class="breadcrumb-item">NGS</li>
			    </ol>
			</nav>

            <div class="hero-title">NGS</div>
            <div class="slogan-sub">Next Generation Sequencing</div>
            <a href="#" class="btn btn-round btn-service">
                <span>SERVICE</span>
                <i class="icon icon-arrow-bottom-short-white"></i>
            </a>
        </div>
    </div>

    <div class="container">
        <div class="section_business">
            <!--메인 컨텐츠-->
            <div class="subject-box">
                <p class="title font-h4">글로벌 톱 수준의 분석 인프라를 통해 빠르고 정확한<br>
                    NGS서비스를 합리적인 비용으로 제공합니다
                </p>
                <p class="title-desc">NGS 정보를 기반으로 끊임없는 연구개발 및 다양한 의료기관과의 협업을 통해 환자 개인의 질병을 예측하고 진단하며,<br>
                    환자의 유전적 특성에 따른 맞춤치료의 방안을 제시하는 정밀의학 분야의 글로벌 선도기업이 되고자 합니다</p>
                <div class="img">
                    <img src="/publishing/dist/img/@temp/business/img-thumb01.svg" alt="NGS2">
                </div>
                <p class="desc">
                    차세대 염기서열 분석법이라 불리는 NGS기술은 모든 유전자의 집합체인 유전체를 무수히 많은 조각으로 나눠서 읽은 후, 얻어진 염기서열 조각을 조립하여 전체 유전체의 서열을 분석하는 방법입니다.<br>2000년대부터 해당 기술이 상용화된 이후 관련 기술이 비약적으로 발전함에 따라 단 기간 내에 많은 양의 유전체 정보를 얻게 되었고, 이를 다양한 연구분야에 활용할 수 있게 되었습니다. 특히 유전체 분석 비용과 시간이 점차 감소함에 따라 인간을 비롯한 다양한 생명체의 유전체 분석 수요가 빠르게 증가하고 있습니다. 최근에는 의학 분야를 중심으로 NGS 기반의 임상연구가 활발해지면서 해당 기술을 통한 유전자 변이 확인 및 새로운 유전자의 기능을 밝히기 위한 많은 연구가 진행되고 있습니다. 이는 환자 개인의 유전체 정보를 바탕으로 개인별로 최적화된 치료를 할 수 있는 정밀의학의 실현을 앞당길 것입니다.
                    <br><br>마크로젠은 다양한 장비를 통하여 매년 대량의 유전체 데이터를 생산해내고 있으며, 경제적인 비용으로 더욱 빠르고 정확한 유전체 분석 서비스를 제공하여 연구자의 연구를 도와
                    드리며, 일반인을 대상으로 한 진단 서비스도 제공하고 있습니다. 또한 Whole Genome, Exome, Transcriptome, Epigenome, 그리고
                    Metagenome 그리고 Single Cell Multi-Omics Sequencing 등 다양한 연구목적에 맞는 유전체 분석 서비스와 해당 데이터를 기반으로 한
                    Bioinformatics 결과를 제공하고 있습니다. 마크로젠은 오랜 기간 축적된 경험과 노하우를 바탕으로 전 세계 연구자들에게 Total Genomic Solution을
                    제시함으로써 NGS 기술을 활용한 정밀의학 분야를 선도하고 있습니다.</p>
            </div>
            <!--탭 슬라이드-->
            <div class="tab-box">
                <p class="font-h4 title">SERVICE</p>
                <div class="slide-tab-wrap">
                    <div class="swiper-container tab-slide-box _swiperTab swiper-container-initialized swiper-container-horizontal">
                        <div class="swiper-wrapper _swiperTab swiper-container-initialized swiper-container-horizontal">
                            <div class="swiper-slide active "><a href="#">Whole Genome Sequencing</a></div>
                            <div class="swiper-slide "><a href="#">Whole Exome Sequencing</a></div>
                            <div class="swiper-slide"><a href="#">Transcriptome Sequencing</a></div>
                            <div class="swiper-slide"><a href="#">Epigenome Sequencing</a></div>
                            <div class="swiper-slide"><a href="#">Single Cell Multi-omics analysis</a></div>
                            <div class="swiper-slide"><a href="#">ATAC analysis</a></div>
                            <div class="swiper-slide"><a href="#">Spatial Gene Expression analysis</a></div>
                        </div>
                    </div>
                    <div class="btn-box">
                        <a href="#" class="btn btn-circle btn-white btn-sm _slideLeft swiper-button-disabled" tabindex="-1" role="button" aria-label="Previous slide" aria-disabled="true"><i class="icon icon-arrow-left-sm"></i></a>
                        <a href="#" class="btn btn-circle btn-white btn-sm _slideRight swiper-button-disabled" tabindex="-1" role="button" aria-label="Next slide" aria-disabled="true"><i class="icon icon-arrow-right-sm"></i></a>
                        <a href="#" class="btn btn-circle btn-black btn-sm _btnMenu"><i class="icon icon-menu-white"></i></a>
                    </div>
                </div>
            </div>
            <!--슬라이드 스크립트-->
            <script>
                var swiper = new Swiper("._swiperTab", {
                    slidesPerView: "auto",
                    spaceBetween: 0,
                    centeredSlides: false,
                    watchActiveIndex: true,
                    navigation: {
                        nextEl: "._slideRight",
                        prevEl: "._slideLeft",
                    },
                });

                $(document).ready(function (){
                    var idx = $('._swiperTab .swiper-slide').length;
                    var sum= 0;

                    // slide wrap width
                    for (var j = 0; j < idx; j++) {
                        sum = sum + $(".swiper-slide:eq("+j+")").outerWidth(true);
                    }
                    $('.swiper-wrapper').css('width',sum)

                    // slide width
                    for (var i = 0; i <= idx; i++) {
                        var target = $(`.swiper-slide:eq(${i})`);
                        var idxWidth = $(`.swiper-slide:eq(${i})`).outerWidth(true) - 40;
                        target.css('width',idxWidth)
                    }
                })

                $('._swiperTab .swiper-slide').on('click', function(){
                    $(this).addClass('active').siblings().removeClass('active');
                });

                $('.swiper-notification').remove();
            </script>
            <!--탭컨텐츠-->
            <div class="info-box">
                <p class="font-h4 title">Whole Genome Sequencing</p>
                <p class="title-desc">WGS(Whole Genome Sequencing)은 유전체 전체를 한 번에 읽어내어 관련 유전정보를 분석하는 방법입니다.</p>
                <p class="desc img">WGS을 통해 얻어진 변이 정보는 질병과 관련한 유전자 발굴 및 맞춤의학 연구에 활용되고 있습니다. 현재 전 세계 153개국 1만 8천여 연구기관 고객을 보유하고 있으며, 연간 30만 명의 WGS 분석 시설,  총 30PB를 저장할 수 있는 컴퓨팅 시설 등 글로벌 톱 수준의 분석 인프라를 통해 유전체 정보 기반 정밀의학 빅데이터 시대를 만들어 가고 있습니다.</p>
                <div class="img">
                    <img src="/publishing/dist/img/@temp/business/img-thumb02.svg" alt="이미지">
                </div>
                <hr class="divider">
                <p class="font-h5 sub-title">Whole Genome Resequencing</p>
                <p class="desc sub">이미 알려진 참조 유전체 (Reference Genome)를 활용하여 SNP(Single Nucleotide Polymorphism), InDel(Insertion & Deletion), CNV(Copy Number Variation), 그리고 SV(Structural Variation) 등 다방면의 변이 분석이 가능한 방법입니다.</p>
                <div class="list-area">
                    <p class="font-h8 title">Sequencing Platform</p>
                    <ul class="list-circle-dot">
                        <li>HiSeq 2500 / HiSeq 4000 / HiSeq X Ten / NovaSeq 6000</li>
                        <li>NextSeq 500</li>
                    </ul>
                </div>
                <hr class="divider">
                <p class="font-h5 sub-title">Whole Genome Resequencing</p>
                <p class="desc desc sub">참조 유전체 정보가 없는 새로운 생물종의 유전체정보를 새로이 밝히는 방법으로, 지금까지 밝혀지지 않은 미생물이나 동식물의 전체 유전체 정보를 알아내는 방법입니다.</p>
                <div class="list-area">
                    <p class="font-h8 title">Sequencing Platform</p>
                    <ul class="list-circle-dot">
                        <li>HiSeq 2500 / HiSeq 4000 / HiSeq X Ten / NovaSeq 6000</li>
                        <li>NextSeq 500 / MiSeq</li>
                        <li>PacBio Sequel I & Sequel II</li>
                        <li>PromethION</li>
                    </ul>
                </div>
                <div class="btn-area">
                    <a href="#" class="btn btn-white"><span>서비스문의</span></a>
                    <a href="#" class="btn btn-white"><span>견적의뢰</span></a>
                    <a href="#" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>주문하기</span></a>
                </div>
                <hr class="divider">
                <div class="board">
                    <div class="indicator">
                        <div class="content clearfix">
                            <a href="#" class="item next">
                                <div class="title">Whole Exome Sequencing</div>
                            </a>
                        </div>
                    </div>
                </div>
                <script>

                </script>
            </div>

        </div>
    </div>


</body>