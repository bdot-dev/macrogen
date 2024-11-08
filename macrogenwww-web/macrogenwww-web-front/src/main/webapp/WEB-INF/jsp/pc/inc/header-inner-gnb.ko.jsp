<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<div class="inner">
	<div class="section_gnb">
	    <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
	    <nav>
	        <ul id="gnb">
                <li><span class="font-bold">macrogen</span></li>
                <li><span class="font-bold">Service</span></li><!--2023-04-27 수정-->
                <!-- <li><span class="font-bold">Resource</span></li> --><!--2023-04-27 수정-->
                <li><span class="font-bold">newsroom</span></li>
                <li><span class="font-bold">ir</span></li>
                <li><span class="font-bold">esg</span></li>
	        </ul>
	    </nav>
	</div>
	<c:choose>
		<c:when test="${ layout_type eq 'company' or layout_type eq 'business' or layout_type eq 'main' or layout_type eq 'rnd_institute' }">
			<c:set var="snsIconColor" value="" />
		</c:when>
	</c:choose> 
	<div class="section_btn" data-layout-type="${layout_type }">
	    <ul class="sns">
	        <li><a href="https://www.facebook.com/macrogenkr/" target="_blank"><i class="icon icon-facebook-circle${snsIconColor }"></i></a></li>
	        <li><a href="https://www.youtube.com/channel/UCT1qyaOiPM7syCEC_T8jmTw" target="_blank"><i class="icon icon-youtube-circle${snsIconColor }"></i></a></li>
	        <li><a href="https://blog.naver.com/macrogen_official" target="_blank"><i class="icon icon-blog-circle${snsIconColor }"></i></a></li>
	        <li><a href="https://www.linkedin.com/company/macrogen" target="_blank"><i class="icon icon-linkedin-circle${snsIconColor }"></i></a></li>
	    </ul>
	    <div class="btn_eng">
	    	<!-- s:2023리뉴얼 -->
            <a href="/ko/contact-us" class="btn btn-round"><span>Contact Us</span></a>
	        <a href="/en/main" class="btn btn-round"><i class="icon icon-earth-black"></i><span>ENG</span></a>
	        <%-- <a href="https://glo.macrogen.com/en/main/index.php" target="_blank" class="btn btn-round"><i class="icon icon-earth-black"></i><span>ENG</span></a> --%>
	    </div>
	</div>
