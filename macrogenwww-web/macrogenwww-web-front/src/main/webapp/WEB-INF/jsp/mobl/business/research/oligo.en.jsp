<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="top-bg" style="background-image: url(/publishing/mobile-en/dist/img/business/ngs-bg.png);">
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
            <div class="font-h1">Oligo</div>
            <div class="btn-wrap"><a href="#tab_anchor" class="btn-service"><span class="sr-only">SERVICE</span></a></div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <!--OLigo 공통 s -->
            <div class="subject-box">
                <p class="title font-h4">Macrogen offers high-quality and quick Oligo DNA at a reasonable price using a state-of-the-art automated system.
                </p>
                <p class="subject font-body-h img_bottom">We will continue to take the lead in technological innovation in the fields of biology and medicine by providing high-quality Oligo through personalized DNA production.</p>
                <!--10.05 이미지 경로 변경-->
                <div class="img">
                    <img src="/publishing/mobile-en/dist/img/business/img-oligo-intro.png" alt="oligoIntro">
                </div>
                <p class="desc font-body">Macrogen offers an oligo synthesis service at various scales using high-quality materials and an optimized process. This is a tailored service that provides various oligoes synthesized to the sequence required by the client. The synthesized oligos are used in various biology and medical fields such as DNA sequencing, PCR, SNP study, gene synthesis, NGS service, qPCR service, biochip, and siRNA expression. Macrogen uses superior materials and an automation system to provide high-quality oligos, and offers MOPC purification for all oligos free of charge. MOPC purification, an independently developed cartridge purification method, has efficiency similar to that of HPLC and PAGE purification. Furthermore, all oligos are subject to a quality control process using MALDI-TOF, and a set quantity of oligos are provided through an automatic dispensing system to ensure their quality and more convenient test conditions for clients. The synthesized oligos are also provided with result reports.</p>
            </div>
            <!--OLigo 공통 e -->

            <!--OLigo 탭 네비 s-->
            <div class="select-nav-box _content-anchor" id="tab_anchor">
                <p class="title font-h4">DNA Synthesis SERVICE</p>
                <div class="select-box">
                    <div class="selected-value _selected-value">
                        <span class="text">Standard Oligo</span>
                    </div>
                    <ul class="select-option _select-option">
                        <li class="option-value active"><a href="#">Standard Oligo</a></li>
                        <li class="option-value"><a href="#">Modified Oligo</a></li>
                        <li class="option-value"><a href="#">Premade Oligo</a></li>
                        <li class="option-value"><a href="#">Plate Oligo</a></li>
                        <li class="option-value"><a href="#">Duplex Oligo</a></li>
                        <li class="option-value"><a href="#">RAPD Kits</a></li>
                    </ul>
                </div>
                <script>
    /*변수*/
    var selectBox = $(".select-box");
    var option = $(".option-value");


    /*드롭다운 클릭시 이벤트*/
    selectBox.on('click', function () {
        var select = $(this);
        if (select.hasClass('open')) {
            select.removeClass("open").children('.select-option').slideUp(200).removeClass("open");
        } else {
            select.addClass("open").children('.select-option').slideDown(200).addClass("open");
            $('body').on('click', function (e) {
                if (selectBox.hasClass('open')) {
                    if (!selectBox.has(e.target).length) {
                        selectBox.removeClass("open").next('._dropdown').slideUp(200).removeClass("open");
                    }
                }

            })
        }
    });

    /*클릭시 텍스트 변경*/
    function textChange() {
        option.on('click', function () {
            var select = $(this).find('a').text();
            $('._selected-value').find('span').text(select);
        });
    }

    textChange();

    /*클릭시 탭메뉴 변경*/
    option.on('click', function () {
        var idx = $(this).index();
        $(".info-box-wrap > div").addClass('show').siblings().removeClass('show');
        $(".info-box-wrap > div").eq(idx).addClass('show').siblings().removeClass('show');

        /*셀렉트 내부 해당페이지 포인트컬러*/
        $(".option-value").addClass('active').siblings().removeClass('active');
        $(".option-value").eq(idx).addClass('active').siblings().removeClass('active');
        textChange();
    })

    /*이전 다음 이동*/
    function setTabContent(idx) {
        $('._selected-value').text($('._select-option li').eq(idx).text());
        <!--탭메뉴 클릭시 페이지 변경-->
        $(".info-box-wrap > div").addClass('show').siblings().removeClass('show');
        $(".info-box-wrap > div").eq(idx).addClass('show').siblings().removeClass('show');

        /*셀렉트 내부 해당페이지 포인트컬러*/
        $(".option-value").addClass('active').siblings().removeClass('active');
        $(".option-value").eq(idx).addClass('active').siblings().removeClass('active');

        /*페이지 변경후 상단 이동*/
        fnMove();

        /*클릭시 텍스트 변경*/
        console.log(idx);

    }

    /*탭메뉴 상단으로 이동*/
    function fnMove() {
        var offset = $("._content-anchor").offset();
        $('html, body').animate({scrollTop: offset.top - 95}, 100);
    }

    /*외부클릭시 셀렉트박스 초기화*/
    $("body").click(function (e) {
        if (!selectBox.has(e.target).length) {
            selectBox.removeClass("open").children('.select-option').slideUp(200);
        }
    });

