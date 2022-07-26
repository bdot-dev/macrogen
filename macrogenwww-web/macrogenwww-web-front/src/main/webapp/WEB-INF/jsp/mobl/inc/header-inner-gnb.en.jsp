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
                <ul>
                    <li><a href="#none">MACROGEN</a>
                        <ul>
                            <li><a href="#none">- Company</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/company/overview">- About  MACROGEN</a></li>
                                    <li><a href="/${rc.locale.language }/company/bod">- Executive Leadership </a></li>
                                    <li><a href="/${rc.locale.language }/company/history">- History</a></li>
                                    <li><a href="/${rc.locale.language }/company/vision">- Vision</a></li>
                                    <li><a href="/${rc.locale.language }/company/certification">- Certification & Accreditation</a></li>
                                </ul>
                            </li>
                            <li><a href="/${rc.locale.language }/company/global-network">- Global Network</a></li>
                            <%-- <li><a href="#none">- 채용</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/company/qualified-image">- 인재상</a></li>
                                    <li><a href="/${rc.locale.language }/company/hrm">- 인사제도</a></li>
                                    <li><a href="/${rc.locale.language }/company/recruit">- 채용안내</a></li>
                                </ul>
                            </li> --%>
                        </ul>
                    </li>
                    <li><a href="#none">business</a>
                        <ul>
                            <li><a href="#none">- Research</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/business/research/ngs">- NGS</a></li>
                                    <li><a href="/${rc.locale.language }/business/research/ces">- CES</a></li>
                                    <li><a href="/${rc.locale.language }/business/research/gene-synthesis">- Gene Synthesis</a></li>
                                    <li><a href="/${rc.locale.language }/business/research/oligo">- Oligo</a></li>
                                    <li><a href="/${rc.locale.language }/business/research/microarray">- Microarray</a></li>
                                    <li><a href="/${rc.locale.language }/business/research/model">- GEM</a></li>
                                </ul>
                            </li>
                            <li><a href="#none">- Clinical Diagnostics</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/business/diagnosis/cancer">- Cancer Genome Testing</a></li>
                                    <li><a href="/${rc.locale.language }/business/diagnosis/newborn">- Genetic Disorder</a></li>
                                    <li><a href="/${rc.locale.language }/business/diagnosis/covid">- COVID-19</a></li>
                                </ul>
                            </li>
                            <li><a href="#none">- Healthcare</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/business/healthcare/personal-genetic">- Personal Genome Analysis</a></li>
                                    <li><a href="/${rc.locale.language }/business/healthcare/intestinal-microbiome">- Microbiome Analysis</a></li>
                                    <li><a href="/${rc.locale.language }/business/healthcare/pet-genetic">- Pet DNA Test</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#none">r&d</a>
                        <ul>
                            <li><a href="/${rc.locale.language }/rnd/institute/precision-medicine">- Precision Medicine Institute</a></li>
                            <li><a href="/${rc.locale.language }/rnd/institute/bioinformatics">- Bioinformatics Institute</a></li>
                            <li><a href="/${rc.locale.language }/rnd/institute/biome">- The Biome Institute </a></li>
                            <li><a href="/${rc.locale.language }/rnd/institute/sync-genes">- SyncGenes Institute</a></li>
                            <li><a href="/${rc.locale.language }/rnd/institute/bigdata">- Big Data Institute for Health</a></li>
                            <li><a href="#none">- Patents/Papers</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/rnd/patent">- Patents</a></li>
                                    <li><a href="/${rc.locale.language }/rnd/thesis">- Papers</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#none">NEWSROOM</a>
                        <ul>
                            <li><a href="/${rc.locale.language }/newsroom/news">- News</a></li>
                            <li><a href="/${rc.locale.language }/newsroom/media-library">- Media library</a></li>
                            <li><a href="/${rc.locale.language }/newsroom/notice">- Notice</a></li>
                        </ul>
                    </li>
                    <li><a href="#none">ir</a>
                        <ul>
                            <li><a href="/${rc.locale.language }/ir/financial">- Financial Information</a></li>
                            <%--
                            <li><a href="#none">- 공시정보</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/ir/announcement">- 공고</a></li>
                                    <li><a href="/${rc.locale.language }/ir/disclosure">- 공시정보</a></li>
                                </ul>
                            </li>
                            <li><a href="/${rc.locale.language }/ir/news">- IR소식</a></li>
                             --%>
                            <li><a href="/${rc.locale.language }/ir/investor-inquiries">- Investment Inquiries</a></li>
                        </ul>
                    </li>
                    <li><a href="#none">esg</a>
                        <ul>
                            <li><a href="/${rc.locale.language }/company/esg-management">- ESG Management</a></li>
                            <li><a href="/${rc.locale.language }/company/ethical-management">- Ethical Management</a></li>
                            <li><a href="/${rc.locale.language }/company/social-contribution">- Social Responsibility</a></li>
                        </ul>
                    </li>
                </ul>
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
