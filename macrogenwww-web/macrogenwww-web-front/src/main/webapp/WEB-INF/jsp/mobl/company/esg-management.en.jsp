<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg" style="background-image: url(/publishing/mobile-en/dist/img/esg/bg-esg.png);">
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
            <h2 class="font-h4">ESG Management</h2>
            <div class="font-slogan en">Creating a<br/> healthier society</div>
            <div class="font-h7-r">Promoting health and research<br/> for a better future</div>
            <div class="scroll-wrap">
    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
</div>

        </div>
    </div>
    <div class="container">
        <div class="macrogen macrogen-esg">
            <!-- s text -->
            <div class="section-phrase">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-h3">We are shaping an inclusive and sustainable future</div>
                </div>
            </div>
            <!-- e text -->

            <!-- s ESG 경영목표 -->
            <div class="section-management-goals">
                <div class="list-goals">
                    <div class="goal" data-aos="fade-up" data-aos-duration="2000">
                        <div class="box">
                            <div class="item bg"><img src="/publishing/mobile-en/dist/img/esg/bg-esg-thumb-sm-1.png" alt="Customers"></div>
                            <div class="item text">
                                <div class="font-body-h-b">Customers</div>
                                <div class="font-h4">Satisfied Customers</div>
                                <div class="font-body-h">
                                    <ul>
                                        <li>Superior genomic analyses powered by world-class technology</li>
                                        <li>Prioritizing the protection of our customers’ rights and personal information</li>
                                        <li>Establishing mutually beneficial and sustainable relations with our suppliers and partners</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="goal" data-aos="fade-up" data-aos-duration="2000">
                        <div class="box">
                            <div class="item bg"><img src="/publishing/mobile-en/dist/img/esg/bg-esg-thumb-sm-2.png" alt="Investors"></div>
                            <div class="item text">
                                <div class="font-body-h-b">Investors</div>
                                <div class="font-h4">Trusted by Investors</div>
                                <div class="font-body-h">
                                    <ul>
                                        <li>Cultivating a corporate culture of compliance, transparency, fairness, trust, and honesty</li>
                                        <li>Maintaining a sound financial structure by effectively implementing ethical management</li>
                                        <li>Committing our utmost efforts to enhance the shareholder value and communicating with our shareholders</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="goal" data-aos="fade-up" data-aos-duration="2000">
                        <div class="box">
                            <div class="item bg"><img src="/publishing/mobile-en/dist/img/esg/bg-esg-thumb-sm-3.png" alt="Employees"></div>
                            <div class="item text">
                                <div class="font-body-h-b">Employees</div>
                                <div class="font-h4">Leader of the global biotech & healthcare industry.</div>
                                <div class="font-body-h">
                                    <ul>
                                        <li>Macrogen’s employees continuously take on challenges and seek growth</li>
                                        <li>Creating a mature ethical culture based on mutual understanding and trust</li>
                                        <li>Respecting colleagues and seeking to grow together with the Company</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="goal" data-aos="fade-up" data-aos-duration="2000">
                        <div class="box">
                            <div class="item bg"><img src="/publishing/mobile-en/dist/img/esg/bg-esg-thumb-sm-4.png" alt="CSR"></div>
                            <div class="item text">
                                <div class="font-body-h-b">CSR</div>
                                <div class="font-h4">Committed to Healthy Lives</div>
                                <div class="font-body-h">
                                    <ul>
                                        <li>Conducting research and developing technologies for a healthier humanity</li>
                                        <li>Strengthening the biotech industry’s basic research capabilities by providing R&D support to scientists</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- e ESG 경영목표 -->
        </div>
    </div>

</body>