</script>

            </div>
            <!--OLigo 탭 네비 e-->

            <!--oligo 탭 메뉴 s-->
            <div class="info-box-wrap tab-content">
                <!--Standard Oligo-->
                <div class="info-box show">
                    <p class="font-h4 main-title">Standard Oligo</p>
                    <p class="subject font-body-h-b">Standard oligo service is provided by synthesizing oligo used in various tests into the sequence as demanded by the client.</p>
                    <p class="desc font-body img_bottom">Macrogen's oligo synthesis service uses an unmatched automation system that is developed independently to quickly provide the entire process from synthesis to purification and dispensing, while supporting LIMS, an online ordering system that can monitor the entire process from order to delivery. The quality of all oligos is controlled through MALDI-TOF mass spectrometry.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-oligo-standard.png" alt="Standard Oligo cffnb">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>50 nmole, 200 nmole, and 1 umole scales are available.</p></li>
                                <li><p>Delivery within 24 hours after order (delivered by sales personnel / 50 mer or less / order before 5:00pm)</p></li>
                                <li><p>Accurate concentration provided by the automatic distribution system</p></li>
                                <li><p>Order, synthesis, delivery and result check based on LIMS (Laboratory Information Management System)</p></li>
                            </ul>
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper">
                            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>Quotation</span></a>
                        </div>
                        <div class="btn-wrapper">
                         <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon ico-cart-white"></i><span>Order</span></a>
                        </div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col disabled"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
                                <div class="col" onclick="setTabContent(1)"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Modified Oligo-->
                <div class="info-box">
                    <p class="font-h4 main-title">Modified Oligo</p>
                    <p class="subject font-body-h-b">This is an oligo service that is provided in the form of a special material bonded to the 3' and 5', internal, or both ends of the standard oligo.</p>
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-oligo-modified.png" alt="Modified Oligo">
                    </div>
                    <p class="desc font-body">The Modified Oligo service is conducted independently. Modified oligos including fluorescent dyes, non-fluorescent modifications, dark quenchers, and internal modification are synthesized on a daily basis to facilitate rapid test conditions. Additionally, the status of oligo production can be checked through the order page, and all modified oligos that are synthesized go through the complete quality control process using MALDI-TOF to ensure reliable quality.</p>
                    <div class="btn-area">
                        <div class="btn-wrapper">
                            <a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>Order</span></a>
                        </div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(0)"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
                                <div class="col" onclick="setTabContent(2)"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Premade Oligo-->
                <div class="info-box">
                    <p class="font-h4 main-title">Premade Oligo</p>
                    <p class="subject font-body-h-b">Premade oligo is produced by the PAGE purification of Universal Oligo and delivered immediately upon order.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-oligo-premade.png" alt="Premade Oligo">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>5nmol of ≥ 95&#37; pure primer(PAGE Purification).</p></li>
                                <li><p>MALDI-TOF QC</p></li>
                                <li><p>Purification checked with HPLC</p></li>
                                <li><p>70 types of primers for sequencing, 17 types of primers for identification of microorganisms, 5 types of random primers</p></li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="desc font-body">Macrogen provides premade oligo with a high level of purity through PAGE. It includes 70 types of primers for sequencing, 17 types of primers for identification of microorganisms, and 5 types of random primers so that the Universal Oligo, which is basically used for various tests, can be prepared in advance and delivered quickly. Furthermore, all synthesized oligos undergo 100% quality control process using MALDI-TOF to ensure reliable quality.
                            </p>
                        </div>
                    </div>

                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>Order</span></a></div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(1)"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
                                <div class="col" onclick="setTabContent(3)"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Plate Oligo-->
                <div class="info-box">
                    <p class="font-h4 main-title">Plate Oligo</p>
                    <p class="subject font-body-h-b">We provide oligos in the form of 96-well plates.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-oligo-plate.png" alt="Plate Oligo">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>50 nmole, 200 nmole, and 1 umole scales are available.</p></li>
                                <li><p>Only MOPC can be selected for purification.</p></li>
                                <li><p>Liquid Handling System ensures an accurate level of concentration.</p></li>
                                <li><p>Order, synthesis, delivery and result check based on LIMS (Laboratory Information Management System)</p></li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="desc font-body">The Plate Oligo service is provided by drying the oligo while it is on a deep-well plate for easier and more convenience use for tests.  When drying oligos, an independently developed drying system is used, and all synthesized oligos undergo 100% quality control process using MALDI-TOF to ensure more reliable quality.</p>
                        </div>

                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>Order</span></a></div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(2)"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
                                <div class="col" onclick="setTabContent(4)"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Duplex Oligo-->
                <div class="info-box">
                    <p class="font-h4 main-title">Duplex Oligo</p>
                    <p class="subject font-body-h-b">Duplex Oligo (Annealing service) is a service that provides two=complementary single strand DNA in the form of a double strand DNA.</p>
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-oligo-duplex.png" alt="Duplex Oligo">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>50 nmole, 200 nmole, and 1 umole scales are available.</p><li>
                                <li><p>Liquid Handling System ensures an accurate level of concentration.</p></li>
                                <li><p>Order, synthesis, delivery and result check based on LIMS (Laboratory Information Management System)</p></li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="desc font-body">The Duplex Oligo service provides two complementary single strand DNA in the form of a combined strand of DNA through an annealing process. The service is available up to 130bp for standard oligo and up to 60bp for modified oligo. The synthesis and annealing process undergoes quality control process twice before delivery to the client.</p>
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
                        <div class="btn-wrapper"><a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i
                                class="icon ico-cart-white"></i><span>Order</span></a></div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(3)"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
                                <div class="col" onclick="setTabContent(5)"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--RAPD Kits-->
                <div class="info-box">
                    <p class="font-h4 main-title">RAPD Kits</p>
                    <p class="subject font-body-h-b">RAPD Kits is a service that provides 20 individual 10 mer oligos for various types of research efforts and studies such as genetic mapping
                        and DNA fingerprinting.
                    </p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img-oligo-rapdkit.png" alt="RAPD Kits">
                    </div>
                    <div class="list-area-group">
                        <div class="list-area">
                            <p class="font-body-h-b title">Features</p>
                            <ul class="list-circle-dot">
                                <li><p>10nmol of ≥ 95&#37; pure primer(PAGE Purification)</p></li>
                                <li><p>MALDI TOF QC</p></li>
                                <li><p>60 types of RAPD 10 mer KIT</p></li>
                            </ul>
                        </div>
                        <div class="list-area">
                            <p class="desc font-body">RAPD (Random Amplified Polymorphic DNAs) Kits uses small oligos of about 10bp for amplifying only genomic regions aligned by two gene sequences. Macrogen has a total of 60 sets of RAPD Kits, and provides a high level of purity through PAGE. Furthermore, all synthesized oligos undergo MALDI QC to ensure reliable quality.</p>
                        </div>
                    </div>
                    <div class="btn-area">
                        <div class="btn-wrapper"><a href="mailto:oligo@macrogen.com" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="https://dna.macrogen.com/quotation/retrieveOligoCustomQuotation.do?menuCd=QUO200"
                               target="_blank" class="btn btn-light"><span>Quotation</span></a></div>
                        <div class="btn-wrapper">
                            <a href="https://dna.macrogen.com/kor" target="_blank" class="btn btn-primary"><i class="icon ico-cart-white"></i>
                                <span>Order</span></a>
                        </div>
                    </div>
                    <div class="board">
                        <div class="navigation pt-80 mb-0">
                            <div class="row g-0">
                                <div class="col" onclick="setTabContent(4)"><i class="icon ico-left-black"></i><span class="font-body-h-b">Prev</span></div>
                                <div class="col disabled"><span class="font-body-h-b">Next</span><i class="icon ico-left-black"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--oligo 탭 메뉴 e-->
        </div>
    </div>

</body>