</div>
<div class="gnb-2depth" id="gnb2Depth">
    <!--Macrogen-->
    <div class="box clearfix">
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/overview">회사소개</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/company/overview">기업개요</a></li>
                <li><a href="/${rc.locale.language }/company/bod">경영진</a></li>
                <li><a href="/${rc.locale.language }/company/history">연혁</a></li>
                <li><a href="/${rc.locale.language }/company/vision">비전</a></li>
                <li><a href="/${rc.locale.language }/company/certification">인증</a></li>
            </ul>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/global-network">글로벌 네트워크</a></div>
        </div>

        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/qualified-image">채용</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/company/qualified-image">인재상</a></li>
                <li><a href="/${rc.locale.language }/company/hrm">인사제도</a></li>
                <li><a href="/${rc.locale.language }/company/recruit">채용안내</a></li>
            </ul>
        </div>

        <!-- 2023-04-27 추가 -->
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/rnd/patent">Resource</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/rnd/patent">특허</a></li>
                <li><a href="/${rc.locale.language }/rnd/thesis">논문</a></li>
            </ul>
        </div>

        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/rnd/institute/precision-medicine">R&amp;D</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/rnd/institute/precision-medicine">정밀의학연구소</a></li>
                <li><a href="/${rc.locale.language }/rnd/institute/bioinformatics">생명정보학연구소</a></li>
                <%-- <li><a href="/${rc.locale.language }/rnd/institute/biome">더바이옴연구소</a></li>
                <li><a href="/${rc.locale.language }/rnd/institute/sync-genes">싱크진연구소</a></li>
                <li><a href="/${rc.locale.language }/rnd/institute/bigdata">빅데이터연구소</a></li> --%>
            </ul>
        </div>
        <!-- //2023-04-27 추가 -->

    </div>
    <!--Business-->
    <div class="box clearfix">
        <!-- 2023-04-27 수정 -->
        <!-- 추후 론칭(오픈 시 숨김) -->
        <!-- <div class="item">
            <div class="title"><a href="#">헬스케어 플랫폼</a></div>
            <ul>
                <li><a href="#">CanBe</a></li>
            </ul>
        </div> -->
        <!-- //추후 론칭(오픈 시 숨김) -->

        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/business/healthcare/personal-genetic">퍼스널 헬스케어</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/business/healthcare/personal-genetic">질병예측 유전자검사</a></li>
                <li><a href="/${rc.locale.language }/business/healthcare/dtc-genetic">건강관리 플랫폼</a></li> <!-- 2024-04-18 수정 -->
                <li><a href="/${rc.locale.language }/business/healthcare/dtc-biome">DTC 바이옴검사</a></li>
            </ul>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/business/healthcare/pet-genetic">반려동물 헬스케어</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/business/healthcare/pet-genetic">반려동물 유전자검사</a></li>
            </ul>
        </div>
        <div class="item menu0204">
            <div class="title"><a href="/${rc.locale.language }/business/research/ngs">연구분석서비스</a></div>
            <ul>
                <li>
                    <a href="/${rc.locale.language }/business/research/ngs#genome">NGS</a>
                    <div class="folding">
                        <button type="button"></button>
                        <ul class="cards-body">
                            <li><a href="/${rc.locale.language }/business/research/ngs#genome">Whole Genome Sequencing</a></li>
                            <li><a href="/${rc.locale.language }/business/research/ngs#exome">Whole Exome Sequencing</a></li>
                            <li><a href="/${rc.locale.language }/business/research/ngs#transcriptome">Transcriptome Sequencing</a></li>
                            <li><a href="/${rc.locale.language }/business/research/ngs#epigenome">Epigenome Sequencing</a></li>
                            <%-- <li><a href="/${rc.locale.language }/business/research/ngs#multi-omics">Single Cell Multi-omics analysis</a></li>
                            <li><a href="/${rc.locale.language }/business/research/ngs#atac">ATAC analysis</a></li>
                            <li><a href="/${rc.locale.language }/business/research/ngs#spatial">Spatial Gene Expression analysis</a></li> --%>
                            <li><a href="/${rc.locale.language }/business/research/ngs#metagenome">Metagenome Sequencing</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="/${rc.locale.language }/business/research/ces#standard">CES</a>
                    <div class="folding">
                        <button type="button"></button>
                        <ul class="cards-body">
                            <li><a href="/${rc.locale.language }/business/research/ces#standard">Standard Sequencing</a></li>
                            <li><a href="/${rc.locale.language }/business/research/ces#identification">Identification</a></li>
                            <li><a href="/${rc.locale.language }/business/research/ces#fragment">Fragment</a></li>
                            <li><a href="/${rc.locale.language }/business/research/ces#customized">Customized Sequencing</a></li>
                            <li><a href="/${rc.locale.language }/business/research/ces#human">Human ID</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="/${rc.locale.language }/business/research/microarray#expression">Microarray</a>
                    <div class="folding">
                        <button type="button"></button>
                        <ul class="cards-body">
                            <li><a href="/${rc.locale.language }/business/research/microarray#expression">Expression Microarray</a></li>
                            <li><a href="/${rc.locale.language }/business/research/microarray#genome">Genome Microarray</a></li>
                            <li><a href="/${rc.locale.language }/business/research/microarray#epigenome">Epigenome Microarray</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="/${rc.locale.language }/business/research/proteomics">Proteomics</a> <!-- 신규추가 -->
                    <div class="folding">
                        <button type="button"></button>
                        <ul class="cards-body">
                            <li><a href="/${rc.locale.language }/business/research/proteomics">Proteomics Olink</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="/${rc.locale.language }/business/research/gene-synthesis">Gene Synthesis</a>
                </li>
                <li>
                    <a href="/${rc.locale.language }/business/research/oligo#dna">Oligo</a>
                    <div class="folding">
                        <button type="button"></button>
                        <ul class="cards-body">
                            <li><a href="/${rc.locale.language }/business/research/oligo#dna">DNA Oligo Synthesis</a></li>
                            <li><a href="/${rc.locale.language }/business/research/oligo#rna">RNA Oligo Synthesis</a></li>
                            <li><a href="/${rc.locale.language }/business/research/oligo#peptide">Peptide Synthesis</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="/${rc.locale.language }/business/research/model#crispr">모델동물/크리스퍼</a>
                    <div class="folding">
                        <button type="button"></button>
                        <ul class="cards-body">
                            <li><a href="/${rc.locale.language }/business/research/model#crispr">CRISPR Knock-in/out</a></li>
                            <li><a href="/${rc.locale.language }/business/research/model#gem">GEM</a></li>
                            <li><a href="/${rc.locale.language }/business/research/model#mass">Mass Production</a></li>
                            <li><a href="/${rc.locale.language }/business/research/model#additional">Additional</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="/${rc.locale.language }/business/research/reagent">연구용 시약 및 소모품</a>
                </li>
            </ul>
        </div>
        <div class="item menu0205">
            <div class="title"><a href="/${rc.locale.language }/business/diagnosis/cancer">임상분석서비스</a></div>
            <ul>
                <li>
                    <a href="/${rc.locale.language }/business/diagnosis/cancer#prediction">정밀의학</a>
                    <div class="folding">
                        <button type="button"></button>
                        <ul class="cards-body">
                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer#prediction">암 발생 위험 예측</a></li>
                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer#analyze">암 발생 원인 분석</a></li>
                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer#monitoring">암 발생 모니터링</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="/${rc.locale.language }/business/diagnosis/cancer-genome#cancer"">암 유전체 검사</a> <!--신규 추가 -->
                    <div class="folding">
                        <button type="button"></button>
                        <ul class="cards-body">
                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer-genome#cancer">암 유전자 검사</a></li> 
                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer-genome#hereditary">암 감수성 검사</a></li> 
                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer-genome#brca">BRCA1/2 유전자 검사</a></li> 
                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer-genome#gastric">위암 검사 패널</a></li> 
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="/${rc.locale.language }/business/diagnosis/ngs-panel#certification"">NGS 유전자패널 검사실</a> <!--신규 추가 -->
                    <div class="folding">
                        <button type="button"></button>
                        <ul class="cards-body">
                            <li><a href="/${rc.locale.language }/business/diagnosis/ngs-panel#certification">임상진단사업 인증 현황</a></li>
                            <li><a href="/${rc.locale.language }/business/diagnosis/ngs-panel#features">마크로젠 암 진단 패널의 <br>특징 및 경쟁력</a></li>
                            <li><a href="/${rc.locale.language }/business/diagnosis/ngs-panel#scope">NGS기반 유전자 패널 <br>검사실(PMG Lab) 구축 범위</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="/${rc.locale.language }/business/diagnosis/gclp#clin">GCLP(임상시험검체분석)</a> <!--신규 추가 -->
                    <div class="folding">
                        <button type="button"></button>
                        <ul class="cards-body">
                            <li><a href="/${rc.locale.language }/business/diagnosis/gclp#clin">ClinPham Seq</a></li>
                            <li><a href="/${rc.locale.language }/business/diagnosis/gclp#multi-omics">Multi Omics</a></li>
                            <li><a href="/${rc.locale.language }/business/diagnosis/gclp#sample">검체보관 서비스</a></li>
                        </ul>
                    </div>
                </li>
                <!-- <li><a href="/${rc.locale.language }/business/diagnosis/newborn">태아 및 희귀질환 검사</a></li> -->
            </ul>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/business/singlecell-multi">싱글셀분석서비스</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/business/singlecell-multi">Single Cell Multi-omics Analysis</a></li>
                <li><a href="/${rc.locale.language }/business/spatital">Spatial Transcriptome Analysis</a></li>
                <li><a href="/${rc.locale.language }/business/singlecell">Single Cell (In situ / Spatial)</a></li> <!-- 신규 추가 -->
            </ul>
        </div>
        <!-- //2023-04-27 수정 -->
    </div>

    <!-- 2023-04-27 R&D 메뉴 "macrogen" 하위메뉴로 이동 -->

    <!--Newsroom-->
    <div class="box clearfix">
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/newsroom/news">뉴스</a></div>
        </div>
        <%-- <div class="item">
            <div class="title"><a href="/${rc.locale.language }/newsroom/media-library">미디어라이브러리</a></div>
        </div> --%>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/newsroom/notice">공지사항</a></div>
        </div>
    </div>
    <!--IR-->
    <div class="box clearfix">
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/ir/financial">재무정보</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/ir/announcement">공시정보</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/ir/announcement">공고</a></li>
                <li><a href="/${rc.locale.language }/ir/disclosure">공시정보</a></li>
            </ul>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/ir/news">IR소식</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/ir/investor-inquiries">투자자 문의</a></div>
        </div>
    </div>
    <!--ESG-->
    <div class="box clearfix">
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/esg-management">ESG경영</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/ethical-management">윤리경영</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/social-contribution">사회공헌</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/greenhouse-gas">온실가스</a></div>
        </div>
        <!-- <div class="item">
            <div class="title"><a href="#">ESG평가</a></div>
        </div> -->
    </div>
