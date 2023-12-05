<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

    <div class="full-bg" style="background-image: url(/publishing/mobile-en/dist/img/macrogen/bg-global-network.png);">
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
            <div class="font-h4">Global Network</div>
            <div class="font-slogan en">GLOBAL<br/>MACROGEN</div>
            <div class="font-h7-r">Leading global precision medicine company</div>
            <div class="scroll-wrap">
    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
</div>

        </div>
    </div>
    <div class="container">
        <div class="macrogen global-macrogen">
            <!-- s  map -->
            <div class="section-map" data-aos="fade-up" data-aos-duration="2000">
                <div class="title">GLOBAL<br/> MACROGEN</div>
                <div class="desc">Macrogen is cementing its leadership position in precision medicine<br/>
                    by providing personalized services to local clients and meeting their diverse needs.</div>
                <div class="map"></div>
            </div>
            <!-- e  map -->

            <nav class="tab-secondary" data-aos="fade-up" data-aos-duration="2000">
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                    <button class="nav-link ${ globalYn ne 'Y' ? 'active' : '' }" id="nav-tab-1" data-bs-toggle="tab" data-bs-target="#nav-1" type="button" role="tab" aria-controls="nav-1" aria-selected="true"><span>Korea</span></button>
                    <button class="nav-link ${ globalYn eq 'Y' ? 'active' : '' }" id="nav-tab-2" data-bs-toggle="tab" data-bs-target="#nav-2" type="button" role="tab" aria-controls="nav-2" aria-selected="false"><span>Overseas</span></button>
                </div>
            </nav>

            <!-- s  map 상세 -->
            <div class="section-map-detail" data-aos="fade-up" data-aos-duration="2000">
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade ${ globalYn ne 'Y' ? 'show active' : '' }" id="nav-1" role="tabpanel" aria-labelledby="nav-tab-1">
                        <div class="box">
                            <div class="title">Korea</div>
                            <div class="detail">
                                <ul>
                                    <li class="item" id="seoul">
                                        <div class="name">Macrogen Gangnam HQ</div>
                                        <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/global_thumb_1.png" alt="Macrogen Gangnam HQ"></div>
                                        <div class="info">
                                            <div class="address">Macrogen Bldg, 238, Teheran-ro, Gangnam-gu, Seoul, Republic of Korea</div>
                                            <div class="tel">
                                                <div>
                                                    <span>TEL.</span>
                                                    <a href="tel:+82-2-2180-7000">+82-2-2180-7000</a>
                                                </div>
                                                <div>
                                                    <span>FAX.</span>
                                                    <a href="tel:+82-2-2180-7100">+82-2-2180-7100</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="item">
                                        <div class="name">Macrogen Genome Center</div>
                                        <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/global_thumb_2.png" alt="Macrogen Genome Center"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>Established in June 1997</span></li>
                                            </ul>
                                            <div class="address">10F, 254, Beotkkot-ro, Geumcheon-gu, Seoul (Gasan-dong, World Meridian I)</div>
                                            <div class="tel">
                                                <div>
                                                    <span>TEL.</span>
                                                    <a href="tel:+82-2-2180-7000">+82-2-2180-7000</a>
                                                </div>
                                                <div>
                                                    <span>FAX.</span>
                                                    <a href="tel:+82-2-2180-7100">+82-2-2180-7100</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="item">
                                        <div class="name">Macrogen GEM Center</div>
                                        <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/global_thumb_3.png" alt="Macrogen GEM Center"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>Established in Feb 2002</span></li>
                                            </ul>
                                            <div class="address">3F, 466, Gangseo-ro, Gangseo-gu, Seoul (Deungchon-dong, Woori Venture Town)</div>
                                            <div class="tel">
                                                <div>
                                                    <span>TEL.</span>
                                                    <a href="tel:+82-2-3663-5990">+82-2-3663-5990</a>
                                                </div>
                                                <div>
                                                    <span>FAX.</span>
                                                    <a href="tel:+82-2-3663-5179">+82-2-3663-5179</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="item" id="daejeon">
                                        <div class="name">Macrogen Daejeon<br> Genome Center</div>
                                        <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/global_thumb_4.png" alt="Macrogen Daejeon Genome Center"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>Established in Feb 2008</span></li>
                                            </ul>
                                            <div class="address">Rm 323, 65, Techno 3-ro, Yuseong-gu, Daejeon (Gwanpyeong-dong, Hanshin S-Meca)</div>
                                            <div class="tel">
                                                <div>
                                                    <span>TEL.</span>
                                                    <a href="tel:+82-42-336-7080">+82-42-336-7080</a>
                                                </div>
                                                <div>
                                                    <span>FAX.</span>
                                                    <a href="tel:+82-42-336-7180">+82-42-336-7180</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="item" id="songdo">
                                        <div class="name">Macrogen Songdo<br> Global Genome Campus</div>
                                        <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/global_thumb_10.png" alt="Macrogen Songdo Global Genome Campus"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>Established in 2025</span></li>
                                            </ul>
                                            <div class="address">210-2, Songdo-dong, Yeonsu-gu, Incheon, Republic of Korea</div>
                                            <!-- <div class="tel">
                                                <div>
                                                    <span>TEL.</span>
                                                    <a href="tel:+82-42-336-7080">+82-42-336-7080</a>
                                                </div>
                                                <div>
                                                    <span>FAX.</span>
                                                    <a href="tel:+82-42-336-7180">+82-42-336-7180</a>
                                                </div>
                                            </div> -->
                                        </div>
                                    </li>
                                    <li class="item">
                                        <div class="name">Macrogen Sejong Campus</div>
                                        <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/global_thumb_16.png" alt="Macrogen Sejong Campus"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>Established in 2024</span></li>
                                            </ul>
                                            <!-- <div class="address">210-2, Songdo-dong, Yeonsu-gu, Incheon, Republic of Korea</div> -->
                                            <!-- <div class="tel">
                                                <div>
                                                    <span>TEL.</span>
                                                    <a href="tel:+82-42-336-7080">+82-42-336-7080</a>
                                                </div>
                                                <div>
                                                    <span>FAX.</span>
                                                    <a href="tel:+82-42-336-7180">+82-42-336-7180</a>
                                                </div>
                                            </div> -->
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade ${ globalYn eq 'Y' ? 'show active' : '' }" id="nav-2" role="tabpanel" aria-labelledby="nav-tab-2">
                        <div class="box">
                            <div class="title">Overseas</div>
                            <div class="detail">
                                <ul>
                                    <li class="item" id="rockville" >
                                        <div class="name">Psomagen</div>
                                        <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/global_thumb_5.png" alt="Psomagen"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>Established in Dec 2004</span></li>
                                            </ul>
                                            <div class="address">1330 Piccard Drive, Suite 205, Rockville, MD 20850 USA</div>
                                            <div class="tel">
                                                <div>
                                                    <span>TEL.</span>
                                                    <a href="tel:+1-301-251-1007">+1-301-251-1007</a>
                                                </div>
                                                <div>
                                                    <span>FAX.</span>
                                                    <a href="tel:+1-301-251-4006">+1-301-251-4006</a>
                                                </div>
                                                <div>
                                                    <span>WEB.</span>
                                                    <a href="http://www.psomagen.com" target="_blank">www.psomagen.com</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="item" id="tokyo">
                                        <div class="name">Macrogen Japan</div>
                                        <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/global_thumb_6.png" alt="Macrogen Japan"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>Established in Nov 2007</span></li>
                                            </ul>
                                            <div class="address">16F Time24 Building, 2-4-32 Aomi, Koto-ku, Tokyo 135-0064, JAPAN</div>
                                            <div class="tel">
                                                <div>
                                                    <span>TEL.</span>
                                                    <a href="tel:+81-3-5962-1124">+81-3-5962-1124</a>
                                                </div>
                                                <div>
                                                    <span>WEB.</span>
                                                    <a href="http://www.macrogen-japan.co.jp" target="_blank">www.macrogen-japan.co.jp</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="item" id="biopolis">
                                        <div class="name">Macrogen Singapore</div>
                                        <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/global_thumb_8.png" alt="Macrogen Singapore"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>Established in Mar 2018 <br> (Branch Opened : Nov 2016)</span></li>
                                            </ul>
                                            <div class="address">#05-18, Synapse Building, 3 Biopolis Drive, Singapore 138623</div>
                                            <div class="tel">
                                                <div>
                                                    <span>TEL.</span>
                                                    <a href="tel:+31-20-333-7563">+31-20-333-7563</a>
                                                </div>
                                                <div>
                                                    <span>WEB.</span>
                                                    <a href="http://www.macrogen-apac.com" target="_blank">www.macrogen-apac.com</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="item" id="amsterdam">
                                        <div class="name">Macrogen Europe</div>
                                        <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/global_thumb_7.png" alt="Macrogen Europe"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>Established in Sep 2017 <br>(Branch Opened: June 2008)</span></li>
                                            </ul>
                                            <div class="address">Meibergdreef 57, Amsterdam, The Netherlands</div>
                                            <div class="tel">
                                                <div>
                                                    <span>TEL.</span>
                                                    <a href="tel:+31-20-333-7563">+31-20-333-7563</a>
                                                </div>
                                                <div>
                                                    <span>WEB.</span>
                                                    <a href="https://www.macrogen-europe.com/" target="_blank">www.macrogen-europe.com/</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="item" id="madrid">
                                        <div class="name">Madrid Genome Center</div>
                                        <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/global_thumb_9.png" alt="Madrid Genome Center"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>Established in Dec 2016</li>
                                            </ul>
                                            <div class="address">C. de Martínez Villergas, 52, 28027 Madrid, Spain</div>
                                            <div class="tel">
                                                <div>
                                                    <span>TEL.</span>
                                                    <a href="tel:+34-911-138-378">+34-911-138-378</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="item" id="leuven">
                                        <div class="name">Ghent Genome Center</div>
                                        <!-- <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/global_thumb_11.png" alt="Leuven Genome Center"></div> -->
                                        <div class="info">
                                            <ul>
                                                <li><span>To be updated in January 2024</span></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="item" id="italy">
                                        <div class="name">Milano Genome Center </div>
                                        <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/global_thumb_12.png" alt="Milano Genome Center "></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>Established in Nov 2021</span></li>
                                            </ul>
                                            <div class="address">Viale Ortles, 22/4, 20139 Milano, MI, Italy</div>
                                            <div class="tel">
                                                <div>
                                                    <span>TEL.</span>
                                                    <a href="tel:+39-02-5666-0274">+39-02-5666-0274</a>
                                                </div>
                                                <div>
                                                    <span>WEB.</span>
                                                    <a href="https://www.macrogen-europe.com/" target="_blank">www.macrogen-europe.com/</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="item" id="paris">
                                        <div class="name">Paris Genome Center</div>
                                        <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/global_thumb_13.png" alt="Paris Genome Center"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>Established in Jul 2022</li>
                                            </ul>
                                            <div class="address">161 Rue de la Belle Etoile, 95700, Roissy-en, France</div> 
                                            <div class="tel">
                                                <div>
			                                        <span>TEL&#46;</span>
			                                        <a href="tel:+33-1-82-32-00-96">+33&#45;1&#45;82&#45;32&#45;00&#45;96</a>
                                                </div>
                                            </div>                                         
                                        </div>
                                    </li>
                                     <li class="item" id="poland">
		                                <div class="name">Szczecin Genome Center</div>
		                                <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/global_thumb_15.png" alt="Szczecin Genome Center"></div>
		                                <div class="info">
		                                    <ul>
		                                        <li><span>Established in Jun 2022</span></li>
		                                    </ul>
		                                    <div class="address">Teofila Firlika 19, 71-637 Szczecin, Poland</div>                                    
		                                </div>
		                            </li>
		                            <li class="item" id="basel">
                                        <div class="name">Basel Genome Center</div>
                                        <!-- <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/global_thumb_14.png" alt="Santiago Genome Center"></div> -->
                                        <div class="info">
                                            <ul>
                                                <li><span>To be updated in January 2024</li>
                                            </ul>                                          
                                        </div>
                                    </li>
		                            <li class="item" id="manchester">
                                        <div class="name">Manchester Genome Center</div>
                                        <!-- <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/global_thumb_14.png" alt="Santiago Genome Center"></div> -->
                                        <div class="info">
                                            <ul>
                                                <li><span>To be updated in January 2024</li>
                                            </ul>                                          
                                        </div>
                                    </li>
                                    <li class="item" id="berlin">
                                        <div class="name">Berlin Genome Center</div>
                                        <!-- <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/global_thumb_14.png" alt="Santiago Genome Center"></div> -->
                                        <div class="info">
                                            <ul>
                                                <li><span>To be updated in January 2024</li>
                                            </ul>                                          
                                        </div>
                                    </li> 
                                    <li class="item" id="santiago">
                                        <div class="name">Santiago Genome Center</div>
                                        <div class="img"><img src="/publishing/mobile-en/dist/img/macrogen/global_thumb_14.png" alt="Santiago Genome Center"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>Established in Jul 2022</li>
                                            </ul>
                                            <div class="address">Magdalena 140 Oficina 401, Las Condes Santiago, Chile</div>                                          
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- e  map 상세 -->
        </div>
    </div>

</body>
