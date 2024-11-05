<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="top-bg" style="background-image: url(/publishing/mobile-ko/dist/img/business/test-bg.png);">
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
            <h2 class="font-h1">COVID-19</h2>
            <div class="font-body-h">감염성 질환 진단을 위한 검사</div>
            <div class="btn-wrap"><a href="#tab_anchor" class="btn-service"><span class="sr-only">service</span></a></div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <!--covid19 공통 s -->
            <div class="subject-box">
                <p class="title font-h4">감염병 진단을 위한 분자진단 솔루션을 제공합니다</p>
                <p class="desc font-body">
                   최적의 검사 환경에서 시행되는 신속, 정확한 진단이 필수인 시대입니다.
                    이에 마크로젠은 높은 정확도의 진단 키트와 함께 이동성 및 안전성, 편의성을 갖춘 현장 진단 시스템을 구성하여 환자와 의료진 모두에게 친화적인 통합 솔루션을 제안합니다.
                </p>

            </div>
            <!--covid19 공통 e -->

            <!--covid19 탭 네비 s-->
            <div class="select-nav-box _content-anchor">
                <p class="title font-h4" id="tab_anchor">SERVICE</p>
                <div class="select-box">
                    <div class="selected-value _selected-value">
                        <span class="text">Axen™ COVID-19 항원/항체 진단키트</span>
                    </div>
                    <ul class="select-option _select-option">
                        <li class="option-value active"><a href="#">Axen™ COVID-19 항원/항체 진단키트</a></li>
                        <li class="option-value"><a href="#">스마트 모바일 랩</a></li>
                    </ul>
                </div>

            </div>
            <!--covid19 탭 네비 e-->

            <!--covid19 탭 메뉴 s-->
            <div class="info-box-wrap tab-content">
                <!--Axen™ COVID-19 RT 진단키트-->
                <div class="info-box info-covid19 show">
                    <p class="font-h4 main-title">Axen™ COVID-19 항원 진단키트</p>
                    <p class="desc img_bottom font-body">마크로젠 신속 항원 진단키트 Axen™ COVID-19 Ag RAPID는 97%의 높은 민감도로 타액, 비강 또는 비인두 검체에 존재하는 SARS-CoV-2 특정 항원을 정성 검출해 15분 이내 코로나바이러스 감염 여부를 신속히 진단할 수 있는 체외진단 의료기기입니다.</p>
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img_coronamedical1.png" alt="Axen™ COVID-19 항원 진단키트">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title figure_bottom">Specifications</p>
                            <div class="table-scroll">
                             <table class="table">
                                <colgroup>
                                    <col style="width:50%;">
                                    <col style="width:50%;">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th>제품 타입</th>
                                    <td>정성 신속진단키트<br>(면역크로마토그래피법)</td>
                                </tr>
                                <tr>
                                     <th rowspan="2">시료 및 시료양</th>
                                    <td>타액, 비강 또는 비인두 도말 검체</td>
                                </tr>
                                <tr>
                                    <td>4방울 (190㎕)</td>
                                </tr>
                                <tr>
                                    <th>측정시간</th>
                                    <td>15분</td>
                                </tr>
                                <tr>
                                    <th>사용기간</th>
                                    <td>24개월</td>
                                </tr>
                                <tr>
                                    <th>보관온도</th>
                                    <td>실온 (1 ~ 30℃)</td>
                                </tr>
                                <tr>
                                    <th>포장 사이즈</th>
                                    <td>30 T/Box</td>
                                </tr>
                                </tbody>
                            </table>
                            </div>
                        </div>
                        <div class="list-area">
                            <p class="font-body-h title img">Features</p>
                            <ul class="list-circle-dot features">
                                <li><span>신속:</span><p> 15분 이내 검사 결과를 확인 가능</p></li>
                                <li><span>정확:</span><p> 높은 민감도(96.9%, 126/130)와 특이도(97.3%, 146/150)로 정확한 진단 가능</p></li>
                                <li><span>간편:</span><p> 별도의 장비 없이 쉽고 간편한 사용으로 현장 검사 최적화</p></li>
                            </ul>
                        </div>
                        <div class="list-area last-list-area">
                            <p class="font-body-h title img">Certification</p>
                            <ul class="list-circle-dot">
                                <li><p>유럽 체외진단시약 인증(CE-IVD)</p></li>
                                <li><p>수출허가증 (CFS, Certificate of Free Sales)</p></li>
                            </ul>
                        </div>                        
                    </div>
                         <p class="font-h4 main-title">Axen™ COVID-19 항체 진단키트</p>
                    <p class="desc img_bottom font-body">마크로젠 신속 항체 진단키트 Axen™ COVID-19 lg RAPID는 97% 이상으로 높은 정확도로 검사자의 혈청, 혈장, 전혈에서 존재하는 SARS-CoV-2의 IgM / IgG 항체를 정성 검출하는
