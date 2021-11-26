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
                            <li><a href="#none">- 회사소개</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/company/overview">- 기업개요</a></li>
                                    <li><a href="/${rc.locale.language }/company/bod">- 경영진</a></li>
                                    <li><a href="/${rc.locale.language }/company/history">- 연혁</a></li>
                                    <li><a href="/${rc.locale.language }/company/vision">- 비전</a></li>
                                    <li><a href="/${rc.locale.language }/company/certification">- 인증</a></li>
                                </ul>
                            </li>
                            <li><a href="/${rc.locale.language }/company/global-network">- 글로벌 네트워크</a></li>
                            <li><a href="#none">- 채용</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/company/qualified-image">- 인재상</a></li>
                                    <li><a href="/${rc.locale.language }/company/hrm">- 인사제도</a></li>
                                    <li><a href="/${rc.locale.language }/company/recruit">- 채용안내</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#none">business</a>
                        <ul>
                            <li><a href="#none">- 연구서비스</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/business/research/ngs">- NGS</a></li>
                                    <li><a href="/${rc.locale.language }/business/research/ces">- CES</a></li>
                                    <li><a href="/${rc.locale.language }/business/research/oligo">- Oligo</a></li>
                                    <li><a href="/${rc.locale.language }/business/research/microarray">- Microarray</a></li>
                                    <li><a href="/${rc.locale.language }/business/research/model">- 모델동물사업부</a></li>
                                </ul>
                            </li>
                            <li><a href="#none">- 임상진단서비스</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/business/diagnosis/cancer">- 암 유전체 검사</a></li>
                                    <li><a href="/${rc.locale.language }/business/diagnosis/newborn">- 태아 및 신생아 유전질환</a></li>
                                    <li><a href="/${rc.locale.language }/business/diagnosis/covid">- COVID-19</a></li>
                                </ul>
                            </li>
                            <li><a href="#none">- 헬스케어서비스</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/business/healthcare/personal-genetic">- 개인유전체분석</a></li>
                                    <li><a href="/${rc.locale.language }/business/healthcare/intestinal-microbiome">- 마이크로바이옴분석</a></li>
                                    <li><a href="/${rc.locale.language }/business/healthcare/pet-genetic">- 반려동물유전자분석</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#none">r&d</a>
                        <ul>
                            <li><a href="/${rc.locale.language }/rnd/institute/precision-medicine">- 정밀의학연구소</a></li>
                            <li><a href="/${rc.locale.language }/rnd/institute/bioinformatics">- 생명정보학연구소</a></li>
                            <li><a href="/${rc.locale.language }/rnd/institute/biome">- 더바이옴연구소</a></li>
                            <li><a href="/${rc.locale.language }/rnd/institute/sync-genes">- 싱크진연구소</a></li>
                            <li><a href="/${rc.locale.language }/rnd/institute/bigdata">- 빅데이터연구소</a></li>
                            <li><a href="#none">- 특허/논문</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/rnd/patent">- 특허</a></li>
                                    <li><a href="/${rc.locale.language }/rnd/thesis">- 논문</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#none">NEWSROOM</a>
                        <ul>
                            <li><a href="/${rc.locale.language }/newsroom/news">- 뉴스</a></li>
                            <li><a href="/${rc.locale.language }/newsroom/media-library">- 미디어라이브러리</a></li>
                            <li><a href="/${rc.locale.language }/newsroom/notice">- 공지사항</a></li>
                        </ul>
                    </li>
                    <li><a href="#none">ir</a>
                        <ul>
                            <li><a href="/${rc.locale.language }/ir/financial">- 재무정보</a></li>
                            <%--
                            <li><a href="#none">- 공시정보</a>
                                <ul>
                                    <li><a href="/${rc.locale.language }/ir/announcement">- 공고</a></li>
                                    <li><a href="/${rc.locale.language }/ir/disclosure">- 공시정보</a></li>
                                </ul>
                            </li>
                            <li><a href="/${rc.locale.language }/ir/news">- IR소식</a></li>
                             --%>
                            <li><a href="/${rc.locale.language }/ir/investor-inquiries">- 투자자 문의</a></li>
                        </ul>
                    </li>
                    <li><a href="#none">esg</a>
                        <ul>
                            <li><a href="/${rc.locale.language }/company/esg-management">- ESG경영</a></li>
                            <li><a href="/${rc.locale.language }/company/ethical-management">- 윤리경영</a></li>
                            <li><a href="/${rc.locale.language }/company/social-contribution">- 사회공헌</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="gnb-footer">
                <a href="/ko/main" class="btn-lang">K0R</a>
                <a href="/en/main" class="btn-lang on">ENG</a>
                <!-- <a href="https://glo.macrogen.com/en/main/index.php" target="_blank" class="btn-lang">ENG</a> -->
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
