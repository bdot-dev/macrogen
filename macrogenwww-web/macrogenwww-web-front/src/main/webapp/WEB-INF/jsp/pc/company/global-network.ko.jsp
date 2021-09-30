<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg macrogen" style="background-image: url(/publishing/pc-ko/dist/img/macrogen/bg-global-network.png);">
        <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

        <div class="frame">
            <div class="hero-title">글로벌 네트워크</div>
            <div class="slogan">GLOBAL<br/>MACROGEN</div>
            <div class= "slogan-sub">글로벌 정밀의학을 선도합니다.</div>
            <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">MACROGEN</li>
        <li class="breadcrumb-item">글로벌 네트워크</li>
    </ol>
</nav>

            <div class="scroll-wrap">
    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
</div>

        </div>
    </div>
    <div class="container">
        <div class="macrogen global-macrogen">
            <!-- s  map -->
            <div class="section-map" data-aos="fade-up" data-aos-duration="2000">
                <div class="title">GLOBAL MACROGEN</div>
                <div class="desc">마크로젠은 세계 어디에서나 현지 고객 맞춤형 서비스를 제공하며 신속하고 체계적인 고객 대응으로<br/>글로벌 정밀의학 선도기업으로 자리매김하고 있습니다. </div>
                <div class="map">
                    <a class="pin amsterdam" href="#amsterdam"><span>Amsterdam, The Netherlands</span></a>
                    <a class="pin seoul" href="#seoul"><span>Seoul, Korea</span></a>
                    <a class="pin boston" href="#rockville"><span>Boston, USA</span></a>
                    <a class="pin tokyo" href="#tokyo"><span>Tokyo, japan</span></a>
                    <a class="pin virginia" href="#rockville"><span>Virginia, USA</span></a>
                    <a class="pin madrid" href="#madrid"><span>Madrid, Spain</span></a>
                    <a class="pin kyoto" href="#tokyo"><span>Kyoto, japan</span></a>
                    <a class="pin newyork" href="#rockville"><span>New york, USA</span></a>
                    <a class="pin synapse" href="#synapse"><span>Synapse, Singapore</span></a>
                    <a class="pin rockville" href="#rockville"><span>Rockville, USA</span></a>
                </div>
            </div>
            <script>
                $('.map .pin').on('click',function (){
                    $(this).addClass('active').siblings().removeClass('active')
                })
            </script>
            <!-- e  map -->

            <!-- s  map 상세 -->
            <div class="section-map-detail">
                <div class="box" data-aos="fade-up" data-aos-duration="2000">
                    <div class="title">국내</div>
                    <div class="detail">
                        <ul id="seoul">
                            <li class="item">
                                <div class="name">마크로젠 강남본사</div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_1.png" alt="마크로젠 강남본사"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>설립일자</span><span>2019년 6월</span></li>
                                        <li><span>주요사업</span><span>개인유전체 분석 및 장내 미생물 분석 서비스</span></li>
                                    </ul>
                                    <div class="address">서울특별시 강남구 테헤란로 238 (마크로젠빌딩) </div>
                                    <div class="tel">
                                        <span>TEL.</span>
                                        <a href="tel:+82-2-2180-7000">+82-2-2180-7000</a>
                                        <span>FAX.</span>
                                        <a href="tel:+82-2-2180-7100">+82-2-2180-7100</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item">
                                <div class="name">마크로젠 지놈센터</div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_2.png" alt="마크로젠 지놈센터"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>설립일자</span><span>1997년 6월</span></li>
                                        <li><span>주요사업</span><span>유전체 분석 및 임상진단 서비스</span></li>
                                    </ul>
                                    <div class="address">서울특별시 금천구 벚꽃로 254, 10층 (가산동, 월드메르디앙1차)</div>
                                    <div class="tel">
                                        <span>TEL.</span>
                                        <a href="tel:+82-2-2180-7000">+82-2-2180-7000</a>
                                        <span>FAX.</span>
                                        <a href="tel:+82-2-2180-7100">+82-2-2180-7100</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item">
                                <div class="name">마크로젠 모델동물센터</div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_3.png" alt="마크로젠 모델동물센터"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>설립일자</span><span>2002년 2월</span></li>
                                        <li><span>주요사업</span><span>유전자 변형 마우스 제작 서비스</span></li>
                                    </ul>
                                    <div class="address">서울특별시 강서구 강서로 466, 3층 (등촌동, 우리벤처타운)</div>
                                    <div class="tel">
                                        <span>TEL.</span>
                                        <a href="tel:+82-2-3663-5990">+82-2-3663-5990</a>
                                        <span>FAX.</span>
                                        <a href="tel:+82-2-3663-5179">+82-2-3663-5179</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item">
                                <div class="name">마크로젠 대전 지놈센터</div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_4.png" alt="마크로젠 대전 지놈센터"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>설립일자</span><span>2008년 2월</span></li>
                                        <li><span>주요사업</span><span>유전체 분석 및 임상진단 서비스</span></li>
                                    </ul>
                                    <div class="address">대전광역시 유성구 테크노3로 65, 323호 (관평동, 한신에스메카)</div>
                                    <div class="tel">
                                        <span>TEL.</span>
                                        <a href="tel:+82-42-336-7080">+82-42-336-7080</a>
                                        <span>FAX.</span>
                                        <a href="tel:+82-42-336-7180">+82-42-336-7180</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="box" data-aos="fade-up" data-aos-duration="2000">
                    <div class="title">글로벌</div>
                    <div class="detail">
                        <ul>
                            <li class="item" id="rockville">
                                <div class="name">소마젠 (Psomagen) <span class="badge">관계사</span></div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_5.png" alt="소마젠 (Psomagen)"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>설립일자</span><span>2004년 12월</span></li>
                                        <li><span>주요사업</span><span>유전체 분석 및 임상진단 서비스</span></li>
                                    </ul>
                                    <div class="address">1330 Piccard Drive, Suite 205, Rockville, MD 20850 USA</div>
                                    <div class="tel">
                                        <span>TEL.</span>
                                        <a href="tel:+1-301-251-1007">+1-301-251-1007</a>
                                        <span>FAX.</span>
                                        <a href="tel:+1-301-251-4006">+1-301-251-4006</a>
                                        <span>WEB.</span>
                                        <a href="https://www.macrogen-europe.com/" target="_blank">https://https://www.macrogen-europe.com/</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item" id="tokyo">
                                <div class="name">일본법인</div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_6.png" alt="일본법인"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>설립일자</span><span>2007년 11월</span></li>
                                        <li><span>주요사업</span><span>유전체 분석 및 임상진단 서비스</span></li>
                                    </ul>
                                    <div class="address">16F Time24 Building, 2-4-32 Aomi, Koto-ku, Tokyo 135-0064, JAPAN</div>
                                    <div class="tel">
                                        <span>TEL.</span>
                                        <a href="tel:+81-3-5962-1124">+81-3-5962-1124</a>
                                        <span>WEB.</span>
                                        <a href="http://www.macrogen-japan.co.jp" target="_blank">http://www.macrogen-japan.co.jp</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item" id="amsterdam">
                                <div class="name">유럽법인</div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_7.png" alt="유럽법인"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>설립일자</span><span>2017년 9월(지사 오픈: 2008년 6월)</span></li>
                                        <li><span>주요사업</span><span>유전체 분석 및 임상진단 서비스</span></li>
                                    </ul>
                                    <div class="address">Meibergdreef 57, Amsterdam, The Netherlands</div>
                                    <div class="tel">
                                        <span>TEL.</span>
                                        <a href="tel:+31-20-333-7563">+31-20-333-7563</a>
                                        <span>WEB.</span>
                                        <a href="http://www.psomagen.com" target="_blank">http://www.psomagen.com</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item" id="synapse">
                                <div class="name">싱가포르법인</div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_8.png" alt="싱가포르법인"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>설립일자</span><span>2018년 3월 (지사 오픈: 2016년 11월)</span></li>
                                        <li><span>주요사업</span><span>유전체 분석 및 임상진단 서비스</span></li>
                                    </ul>
                                    <div class="address">3 Biopolis Drive #05-18, Synapse, Singapore 138623</div>
                                    <div class="tel">
                                        <span>TEL.</span>
                                        <a href="tel:+65-6339-0927">+65-6339-0927</a>
                                        <span>WEB.</span>
                                        <a href="http://www.macrogen-apac.com" target="_blank">http://www.macrogen-apac.com</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item" id="madrid">
                                <div class="name">스페인지사</div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_9.png" alt="스페인지사"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>설립일자</span><span>2016년 12월</span></li>
                                        <li><span>주요사업</span><span>유전체 분석 및 임상진단 서비스</span></li>
                                    </ul>
                                    <div class="address">Calle Martinez Villergas, 52. Edificio B. Planta Baja. Oficina 1/Izquierda. Madrid. 28027, Spain</div>
                                    <div class="tel">
                                        <span>TEL.</span>
                                        <a href="tel:+34-911-138-378">+34-911-138-378</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- e  map 상세 -->
        </div>
    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->

</body>
