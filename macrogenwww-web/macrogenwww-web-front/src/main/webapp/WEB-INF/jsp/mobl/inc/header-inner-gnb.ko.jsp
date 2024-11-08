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
                <!--2023-04-28::투뎁스 "-" 삭제-->
                <ul>
                    <li><a href="#none">MACROGEN</a>
                        <ul>
                            <li><a href="#none">회사소개</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/company/overview">- 기업개요</a></li>
                                    <li><a href="/${rc.locale.language }/company/bod">- 경영진</a></li>
                                    <li><a href="/${rc.locale.language }/company/history">- 연혁</a></li>
                                    <li><a href="/${rc.locale.language }/company/vision">- 비전</a></li>
                                    <li><a href="/${rc.locale.language }/company/certification">- 인증</a></li>
                                </ul>
                            </li>
                            <li><a href="/${rc.locale.language }/company/global-network">글로벌 네트워크</a></li>
                            <li><a href="#none">채용</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/company/qualified-image">- 인재상</a></li>
                                    <li><a href="/${rc.locale.language }/company/hrm">- 인사제도</a></li>
                                    <li><a href="/${rc.locale.language }/company/recruit">- 채용안내</a></li>
                                </ul>
                            </li>
                            <!--2023-04-28::뎁스이동-->
                            <li><a href="#none">Resource</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/rnd/patent">- 특허</a></li>
                                    <li><a href="/${rc.locale.language }/rnd/thesis">- 논문</a></li>
                                </ul>                        
                            </li>
                            <li><a href="#none">R&D</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/rnd/institute/precision-medicine">- 정밀의학연구소</a></li>
                                    <li><a href="/${rc.locale.language }/rnd/institute/bioinformatics">- 생명정보학연구소</a></li>
                                    <%-- <li><a href="/${rc.locale.language }/rnd/institute/biome">- 더바이옴연구소</a></li>
                                    <li><a href="/${rc.locale.language }/rnd/institute/sync-genes">- 싱크진연구소</a></li>
                                    <li><a href="/${rc.locale.language }/rnd/institute/bigdata">- 빅데이터연구소</a></li> --%>
                                </ul>
                            </li>
                            <!--//2023-04-28::뎁스이동-->
                        </ul>
                    </li>
                    <!-- 2023-04-28 수정 -->
                    <li><a href="#none">Service</a>
                        <ul>
                            <!-- 추후 론칭(오픈 시 숨김) -->
                            <!-- <li><a href="#none">헬스케어 플랫폼</a>
                                <ul>
                                    <li><a href="#">- CanBe</a></li>
                                </ul>
                            </li> -->
                            <!-- //추후 론칭(오픈 시 숨김) -->
                            <li><a href="#none">퍼스널 헬스케어</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/business/healthcare/personal-genetic">- 질병예측 유전자검사</a></li>
                                    <li><a href="/${rc.locale.language }/business/healthcare/dtc-genetic">- 건강관리 플랫폼</a></li> <!-- 2024-04-18 추가 -->
                                    <li><a href="/${rc.locale.language }/business/healthcare/dtc-biome">- DTC 바이옴검사</a></li>
                                </ul>
                            </li>
                            <li><a href="#none">반려동물 헬스케어</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/business/healthcare/pet-genetic">- 반려동물 유전자검사</a></li>
                                </ul>
                            </li>
                            <li><a href="#none">연구분석서비스</a>
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
                                        <ul class="cards-body">
                                            <li><a href="/${rc.locale.language }/business/research/ces#standard">Standard Sequencing</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/ces#identification">Identification</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/ces#fragment">Fragment</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/ces#customized">Customized Sequencing</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/ces#human">Human ID</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">- Microarray</a>
                                        <ul class="cards-body">
                                            <li><a href="/${rc.locale.language }/business/research/microarray#expression">Expression Microarray</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/microarray#genome">Genome Microarray</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/microarray#epigenome">Epigenome Microarray</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">- Proteomics</a>
                                        <ul class="cards-body">
                                            <li><a href="/${rc.locale.language }/business/research/proteomics">Proteomics Olink</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/${rc.locale.language }/business/research/gene-synthesis">- Gene Synthesis</a></li>
                                    <li><a href="#">- Oligo</a>
                                        <ul class="cards-body">
                                            <li><a href="/${rc.locale.language }/business/research/oligo#dna">DNA Oligo Synthesis</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/oligo#rna">RNA Oligo Synthesis</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/oligo#peptide">Peptide Synthesis</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">- 모델동물/크리스퍼</a>
                                        <ul class="cards-body">
                                            <li><a href="/${rc.locale.language }/business/research/model#crispr">CRISPR Knock-in/out</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/model#gem">GEM</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/model#mass">Mass Production</a></li>
                                            <li><a href="/${rc.locale.language }/business/research/model#additional">Additional</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/${rc.locale.language }/business/research/reagent">- 연구용 시약 및 소모품</a></li>
                                </ul>
                            </li>
                            <li><a href="#none">임상분석서비스</a>
                                <ul>
                                    <li><a href="#">- 정밀의학</a>
                                        <ul class="cards-body">
                                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer#prediction">암 발생 위험 예측</a></li>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer#analyze">암 발생 원인 분석</a></li>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer#monitoring">암 발생 모니터링</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">- 암 유전체 검사</a>
                                        <ul class="cards-body">
                                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer-genome#cancer">암 유전자 검사</a></li>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer-genome#hereditary">암 감수성 검사</a></li>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer-genome#brca">BRCA1/2 유전자 검사</a></li>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/cancer-genome#gastric">위암 검사 패널</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">- NGS 유전자패널 검사실</a>
                                        <ul class="cards-body">
                                            <li><a href="/${rc.locale.language }/business/diagnosis/ngs-panel#certification">임상진단사업 인증 현황</a></li>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/ngs-panel#features">마크로젠 암 진단 패널의 특징 및 경쟁력</a></li>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/ngs-panel#scope">NGS기반 유전자 패널 검사실(PMG Lab) 구축 범위</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">- GCLP(임상시험검체분석)</a>
                                        <ul class="cards-body">
                                            <li><a href="/${rc.locale.language }/business/diagnosis/gclp#clin">ClinPham Seq</a></li>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/gclp#multi-omics">Multi Omics</a></li>
                                            <li><a href="/${rc.locale.language }/business/diagnosis/gclp#sample">검체보관 서비스</a></li>
                                        </ul>
                                    </li>
                                    <!-- <li><a href="/${rc.locale.language }/business/diagnosis/newborn">태아 및 희귀질환 검사</a></li> -->
                                </ul>
                            </li>
                            <li><a href="#none">싱글셀 분석서비스</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/business/singlecell-multi">- Single Cell Multi-omics Analysis</a></li>
                                    <li><a href="/${rc.locale.language }/business/spatital">- Spatial Transcriptome Analysis</a></li>
                                    <li><a href="/${rc.locale.language }/business/singlecell">- Single Cell (In situ / Spatial)</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <!-- //2023-04-27 수정 -->

                    <!-- 2023-04-28 R&D 메뉴 "macrogen" 하위메뉴로 이동 -->
                    
                    <li><a href="#none">NEWSROOM</a>
                        <ul>
                            <li><a href="/${rc.locale.language }/newsroom/news">뉴스</a></li>
                            <%-- <li><a href="/${rc.locale.language }/newsroom/media-library">미디어라이브러리</a></li> --%>
                            <li><a href="/${rc.locale.language }/newsroom/notice">공지사항</a></li>
                        </ul>
                    </li>
                    <li><a href="#none">ir</a>
                        <ul>
                            <li><a href="/${rc.locale.language }/ir/financial">재무정보</a></li>
                            <li><a href="#none">공시정보</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/ir/announcement">- 공고</a></li>
                                    <li><a href="/${rc.locale.language }/ir/disclosure">- 공시정보</a></li>
                                </ul>
                            </li>
                            <li><a href="/${rc.locale.language }/ir/news">IR소식</a></li>
                            <li><a href="/${rc.locale.language }/ir/investor-inquiries">투자자 문의</a></li>
                        </ul>
                    </li>
                    <li><a href="#none">esg</a>
                        <ul>
                            <li><a href="/${rc.locale.language }/company/esg-management">ESG경영</a></li>
                            <li><a href="/${rc.locale.language }/company/ethical-management">윤리경영</a></li>
                            <li><a href="/${rc.locale.language }/company/social-contribution">사회공헌</a></li>
                            <li><a href="/${rc.locale.language }/company/greenhouse-gas">온실가스</a></li>
                        </ul>
                    </li>
                </ul>
                <!--//2023-04-28::투뎁스 "-" 삭제-->
            </div>
            <div class="gnb-footer">
                <a href="/ko/main" class="btn-lang on">K0R</a>
                <a href="/en/main" class="btn-lang">ENG</a>
                <%-- <a href="https://glo.macrogen.com/en/main/index.php" target="_blank" class="btn-lang">ENG</a> --%>
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
