<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

    <div class="full-bg" style="background-image: url(/publishing/mobile-en/dist/img/esg/bg-ethical-management.png);">
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
            <div class="font-h4">Ethical Management</div>
            <div class="font-slogan en ft44">We promote 
										transparent and 
										fair business
										practices</div> <!-- 번역 변경 -- 2022.05.26 -->
            <div class="font-h7-r">We are committed to fulfilling<br> our corporate social responsibility<br> as a global leader.</div>
            <div class="scroll-wrap">
    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
</div>

        </div>
    </div>
    <div class="container">
        <div class="macrogen ethical-management">
            <!-- s  문구 -->
            <div class="section-description">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-h3">We are dedicated to<br> transparent and fair<br> operation</div>
                    <div class="font-body-h">We will continue to build trust based on the principles of ethical management</div>
                </div>
            </div>
            <!-- e  문구 -->

            <!-- s  윤리경영 원칙 -->
            <div class="section-bg">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-h3">Ethical Management Principles</div>
                    <div class="font-body-h">We recognize our ethical responsibilities toward customers, employees, shareholders, suppliers, government, and local communities,
                        and ensure full compliance with them in our corporate activities.</div>
                    <div class="content">
                        <div class="swiper-container _slider">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <ul>
                                        <li>
                                            <div class="tit">Customer First</div>
                                            <div class="desc">We protect our customers' rights
                                                and make their privacy our top priority.</div>
                                        </li>
                                        <li>
                                            <div class="tit">Protection of Shareholders</div>
                                            <div class="desc">We protect shareholders' assets and profits by improving our financial structure and ethical practice.</div> <!-- 번역 변경 -- 2021.11.23 -->
                                        </li>
                                        <li>
                                            <div class="tit">Shared Growth</div>
                                            <div class="desc">We maintain a fair relationship with our business partners to promote mutual growth and sustainable partnership while preventing unfair practices. </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="swiper-slide">
                                    <ul>
                                        <li>
                                            <div class="tit">Respect for Employees</div>
                                            <div class="desc">We create an ethical workplace culture based on mutual understanding and trust and respect and prevent sexual harassment.</div>
                                        </li>
                                        <li>
                                            <div class="tit">Social Contribution</div>
                                            <div class="desc">We establish an ethical corporate culture and build trust by contributing to our society based on compliance, transparency, and fairness.</div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="pagination-wrap">
                            <ul class="navigation">
                                <li class="page-item white prev">
                                    <a class="page-link _slidePrev" href="#">
                                        <span class="sr-only">prev</span>
                                    </a>
                                </li>
                                <li class="page-item white next">
                                    <a class="page-link _slideNext" href="#">
                                        <span class="sr-only">next</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="swiper-pagination _pagination"></div>
                    </div>
                </div>
            </div>
            <script>
                var swiper = new Swiper("._slider", {
                    slidesPerView: "auto",
                    spaceBetween: 0,
                    centeredSlides: false,
                    watchActiveIndex: true,
                    slideToClickedSlide: true,
                    pagination: {
                        el: "._pagination",
                        clickable : true,
                    },
                    navigation: {
                        nextEl: "._slideNext",
                        prevEl: "._slidePrev",
                    },
                });
            </script>
            <!-- e  윤리경영 원칙 -->

            <!-- s  제보 -->
            <div class="section-tip">
                <div class="inner">
                    <div data-aos="fade-up" data-aos-duration="2000">
                        <div class="font-h4">We encourage you to report any violations of our ethical management principles through the helpline</div>
                        <div class="font-body-h">If you are aware of any unethical practice of our employees or have suggestions,
                            please contact our helpline.</div>
                    </div>
                    <div class="subject-to-report" data-aos="fade-up" data-aos-duration="2000">
                        <div class="font-h7">Violations</div>
                        <ul class="list">
                            <li>Violation of customers’ rights by a Macrogen employee</li>
                            <li>Unfair transactions and  contract awards, unauthorized  disclosure of trade secrets, and  other unfair and unethical  practices</li>
                            <li>Unfair stake participation in  partners, holding of more than  one position in the company at  a time while working at  Macrogen, and other  usurpation of corporate opportunities</li>
                            <li>Illegal acts such as the misuse of corporate funds and/or the receipt of illicit monies or benefits</li>
                            <li>Falsified reports, doctoring of documents, and leakage of company information</li>
                            <li>Sexual harassment and discrimination/coercion among employees</li>
                            <li>Other types of legal violations</li>
                        </ul>
                    </div>
                    <div class="subject-to-report-step" data-aos="fade-up" data-aos-duration="2000">
                        <div class="swiper-container _slider2">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="item">
                                        <div class="img">
                                            <img src="/publishing/mobile-en/dist/img/esg/ethical-thumb-1.png" alt="제보 접수">
                                        </div>
                                        <div class="info">
                                            <span class="font-body-h-b">Please submit a detailed account of potential violations of the ethical management principles.</span>
                                            <a href="mailto:report@mghelpline.com" class="link">report@mghelpline.com</a>
                                            <span class="tip">The e-mail account for receiving reports is operated and managed separately from our internal accounts and it can be accessed by security administrators only. </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="item">
                                        <div class="img">
                                            <img src="/publishing/mobile-en/dist/img/esg/ethical-thumb-2.png" alt="제보 접수">
                                        </div>
                                        <div class="info">
                                            <span class="font-body-h-b">The contents of the report will be reviewed by the person in charge. In order to protect the identity of the person filing the report, only authorized personnel will be granted access to the report.</span>
                                            <span class="font-body-h-b">We protect whistleblowers.</span>
                                            <span class="desc-xs">Macrogen is committed to maintaining the confidentiality and protection of helpline users and their personal information. We ensure that any person filing a report is not subject to unfair disadvantages or retaliation.</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="item">
                                        <div class="img">
                                            <img src="/publishing/mobile-en/dist/img/esg/ethical-thumb-3.png" alt="조사 개시">
                                        </div>
                                        <div class="info">
                                            <span class="font-body-h-b">An investigation will be conducted in the order in which the reports are received and the priority assigned to each report. The investigation period may vary, depending on the investigation scope and persons to be investigated.</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="item">
                                        <div class="img">
                                            <img src="/publishing/mobile-en/dist/img/esg/ethical-thumb-4.png" alt="조사 완료">
                                        </div>
                                        <div class="info">
                                            <span class="font-body-h-b">After the facts are checked, those filing a report will be promptly notified of the investigation results.</span>
                                            <ul>
                                                <li><span>Suggestions and Requests</span><span>After consultation with a related department, we will inform you of the results and actions taken.</span></li>
                                                <li><span>Serious Violations</span><span>The person filing the report will be promptly notified of the results of the internal investigation. <br/> Follow-up measures,
                                        such as special audits and/or legal procedures, will be taken as needed.</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="pagination-wrap">
                            <ul class="navigation">
                                <li class="page-item prev">
                                    <a class="page-link _slidePrev2" href="#">
                                        <span class="sr-only">prev</span>
                                    </a>
                                </li>
                                <li class="page-item next">
                                    <a class="page-link _slideNext2" href="#">
                                        <span class="sr-only">next</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="swiper-pagination _pagination2"></div>
                    </div>
                </div>
            </div>
            <script>
                var swiper2 = new Swiper("._slider2", {
                    slidesPerView: "auto",
                    spaceBetween: 0,
                    centeredSlides: false,
                    watchActiveIndex: true,
                    slideToClickedSlide: true,
                    pagination: {
                        el: "._pagination2",
                        clickable : true,
                    },
                    navigation: {
                        nextEl: "._slideNext2",
                        prevEl: "._slidePrev2",
                    },
                });
            </script>
            <!-- e  제보 -->
        </div>
    </div>


</body>