체외진단 의료기기입니다. 아주 적은 양의 혈액으로 15분 이내에 코로나바이러스 감염 진단이 가능합니다.</p>
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img_coronamedical2.png" alt="Axen™ COVID-19 항체 진단키트">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title figure_bottom">Specifications</p>
                            <div class="table-scroll">
                             <table class="table">
                                <colgroup>
                                    <col style="width:50%;">
                                    <col style="width:50%;">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th>제품 타입</th>
                                    <td>정성 신속진단키트<br>(면역크로마토그래피법)</td>
                                </tr>
                                <tr>
                                     <th rowspan="2">시료 및 시료양</th>
                                    <td>혈청, 혈장, 전혈</td>
                                </tr>
                                <tr>
                                    <td>3㎕</td>
                                </tr>
                                <tr>
                                	<th>버퍼희석액</th>
                                    <td>4방울 (180㎕)</td>
                                </tr>
                                <tr>
                                    <th>측정시간</th>
                                    <td>15분</td>
                                </tr>
                                <tr>
                                    <th>사용기간</th>
                                    <td>24개월</td>
                                </tr>
                                <tr>
                                    <th>보관온도</th>
                                    <td>실온 (1 ~ 30℃)</td>
                                </tr>
                                <tr>
                                    <th>포장 사이즈</th>
                                    <td>30 T/Box</td>
                                </tr>
                                </tbody>
                            </table>
                            </div>
                        </div>
                        <div class="list-area">
                            <p class="font-body-h title img">Features</p>
                            <ul class="list-circle-dot features">
                                <li><span>신속:</span><p> 15분 이내 검사 결과를 확인 가능</p></li>
                                <li><span>정확:</span><p> 높은 민감도(97.7%, 127/130)와 특이도(97.3%, 146/150)로 정확한 진단 가능</p></li>
                                <li><span>간편:</span><p> 별도의 장비 없이 쉽고 간편한 사용으로 현장 검사 최적화</p></li>
                            </ul>
                        </div>
                        <div class="list-area last-list-area2">
                            <p class="font-body-h title img">Certification</p>
                            <ul class="list-circle-dot">
                                <li><p>유럽 체외진단시약 인증(CE-IVD)</p></li>
                                <li><p>수출허가증 (CFS, Certificate of Free Sales)</p></li>
                            </ul>
                        </div>                        
                    </div>
                    <p class="notice-text"><i class="icon ico-info-blue"></i><span>임상진단 관련 서비스 항목은 개인적으로 의뢰할 수 없으며, 서비스 이용을 위해서는 전문의료인을 통한 문의가 필요합니다.</span></p>
                    <div class="btn-area">
                        <a href="mailto:ngsclinic@macrogen.com" class="btn btn-light"><span>서비스문의</span></a>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col disabled"><i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
                                <div class="col" onclick="setTabContent(1)"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--스마트 모바일 랩-->
                <div class="info-box">
                    <p class="font-h4 main-title">스마트 모바일 랩</p>
                    <p class="subject font-body-h">스마트 모바일 랩(Smart Mobile Lab)은 마크로젠이 전 세계 코로나19 대응을 위해 국내 최초로 구축한 ‘코로나19 현장 검사 시스템’입니다.</p>
                    <p class="desc img_bottom font-body">코로나 현장 검사를 위한 이동형 소형 검사실로, 바이러스 핵산 추출, 유전자 검사 및 분석 결과 도출까지 전 과정을 진행할 수 있는 올인원(all-in-one) 시스템으로 구성되어 있습니다.</p>
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img-smartmobile-intro.png" alt="스마트모바일랩">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h title img">Specifications</p>
                            <ul class="list-circle-dot">
                                <li><p>K-방역모델 사용</p></li>
                                <li><p>실험 및 예산에 따른 브랜드별 장비 선택 가능</p></li>
                                <li><p>전원 공급 방식 선택 가능 (외부전원 / 태양열 발전 선택 가능)</p></li>
                                <li><p>유지/보수 서비스 제공</p></li>
                                <li><p>검사자 교육 제공 (온라인/오프라인)</p></li>
                                <li><p>설치/이동 용이</p></li>
                                <li><p>이동식 실험 / 음압병동 전문 설계 /시공 업체 협력</p></li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="font-body-h title figure_bottom">Ordering Information for Relative Product</p>
                            <div class="table-scroll">
                                <table class="table">
                                    <colgroup>
                                        <col style="width:33.3333%;">
                                        <col style="width:33.3333%;">
                                        <col style="width:33.3333%;">
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>Name of Kit</th>
                                        <th>Cat.No.</th>
                                        <th>BSL-Level</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>Smart Mobile Lab(40ft)</td>
                                        <td>SML01-100</td>
                                        <td>BSL- 2 Level</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="list-area mb-0">
                            <p class="font-body-h title img_bottom">Process</p>
                            <div class="img">
                                <img src="/publishing/mobile-ko/dist/img/business/img_workflow-level7.png" alt="workflow">
                            </div>
                        </div>
                    </div>
                    <hr class="divider">
                    <p class="notice-text"><i class="icon ico-info-blue"></i><span>임상진단 관련 서비스 항목은 개인적으로 의뢰할 수 없으며, 서비스 이용을 위해서는 전문의료인을 통한 문의가 필요합니다.</span></p>
                    <div class="btn-area">
                        <a href="mailto:ngsclinic@macrogen.com" class="btn btn-light"><span>서비스문의</span></a>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(0)">
                                    <i class="icon ico-left-black"></i><span class="font-body-h-b">이전</span></div>
                                <div class="col disabled"><span class="font-body-h-b">다음</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--covid19 탭 메뉴 e-->
        </div>
    </div>

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

