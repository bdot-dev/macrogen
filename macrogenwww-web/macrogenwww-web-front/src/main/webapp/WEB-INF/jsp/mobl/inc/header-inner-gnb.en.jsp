<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<div class="modal gnb" tabindex="-1" id="gnb" data-bs-backdrop="static" aria-labelledby="modal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="gnb-content">
            <div class="gnb-header">
                <h2 class="logo"><a href="/">마크로젠 로고</a></h2>
                <a href="#" class="btn-close-black" data-bs-dismiss="modal" aria-label="Close"><span class="sr-only">닫기</span></a>
            </div>
            <div class="gnb-body" id="menu">
                <!--2023-05-02::투뎁스 "-" 삭제-->
                <ul>
                    <li><a href="#none">MACROGEN</a>
                        <ul>
                            <li><a href="#none">Company</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/company/overview">- About  MACROGEN</a></li>
                                    <li><a href="/${rc.locale.language }/company/bod">- Executive Leadership </a></li>
                                    <li><a href="/${rc.locale.language }/company/history">- History</a></li>
                                    <li><a href="/${rc.locale.language }/company/vision">- Vision</a></li>
                                    <li><a href="/${rc.locale.language }/company/certification">- Certification & Accreditation</a></li>
                                </ul>
                            </li>
                            <li><a href="/${rc.locale.language }/company/global-network">Global Network</a></li>
                            <!--2023-05-02::뎁스이동-->
                            <li><a href="#none">Resource</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/rnd/patent">- Patents</a></li>
                                    <li><a href="/${rc.locale.language }/rnd/thesis">- Papers</a></li>
                                </ul>                        
                            </li>
                            <li><a href="#none">R&#38;D</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/rnd/institute/precision-medicine">- Precision Medicine Institute</a></li>
                                    <li><a href="/${rc.locale.language }/rnd/institute/bioinformatics">- Bioinformatics Institute</a></li>
                                    <%-- <li><a href="/${rc.locale.language }/rnd/institute/biome">- The Biome Institute</a></li>
                                    <li><a href="/${rc.locale.language }/rnd/institute/sync-genes">- Sync Genes Institute</a></li>
                                    <li><a href="/${rc.locale.language }/rnd/institute/bigdata">- Big Data Institute for Health</a></li> --%>
                                </ul>
                            </li>
                            <!--//2023-05-02::뎁스이동-->
                        </ul>
                    </li>
                    <!-- 2023-05-02 수정 -->
                    <li><a href="#none">Service</a>
                        <ul>
                            <!-- 추후 론칭(오픈 시 숨김) -->
                            <!-- <li><a href="#none">Healthcare Platform</a>
                                <ul>
                                    <li><a href="#">- CanBe</a></li>
                                </ul>
                            </li> -->
                            <!-- //추후 론칭(오픈 시 숨김) -->
                            <li><a href="#none">Personal Healthcare</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/business/healthcare/personal-genetic">- Disease Prediction &#38; Wellness Genetic Test</a></li>
                                    <li><a href="/${rc.locale.language }/business/healthcare/dtc-genetic">- Healthcare Platform</a></li>
                                    <!-- 추후 론칭(오픈 시 숨김)<li><a href="/${rc.locale.language }/business/">- 마이크로바이옴 검사솔루션</a></li> -->
                                </ul>
                            </li>
                            <li><a href="#none">Pet Healthcare</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/business/healthcare/pet-genetic">- Pet DNA Test</a></li>
                                </ul>
                            </li>
                            <li><a href="#none">Research Services</a>
                                <ul>
                                    <li><a href="#">- NGS</a>
                                        <ul>
                                            <li><a href="/${rc.locale.language }/business/research/ngs#genome">Whole Genome Sequencing</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/ngs#exome">Whole Exome Sequencing</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/ngs#transcriptome">Transcriptome Sequencing</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/ngs#epigenome">Epigenome Sequencing</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/ngs#metagenome">Metagenome Sequencing</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">- CES</a>
                                        <ul>
                                            <li><a href="/${rc.locale.language }/business/research/ces#standard">Standard Sequencing</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/ces#identification">Identification</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/ces#fragment">Fragment</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/ces#customized">Customized Sequencing</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/ces#human">Human ID</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">- Microarray</a>
                                        <ul>
                                            <li><a href="/${rc.locale.language }/business/research/microarray#expression">Expression Microarray</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/microarray#genome">Genome Microarray</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/microarray#epigenome">Epigenome Microarray</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">- Proteomics</a>
                                        <ul>
                                            <li><a href="/${rc.locale.language }/business/research/proteomics">Proteomics Olink</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/${rc.locale.language }/business/research/gene-synthesis">- Gene Synthesis</a></li>
                                    <li><a href="#">- Oligo</a>
                                        <ul>
                                            <li><a href="/${rc.locale.language }/business/research/oligo#dna">DNA Oligo Synthesis</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/oligo#rna">RNA Oligo Synthesis</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/oligo#peptide">Peptide Synthesis</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">- GEM/CRISPR</a>
                                        <ul>
                                            <li><a href="/${rc.locale.language }/business/research/model#crispr">CRISPR Knock-in/out</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/model#gem">GEM</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/model#mass">Mass Production</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/model#additional">Additional</a></li>
                                        </ul>
                                    </li>
                                    <%-- <li><a href="/${rc.locale.language }/business/research/reagent">- Reagent &#38; LABware</a></li> --%>
                                </ul>
                            </li>
                            <li><a href="#none">Clinical Services</a>
                                <ul>
                                    <li><a href="#">- Precision Medicine</a>
                                        <ul>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer#prediction">Cancer risk prediction</a></li>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer#analyze">Analysis of causes of cancer</a></li>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer#monitoring">Cancer Occurrence Monitoring</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">- Genetic testing for cancer risk</a>
                                        <ul>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer-genome#cancer">Cancer Panel</a></li>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer-genome#hereditary">Hereditary Cancer Panel</a></li>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer-genome#brca">BRCA1/2 Cancer Panel</a></li>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer-genome#gastric">Gastric Cancer Panel</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">- NGS-based Genetic Panel Lab</a>
                                        <ul>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/ngs-panel#certification">Certification acquired by Macrogen in the clinical diagnosis business</a></li>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/ngs-panel#features">Key features and strengths of  Macrogen’s cancer panels</a></li>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/ngs-panel#scope">Scope of projects to set up NGS-based PMG labs</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">- GCLP</a>
                                        <ul>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/gclp#clin">ClinPham Seq</a></li>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/gclp#multi-omics">Multi Omics</a></li>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/gclp#sample">Storage of samples</a></li>
                                        </ul>
                                    </li>
                                    <!-- <li><a href="/${rc.locale.language }/business/diagnosis/newborn">태아 및 희귀질환 검사</a></li> -->
                                </ul>
                            </li>
                            <li><a href="#none">Single Cell Expert Services</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/business/singlecell-multi">- Single Cell Multi-omics Analysis</a></li>
                                    <li><a href="/${rc.locale.language }/business/spatital">- Spatial Transcriptome Analysis</a></li>
                                    <li><a href="/${rc.locale.language }/business/singlecell">- Single Cell (In situ / Spatial)</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <!-- //2023-05-02 수정 -->

                    <!-- 2023-05-02 R&D 메뉴 "macrogen" 하위메뉴로 이동 -->

                    <li><a href="#none">NEWSROOM</a>
                        <ul>
                            <li><a href="/${rc.locale.language }/newsroom/news">News</a></li>
                            <%-- <li><a href="/${rc.locale.language }/newsroom/media-library">Media library</a></li> --%>
                            <li><a href="/${rc.locale.language }/newsroom/notice">Notice</a></li>
                        </ul>
                    </li>
                    <li><a href="#none">ir</a>
                        <ul>
                            <li><a href="/${rc.locale.language }/ir/financial">Financial Information</a></li>
                            <%--
                            <li><a href="#none">- 공시정보</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/ir/announcement">- 공고</a></li>
                                    <li><a href="/${rc.locale.language }/ir/disclosure">- 공시정보</a></li>
                                </ul>
                            </li>
                            <li><a href="/${rc.locale.language }/ir/news">- IR소식</a></li>
                             --%>
                            <li><a href="/${rc.locale.language }/ir/investor-inquiries">Investment Inquiries</a></li>
                        </ul>
                    </li>
                    <li><a href="#none">esg</a>
                        <ul>
                            <li><a href="/${rc.locale.language }/company/esg-management">ESG Management</a></li>
                            <li><a href="/${rc.locale.language }/company/ethical-management">Ethical Management</a></li>
                            <li><a href="/${rc.locale.language }/company/social-contribution">Social Responsibility</a></li>
                            <li><a href="/${rc.locale.language }/company/greenhouse-gas">Greenhouse gas emissions</a></li>
                        </ul>
                    </li>
                </ul>
                <!--//2023-05-02::투뎁스 "-" 삭제-->
            </div>
            <div class="gnb-footer">
                <a href="/ko/main" class="btn-lang">K0R</a>
                <a href="/en/main" class="btn-lang on">ENG</a>
            </div>
            </div>
        </div>
    </div>
</div>
<script>
    // gnb show
    var gnbEl = document.getElementById('gnb')
    var gnb = new bootstrap.Modal(gnbEl);

    // gnb.show();

    // gnb menu
    (function ($) {
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

                $target.on('click', 'a', function (e) {
                    e.stopPropagation();
                    var $this = $(this), $depthTarget = $this.next(), $siblings = $this.parent().siblings();
                    $this.parent('li').find('ul li').removeClass('on');
                    $siblings.removeClass('on');
                    $siblings.find('ul').slideUp(250);
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
            }, activeOn: function ($target) {
                $target.parent().addClass('on');
            }
        };
        $(function () {
            gnbSet.click('#menu li', 300)
        });
    }(jQuery));

    // btn-lang
    $('.btn-lang').on('click',function (){
        // $(this).addClass('on').siblings().removeClass('on')
    })
</script>
