<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<div class="inner">
	<div class="section_gnb">
	    <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
	    <nav>
	        <ul id="gnb"> 
                <li><span class="font-bold">macrogen</span></li>
                <li><span class="font-bold">Service</span></li><!--2023-05-02 수정-->
                <!-- <li><span class="font-bold">r&#38;d</span></li> 2023-05-02 삭제 -->
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
	    	<a href="/en/contact-us" class="btn btn-round"><span>Contact Us</span></a>
	        <a href="/ko/main" class="btn btn-round"><i class="icon icon-earth-black"></i><span>KOR</span></a>
	    </div>
	</div>
</div>
<div class="gnb-2depth" id="gnb2Depth">
    <!--Macrogen-->
    <div class="box clearfix">
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/overview">Company</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/company/overview">About MACROGEN</a></li>
                <li><a href="/${rc.locale.language }/company/bod">Executive Leadership</a></li>
                <li><a href="/${rc.locale.language }/company/history">History</a></li>
                <li><a href="/${rc.locale.language }/company/vision">Vision</a></li>
                <li><a href="/${rc.locale.language }/company/certification">Certification & Accreditation</a></li>
                <!-- <li><a href="/${rc.locale.language }/company/contact-us">Contact us</a></li> -->
            </ul>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/global-network">Global Network</a></div>
        </div>
        <!-- 2023-05-02 추가 -->
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/rnd/patent">Resource</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/rnd/patent">Patents</a></li>
                <li><a href="/${rc.locale.language }/rnd/thesis">Papers</a></li>
            </ul>
        </div>
        <div class="item">
            <div class="title"><a href="#">R&#38;D</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/rnd/institute/precision-medicine">Precision Medicine Institute</a></li>
                <li><a href="/${rc.locale.language }/rnd/institute/bioinformatics">Bioinformatics Institute</a></li>
                <%-- <li><a href="/${rc.locale.language }/rnd/institute/biome">The Biome Institute</a></li>
                <li><a href="/${rc.locale.language }/rnd/institute/sync-genes">Sync Genes Institute</a></li>
                <li><a href="/${rc.locale.language }/rnd/institute/bigdata">Big Data Institute for Health</a></li> --%>
            </ul>
        </div>
        <!-- //2023-05-02 추가 -->
    </div>
    <!--Business-->
    <div class="box clearfix">
        <!-- 2023-05-02 수정 -->
        <!-- 추후 론칭(오픈 시 숨김) -->
        <!-- <div class="item">
            <div class="title"><a href="#">Healthcare Platform</a></div>
            <ul>
                <li><a href="#">CanBe</a></li>
            </ul>
        </div> -->
        <!-- //추후 론칭(오픈 시 숨김) -->
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/business/healthcare/personal-genetic">Personal Healthcare</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/business/healthcare/personal-genetic">Disease Prediction<br>&#38; Wellness Genetic Test</a></li>
                <li><a href="/${rc.locale.language }/business/healthcare/dtc-genetic">Healthcare Platform</a></li>
                <!-- 추후 론칭(오픈 시 숨김)<li><a href="/${rc.locale.language }/business">마이크로바이옴 검사솔루션</a></li> -->
            </ul>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/business/healthcare/pet-genetic">Pet Healthcare</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/business/healthcare/pet-genetic">Pet DNA Test</a></li>
            </ul>
        </div>
        <div class="item menu0204">
            <div class="title"><a href="/${rc.locale.language }/business/research/ngs">Research Services</a></div>
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
                    <a href="/${rc.locale.language }/business/research/model#crispr">GEM/CRISPR</a>
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
                <%-- <li>
                    <a href="/${rc.locale.language }/business/research/reagent">Reagent &#38; LABware</a>
                </li> --%>
            </ul>
        </div>
        <div class="item menu0205">
            <div class="title"><a href="/${rc.locale.language }/business/diagnosis/cancer">Clinical Services</a></div>
            <ul>
                <li>
                    <a href="/${rc.locale.language }/business/diagnosis/cancer#prediction">Precision Medicine</a>
                    <div class="folding">
                        <button type="button"></button>
                        <ul class="cards-body">
                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer#prediction">Cancer risk prediction</a></li>
                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer#analyze">Analysis of causes of <br>cancer</a></li>
                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer#monitoring">Cancer Occurrence <br>Monitoring</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="/${rc.locale.language }/business/diagnosis/cancer-genome#cancer">Genetic testing <br>for cancer risk</a> <!--신규 추가 -->
                    <div class="folding">
                        <button type="button"></button>
                        <ul class="cards-body">
                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer-genome#cancer">Cancer Panel</a></li> 
                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer-genome#hereditary">Hereditary Cancer Panel</a></li> 
                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer-genome#brca">BRCA1/2 Cancer Panel</a></li> 
                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer-genome#gastric">Gastric Cancer Panel</a></li> 
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="/${rc.locale.language }/business/diagnosis/ngs-panel#certification">NGS-based Genetic <br>Panel Lab</a> <!--신규 추가 -->
                    <div class="folding">
                        <button type="button"></button>
                        <ul class="cards-body">
                            <li><a href="/${rc.locale.language }/business/diagnosis/ngs-panel#certification">Certification acquired by <br>Macrogen in the clinical <br>diagnosis business</a></li>
                            <li><a href="/${rc.locale.language }/business/diagnosis/ngs-panel#features">Key features and strengths <br>of  Macrogen’s cancer panels</a></li>
                            <li><a href="/${rc.locale.language }/business/diagnosis/ngs-panel#scope">Scope of projects to set up <br>NGS-based PMG labs</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="/${rc.locale.language }/business/diagnosis/gclp#clin">GCLP</a> <!--신규 추가 -->
                    <div class="folding">
                        <button type="button"></button>
                        <ul class="cards-body">
                            <li><a href="/${rc.locale.language }/business/diagnosis/gclp#clin">ClinPham Seq</a></li>
                            <li><a href="/${rc.locale.language }/business/diagnosis/gclp#multi-omics">Multi Omics</a></li>
                            <li><a href="/${rc.locale.language }/business/diagnosis/gclp#sample">Storage of samples</a></li>
                        </ul>
                    </div>
                </li>
                <!-- <li><a href="/${rc.locale.language }/business/diagnosis/newborn">태아 및 희귀질환 검사</a></li> -->
            </ul>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/business/singlecell-multi">Single Cell Expert Services</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/business/singlecell-multi">Single Cell Multi-omics Analysis</a></li>
                <li><a href="/${rc.locale.language }/business/spatital">Spatial Transcriptome Analysis</a></li>
                <li><a href="/${rc.locale.language }/business/singlecell">Single Cell (In situ / Spatial)</a></li> <!-- 신규 추가 -->
            </ul>
        </div>
        <!-- //2023-05-02 수정 -->
    </div>

    <!-- 2023-05-02 R&D 메뉴 "macrogen" 하위메뉴로 이동 -->
    
    <!--Newsroom-->
    <div class="box clearfix">
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/newsroom/news">News</a></div>
        </div>
        <%-- <div class="item">
            <div class="title"><a href="/${rc.locale.language }/newsroom/media-library">Media library</a></div>
        </div> --%>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/newsroom/notice">Notice</a></div>
        </div>
    </div>
    <!--IR-->
    <div class="box clearfix">
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/ir/financial">Financial Information</a></div>
        </div>
        <%--
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
         --%>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/ir/investor-inquiries">Investment Inquiries</a></div>
        </div>
    </div>
    <!--ESG-->
    <div class="box clearfix">
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/esg-management">ESG Management</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/ethical-management">Ethical Management</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/social-contribution">Social Responsibility</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/greenhouse-gas">Greenhouse gas emissions</a></div>
        </div>
        <!-- <div class="item">
            <div class="title"><a href="#">ESG평가</a></div>
        </div> -->
    </div>
</div>
<!-- 2023-05-02 스크립트내용 추가 -->
<script>
    var gnb2depth = $('#gnb2Depth .box')
    let gnbIndex = $('#gnb li')

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
        "mouseleave" : function () {//2023-05-02::"focusout" 삭제
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
<!-- //2023-05-02 스크립트내용 추가 -->
