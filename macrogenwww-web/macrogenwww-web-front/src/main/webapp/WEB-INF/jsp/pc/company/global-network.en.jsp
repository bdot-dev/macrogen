<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

    <div class="full-bg macrogen" style="background-image: url(/publishing/pc-en/dist/img/macrogen/bg-global-network.png);">
        <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

        <div class="frame">
                <div class="hero-title">Global Network</div>
                <div class="slogan">GLOBAL<br/>MACROGEN</div>
                <div class="slogan-sub">Leading global precision medicine company</div>
            <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">MACROGEN</li>
        <li class="breadcrumb-item">Global Network</li>
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
                <div class="desc">Macrogen is cementing its leadership position in precision medicine<br/>
                    by providing personalized services to local clients and meeting their diverse needs.</div>
                <div class="map">
                    <a class="pin amsterdam" href="#amsterdam"><span>Amsterdam&#44; Netherlands</span></a>
                    <a class="pin maastricht" href="#maastricht"><span>Maastricht&#44; Netherlands</span></a>
                    <a class="pin milan" href="#italy"><span>Milan&#44; Italy</span></a>
                    <a class="pin madrid" href="#madrid"><span>Madrid&#44; Spain</span></a>
                    <a class="pin seoul" href="#seoul"><span>Seoul&#44; Korea</span></a>
                    <a class="pin songdo" href="#songdo"><span>Songdo&#44; Korea</span></a>
                    <a class="pin daejeon" href="#daejeon"><span>Daejeon&#44; Korea</span></a>
                    <a class="pin tokyo" href="#tokyo"><span>Tokyo&#44; japan</span></a>
                    <a class="pin synapse" href="#synapse"><span>Synapse&#44; Singapore</span></a>
                    <a class="pin boston" href="#rockville"><span>Boston&#44; USA</span></a>
                    <a class="pin newyork" href="#rockville"><span>New york&#44; USA</span></a>                    
                    <a class="pin rockville" href="#rockville"><span>Rockville&#44; USA</span></a>
                    <a class="pin virginia" href="#rockville"><span>Virginia&#44; USA</span></a>
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
                    <div class="title">Korea</div>
                    <div class="detail">
                        <ul>
                            <li class="item height_fix" id="seoul">
                                <div class="name">Macrogen Gangnam HQ</div>
                                <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/global_thumb_1.png" alt="Macrogen Gangnam HQ"></div>
                                <div class="info">
                                    <div class="address">Macrogen Bldg, 238, Teheran-ro, Gangnam-gu, Seoul, Republic of Korea</div>
                                    <div class="tel">
                                        <span>TEL&#46;</span>
                                        <a href="tel:+82-2-2180-7000">+82-2-2180-7000</a>
                                        <span>FAX&#46;</span>
                                        <a href="tel:+82-2-2180-7100">+82-2-2180-7100</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item height_fix">
                                <div class="name">Macrogen Genome Center</div>
                                <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/global_thumb_2.png" alt="Macrogen Genome Center"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>Established in June 1997</span></li>
                                    </ul>
                                    <div class="address">10F, 254, Beotkkot-ro, Geumcheon-gu, Seoul (Gasan-dong, World Meridian I)</div>
                                    <div class="tel">
                                        <span>TEL&#46;</span>
                                        <a href="tel:+82-2-2180-7000">+82-2-2180-7100</a>
                                        <span>FAX&#46;</span>
                                        <a href="tel:+82-2-2180-7100">+82-2-2180-7100</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item height_fix">
                                <div class="name">Macrogen GEM Center</div>
                                <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/global_thumb_3.png" alt="Macrogen GEM Center"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>Established in Feb 2002</span></li>
                                    </ul>
                                    <div class="address">3F, 466, Gangseo-ro, Gangseo-gu, Seoul (Deungchon-dong, Woori Venture Town)</div>
                                    <div class="tel">
                                        <span>TEL&#46;</span>
                                        <a href="tel:+82-2-3663-5990">+82-2-3663-5990</a>
                                        <span>FAX&#46;</span>
                                        <a href="tel:+82-2-3663-5179">+82-2-3663-5179</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item height_fix" id="daejeon">
                                <div class="name">Macrogen Daejeon Genome Center</div>
                                <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/global_thumb_4.png" alt="Macrogen Daejeon Genome Center"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>Established in Feb 2008</span></li>
                                    </ul>
                                    <div class="address">Rm 323, 65, Techno 3-ro, Yuseong-gu, Daejeon (Gwanpyeong-dong, Hanshin S-Meca)</div>
                                    <div class="tel">
                                        <span>TEL&#46;</span>
                                        <a href="tel:+82-42-336-7080">&#43;82&#45;42&#45;336&#45;7080</a>
                                        <span>FAX&#46;</span>
                                        <a href="tel:+82-42-336-7180">&#43;82&#45;42&#45;336&#45;7180</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item height_fix" id="songdo">
                                <div class="name">Macrogen Songdo Global Genome Campus</div>
                                <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/global_thumb_10.png" alt="Macrogen Songdo Global Genome Campus"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>Established in 2024</span></li>
                                    </ul>
                                    <div class="address">210-2, Songdo-dong, Yeonsu-gu, Incheon, Republic of Korea</div>
                                    <!-- <div class="tel">
                                        <span>TEL&#46;</span>
                                        <a href="tel:+82-42-336-7080">&#43;82&#45;42&#45;336&#45;7080</a>
                                        <span>FAX&#46;</span>
                                        <a href="tel:+82-42-336-7180">&#43;82&#45;42&#45;336&#45;7180</a>
                                    </div>  -->
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="box" data-aos="fade-up" data-aos-duration="2000">
                    <div class="title">Overseas</div>
                    <div class="detail">
                        <ul>
                            <li class="item height_fix" id="rockville" >
                                <div class="name">Psomagen</div>
                                <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/global_thumb_5.png" alt="Psomagen"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>Established in Dec 2004</span></li>
                                    </ul>
                                    <div class="address">1330 Piccard Drive, Suite 205, Rockville, MD 20850 USA</div>
                                    <div class="tel">
                                        <span>TEL&#46;</span>
                                        <a href="tel:+1-301-251-1007">&#43;1&#45;301&#45;251&#45;1007</a>
                                        <span>FAX&#46;</span>
                                        <a href="tel:+1-301-251-4006">&#43;1&#45;301&#45;251&#45;4006</a>
                                        <span>WEB&#46;</span>
                                        <a href="http://www.psomagen.com" target="_blank">www&#46;psomagen&#46;com</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item height_fix" id="tokyo">
                                <div class="name">Macrogen Japan</div>
                                <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/global_thumb_6.png" alt="Macrogen Japan"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>Established in Nov 2007</span></li>
                                    </ul>
                                    <div class="address">16F Time24 Building&#44; 2&#45;4&#45;32 Aomi&#44; Koto-ku&#44; Tokyo 135&#45;0064&#44; JAPAN</div>
                                    <div class="tel">
                                        <span>TEL&#46;</span>
                                        <a href="tel:+81-3-5962-1124">+81&#45;3&#45;5962&#45;1124</a>
                                        <span>WEB&#46;</span>
                                        <a href="http://www.macrogen-japan.co.jp" target="_blank">www&#46;macrogen&#45;japan&#46;co&#46;jp</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item height_fix" id="synapse">
                                <div class="name">Macrogen Singapore</div>
                                <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/global_thumb_8.png" alt="Macrogen Singapore"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>Established in Mar 2018 (Branch Opened : Nov 2016)</span></li>
                                    </ul>
                                    <div class="address">3 Biopolis Drive #05-18, Synapse, Singapore 138623</div>
                                    <div class="tel">
                                        <span>TEL&#46;</span>
                                        <a href="tel:+65-6339-0927">&#43;65&#45;6339&#45;0927</a>
                                        <span>WEB&#46;</span>
                                        <a href="http://www.macrogen-apac.com" target="_blank">www&#46;macrogen&#45;apac&#46;com</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item height_fix" id="amsterdam">
                                <div class="name">Macrogen Europe</div>
                                <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/global_thumb_7.png" alt="Macrogen Europe"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>Established in Sep 2017 (Branch Opened: June 2008) </span></li>
                                    </ul>
                                    <div class="address">Meibergdreef 57, Amsterdam, The Netherlands</div>
                                    <div class="tel">
                                        <span>TEL&#46;</span>
                                        <a href="tel:+31-20-333-7563">+31&#45;20&#45;333&#45;7563</a>
                                        <span>WEB&#46;</span>
                                        <a href="https://www.macrogen-europe.com/" target="_blank">www&#46;macrogen&#45;europe&#46;com&#47;</a>
                                    </div>
                                </div>
                            </li> 
                            <li class="item height_fix" id="maastricht">
                                <div class="name">Macrogen Belgium</div>
                                <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/global_thumb_11.png" alt="Macrogen Belgium"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>Established in Aug 2021</span></li>
                                    </ul>
                                    <div class="address">Oxfordlaan 70, 6229 EV Maastricht, Netherlands</div>
                                    <div class="tel">
                                        <span>TEL&#46;</span>
                                        <a href="tel:+31-20-333-7563">+31&#45;20&#45;333&#45;7563</a>
                                        <span>WEB&#46;</span>
                                        <a href="https://www.macrogen-europe.com/" target="_blank">www&#46;macrogen&#45;europe&#46;com&#47;</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item height_fix" id="italy">
                                <div class="name">Macrogen Italy</div>
                                <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/global_thumb_12.png" alt="Macrogen Italy"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>Established in Dec 2016</span></li>
                                    </ul>
                                    <div class="address">Viale Ortles, 22/4, 20139 Milano, MI, Italy</div>
                                    <div class="tel">
                                        <span>TEL&#46;</span>
                                        <a href="tel:+39-02-5666-0274">+39&#45;02&#45;5666&#45;0274 </a>
                                        <span>WEB&#46;</span>
                                        <a href="https://www.macrogen-europe.com/" target="_blank">www&#46;macrogen&#45;europe&#46;com&#47;</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item height_fix" id="madrid">
                                <div class="name">Macrogen Spain</div>
                                <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/global_thumb_9.png" alt="Macrogen Spain"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>Established in Dec 2016</span></li>
                                    </ul>
                                    <div class="address">Av Sur del Aeropuerto de Barajas, n° 24, Building 28, Office B-2, Madrid, Spain</div>
                                    <div class="tel">
                                        <span>TEL&#46;</span>
                                        <a href="tel:+34-911-138-378">&#43;34&#45;911&#45;138&#45;378</a>
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
