<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="top-bg" style="background-image: url(/publishing/mobile-en/dist/img/business/bg_banner_pet.png?v2);">
        <header class="header header-white">
    <div class="inner">
        <h1 class="logo"><a href="/en">마크로젠 로고</a></h1>
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
            <h2 class="font-h1 microbiome_title">Microbiome Analysis and Customized Solutions</h2>
            <div class="font-body-h">The Biome Pro</div>
        </div>
    </div>
    <div class="container">
        <div class="section_business microbiome">
            <!--메인 컨텐츠-->
            <div class="subject-box no-line">
                <p class="title font-h4">We provide personalized healthcare solutions by analyzing each person's gut microbiome based on big data.
                </p>
                <p class="subject font-body-h img_bottom">
                	Microbiome is garnering much attention to the extent it is dubbed "the second genome." Research has found that the microbiome influences various aspects of the human body, including metabolism, digestion, response to diseases, and immunity. Indeed, it was found that 90% of diseases have to do with microbiome health.
					<br><br>
					Gut microbiome keeps changing according to the person's eating habits and lifestyle. Bad habits can lead to an increase in harmful bacteria and a decrease in beneficial bacteria in one's gut, undermining gut health.
					It is essential to check the microbiome's health in the gut and replenish beneficial bacteria to maintain one's gut health.
                </p>
                 <!--10.05 이미지 경로 변경-->
                <div class="img">
                    <img src="/publishing/mobile-en/dist/img/business/img_microbiome_intro.png" alt="마이지놈스토리인트로">
                </div>
                <div class="img">
                    <img src="/publishing/mobile-en/dist/img/business/img_microbiome_test.png" alt="마이크로바이옴 검사">
                </div>
            </div>
            <div class="info-box-wrap" style="display:none;">
                <!--질병예측 & 웰니스 유전자검사-->
                <div class="info-box show">
                    <p class="font-h4 sub-title" id="disease_title">The Biome</p>
                    <p class="subject font-body-h img_bottom">The Biome knows more about you than yourself. It is a personalized solution that analyzes the microbiome ecosystem in your gut to help you improve
						your gut health. Through the gut microbiome testing, the Biome service suggests personalized probiotics solutions to replenish beneficial probiotics
						that your gut currently lacks.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img_microbiome_mo01.png" alt="더바이옴">
                    </div>
                    <p class="font-h5 sub-title">Benefits of the Biome Test</p>
                    <p class="subject font-body-h img_bottom">The Biome Test is a test that analyzes the current status of each person's microbiome in the gut.<br>
						Through the single-time, rapid and convenient test, you can find out details about your gut health including the ratio of beneficial bacteria.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img_microbiome_mo02.png" alt="더바이옴 테스트의 특장점">
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">The Biome Gut Types</p>
                    <p class="subject font-body-h img_bottom">The Biome service classifies guts into four types based on the results of the Biome test, and suggests optimal probiotics solutions with the best-possible
						mix-ratio of multiple bacterial strains that will replenish probiotics and adjunct ingredients each gut type lacks.</p>
                     <div class="border-gray-box">
                            <div class="img">
                                <img src="/publishing/mobile-en/dist/img/business/img_microbiome_mo03.png" alt="더바이옴 장 유형">
                                <span class="btnZoom-1"><i class="icon ico-zoom-white"></i></span>
                            </div>
                        </div>
                    <p class="font-h8 sub-title">Gut Types with Insufficient Lactobacillus</p>
                    <div class="list-area">
                         <ul class="list-circle-dot">
                             <li><p>BiBa</p>
                             	<span>A gut type commonly found in people with protein-centered diets. The BiBa type refers to a gut microbiome with abundant Bifidobacterium and Bacteroides but with relatively insufficient Lactobacillus and Prevotella.</span>
                             </li>
                             <li><p>BiPre</p>
                             	<span>A gut type commonly found in people consuming dietary fiber-rich vegetable-oriented diets. The BiPre type refers to a gut microbiome with abundant Bifidobacterium and Prevotalla but with relatively insufficient Lactobacillus and Bacteroides.</span>
                             </li>
                         </ul>
                    </div>
                    <p class="font-h8 sub-title">Gut Types with Insufficient Bifidobacterium</p>
                    <div class="list-area">
                         <ul class="list-circle-dot">
                             <li><p>LaBa</p>
                             	<span>A gut type commonly found in people with protein-centered diets. The LaBa type refers to a gut microbiome with abundant Lactobacillus and Bacteroides but with relatively insufficient Bifidobacterium and Prevotella.</span>
                             </li>
                             <li><p>LaPre</p>
                           		<span>A gut type commonly found in people consuming dietary fiber-rich vegetable-oriented diets. The LaPre type refers to a gut microbiome with abundant Lactobacillus and Prevotella but with relatively insufficient Bifidobacterium and Bacteroides.</span>
                             </li>
                         </ul>
                    </div>
                    <hr class="divider">
                    <p class="font-h5 sub-title">The Biome Probiotics</p>
                    <p class="subject font-body-h img_bottom">Using the gut microbiome testing kit, the Biome service analyzes each person's gut to determine the gut type and suggests optimal probiotics that can replenish probiotics and nutrients for each gut type.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img_microbiome_mo04.png" alt="더바이옴 유산균">
                    </div>
                    <div class="list-area">
                        <ul class="list-circle-dot txtcolor">
                            <li><p>The Lacto Strengthen Gut for the BiBa type</p></li>
                            <li><p>The Lacto Strengthen Immune for the BiPre type</p></li>
                            <li><p>The Bifido Strengthen Gut for the LaBa type</p></li>
                            <li><p>The Bifido Strengthen Immune for the LaPre type</p></li>
                        </ul>
                    </div>
                    <a class="csinfo" href="tel:+82-1644-9599">The Biome Customer Care <span>+82 1644-9599</span></a>
                     <div class="btn-area">
                        <a href="https://www.my-genomestory.com/service_detail?service_code=mbs&selectLang=ko"
                           target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
                        <a href="https://smartstore.naver.com/thebiomelife" target="_blank"
                           class="btn btn-primary"><i class="icon ico-cart-white"></i><span>Order</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!--v0.7 tost-popup 추가-->
    <div class="toast-popup">
        <p>You can enlarge it by clicking on the image.</p>
    </div>
    <!--modalImageViewer1 s-->
    <div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer1" data-bs-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
                <a href="#" class="btn-close"><span class="sr-only">close</span></a>
                <div class="parent">
                    <div class="panzoom"><img src="/publishing/mobile-en/dist/img/business/img_microbiome_mo03.png" alt="줌이미지"></div>
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
 
    <!--modalImageViewer1 s-->
    
    <!--v0.11 mo-ko랑 싱크 비즈니스 스크립트 추가-->
    <!--비즈니스 스크립트 리펙토링 s-->
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
            console.log(offset);

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



            /*v0.10 스크립트 변경 s*/

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

        /*v0.10 스크립트 변경 e*/
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
        // console.log(infoSectionList);
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

</body>