<div class="toast-popup">
    <p>이미지를 확대할 수 있습니다</p>
</div>
<!--modalImageViewer1 s-->
<div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer1" data-bs-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <a href="#" class="btn-close"><span class="sr-only">닫기</span></a>
            <div class="parent">
                <div class="panzoom"><img src="/publishing/mobile-ko/dist/img/business/img_data_graph1.png" alt="graph1"></div>
            </div>
        </div>
    </div>
</div>
<script>
    // modal show
    var modalImageViewer1 = new bootstrap.Modal(document.getElementById('modalImageViewer1'))

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

    // show toast popup
    function showToastPopup() {
        $('.toast-popup').addClass('active');
        setTimeout(hideToastPopup, 2000);
    }

    // hide toast popup
    function hideToastPopup() {
        $('.toast-popup').removeClass('active');
    }
</script>
<!--modalImageViewer1 e-->
<!--modalImageViewer2 s-->
<div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer2" data-bs-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <a href="#" class="btn-close"><span class="sr-only">닫기</span></a>
            <div class="parent">
                <div class="panzoom"><img src="/publishing/mobile-ko/dist/img/business/img_data_graph2.png" alt="graph2"></div>
            </div>
        </div>
    </div>
</div>
<script>
    // modal show
    var modal2 = new bootstrap.Modal(document.getElementById('modalImageViewer2'));
    // zoom
    var el = document.querySelector('.panzoom');
    // new PinchZoom.default(el, {});
    // modal close
    $('.btn-close').on('click', function () {
        modal2.hide();
        hideToastPopup();
    })

    // modal open
    $('.btnZoom-2').on('click', function () {
        modal2.show();
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
<!--modalImageViewer2 e-->
<!--modalImageViewer3 s-->
<div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer3" data-bs-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <a href="#" class="btn-close"><span class="sr-only">닫기</span></a>
            <div class="parent">
                <div class="panzoom"><img src="/publishing/mobile-ko/dist/img/business/img_clinicaltrialtest.png" alt="clinicaltrialtest"></div>
            </div>
        </div>
    </div>
</div>
<script>
    // modal show
    var modal3 = new bootstrap.Modal(document.getElementById('modalImageViewer3'));
    // zoom
    var el = document.querySelector('.panzoom');
    // new PinchZoom.default(el, {});
    // modal close
    $('.btn-close').on('click', function () {
        modal3.hide();
        hideToastPopup();
    })

    // modal open
    $('.btnZoom-3').on('click', function () {
        modal3.show();
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

</body>