</div>

<!-- 2023-04-27 스크립트내용 추가 -->
<script>
    var gnb2depth = $('#gnb2Depth .box')
    gnbIndex = $('#gnb li')

    $('#gnb li').mouseover(function () {
        $('.header-main').css('background','#fff');
        $(this).parents('#header').addClass('header-bg-white')
        gnbIndex.removeClass('active');
        $(this).addClass('active');
        gnb2depth.removeClass('active');
        let idx = $(this).index();
        gnb2depth.eq(idx).addClass('active');
        $('#gnb2Depth').css({
            borderBottom:"1px solid #e9e9e9",
            borderTop:"1px solid #e9e9e9"
        })
    });

    gnb2depth.mouseover(function () {
        gnbIndex.removeClass('active');
        let idx = $(this).index();
        gnbIndex.eq(idx).addClass('active');

    });

    $('#header').on({
        "mouseleave" : function () {//2023-04-27::"focusout" 삭제
            gnb2depth.removeClass('active')
            gnbIndex.removeClass('active')
            $('.header-main').css('background','none');
            $('#gnb2Depth').css('border','none')
            if ($('html').is('.animated')) {
                $('#header').removeClass('header-bg-white')
            }

            $('.item li a').removeClass('activation');
            $('.folding').removeClass('on');
            $('.folding ul').slideUp(250);
        }
    })

    var gnbSet = {
        click: function (target, speed) {
            var _self = this, $target = $(target);
            _self.speed = speed || 300;
            $target.each(function () {
                if (findChildren($(this))) {
                    return;
                }
                $(this).addClass('noDepth');
            });

            function findChildren(obj) {
                return obj.find('> ul').length > 0;
            }

            $target.on('click', 'button', function (e) {
                e.stopPropagation();
                $('.item li a').removeClass('activation');
                $('.folding').removeClass('on');
                $('.folding ul').slideUp(250);
                var $this = $(this),$depthTarget = $this.next();
                if ($depthTarget.css('display') == 'none') {
                    _self.activeOn($this);
                    $depthTarget.slideDown(_self.speed);
                } else {
                    $depthTarget.slideUp(_self.speed);
                    _self.activeOff($this);
                }
            })
        }, activeOff: function ($target) {
            $target.parent().removeClass('on');
            $target.parent().prev('a').removeClass('activation');
        }, activeOn: function ($target) {
            $target.parent().addClass('on');
            $target.parent().prev('a').addClass('activation');
        }
    };
    $(function () {
        gnbSet.click('.item .folding', 300)
    });

</script>
<!-- //2023-04-27 스크립트내용 추가 -->
