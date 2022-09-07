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
            <div class="slogan-sub">글로벌 정밀의학을 선도합니다</div>
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
                <div class="desc">마크로젠은 세계 어디에서나 현지 고객 맞춤형 서비스를 제공하며 신속하고 체계적인 고객 대응으로<br/>글로벌 정밀의학 선도기업으로 자리매김하고 있습니다&#46;</div>
                <div class="map">
                	<a class="pin poland" href="#poland"><span>Warsaw&#44; Poland</span></a>
                    <a class="pin amsterdam" href="#amsterdam"><span>Amsterdam&#44; Netherlands</span></a>
                    <a class="pin maastricht" href="#maastricht"><span>Maastricht&#44; Netherlands</span></a>
                    <a class="pin paris" href="#paris"><span>Paris&#44; France</span></a>
                    <a class="pin milan" href="#italy"><span>Milan&#44; Italy</span></a>                    
                    <a class="pin madrid" href="#madrid"><span>Madrid&#44; Spain</span></a>
                    <a class="pin seoul" href="#seoul"><span>Seoul&#44; Korea</span></a>
                    <a class="pin songdo" href="#songdo"><span>Songdo&#44; Korea</span></a>
                    <a class="pin daejeon" href="#daejeon"><span>Daejeon&#44; Korea</span></a>
                    <a class="pin tokyo" href="#tokyo"><span>Tokyo&#44; japan</span></a>
                    <a class="pin biopolis" href="#biopolis"><span>Biopolis&#44; Singapore</span></a>
                    <a class="pin boston" href="#rockville"><span>Boston&#44; USA</span></a>
                    <a class="pin newyork" href="#rockville"><span>New york&#44; USA</span></a>                    
                    <a class="pin rockville" href="#rockville"><span>Rockville&#44; USA</span></a>
                    <a class="pin virginia" href="#rockville"><span>Virginia&#44; USA</span></a>
                    <a class="pin santiago" href="#santiago"><span>Santiago&#44; Chile</span></a>
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
                        <ul>
                            <li class="item height_fix" id="seoul">
                                <div class="name">마크로젠 강남본사</div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_1.png" alt="마크로젠 강남본사"></div>
                                <div class="info">
                                    <!-- <ul>
                                        <li><span>설립일자</span><span>2019년 6월</span></li>
                                        <li><span>주요사업</span><span>개인유전체 분석 및 장내 미생물 분석 서비스</span></li>
                                    </ul> -->
                                    <div class="address">서울특별시 강남구 테헤란로 238 &#40;마크로젠빌딩&#41; </div>
                                    <div class="tel">
                                        <span>TEL&#46;</span>
                                        <a href="tel:+82-2-2180-7000">&#43;82&#45;2&#45;2180&#45;7000</a>
                                        <span>FAX&#46;</span>
                                        <a href="tel:+82-2-2180-7100">&#43;82&#45;2&#45;2180&#45;7100</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item height_fix">
                                <div class="name">마크로젠 지놈센터</div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_2.png" alt="마크로젠 지놈센터"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>1997년 6월 설립</span></li>
                                        <!-- <li><span>주요사업</span><span>유전체 분석 및 임상진단 서비스</span></li> -->
                                    </ul>
                                    <div class="address">서울특별시 금천구 벚꽃로 254&#44; 10층 &#40;가산동&#44; 월드메르디앙1차&#41;</div>
                                    <div class="tel">
                                        <span>TEL&#46;</span>
                                        <a href="tel:+82-2-2180-7000">&#43;82&#45;2&#45;2180&#45;7000</a>
                                        <span>FAX&#46;</span>
                                        <a href="tel:+82-2-2180-7100">&#43;82&#45;2&#45;2180&#45;7100</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item height_fix">
                                <div class="name">마크로젠 모델동물센터</div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_3.png" alt="마크로젠 모델동물센터"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>2002년 2월 설립</span></li>
                                        <!-- <li><span>주요사업</span><span>유전자 변형 마우스 제작 서비스</span></li> -->
                                    </ul>
                                    <div class="address">서울특별시 강서구 강서로 466&#44; 3층 &#40;등촌동&#44; 우리벤처타운&#41;</div>
                                    <div class="tel">
                                        <span>TEL&#46;</span>
                                        <a href="tel:+82-2-3663-5990">&#43;82&#45;2&#45;3663&#45;5990</a>
                                        <span>FAX&#46;</span>
                                        <a href="tel:+82-2-3663-5179">&#43;82&#45;2&#45;3663&#45;5179</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item height_fix" id="daejeon">
                                <div class="name">마크로젠 대전지사</div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_4.png" alt="마크로젠 대전 지놈센터"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>2008년 2월 설립</span></li>
                                        <!-- <li><span>주요사업</span><span>유전체 분석 및 임상진단 서비스</span></li> -->
                                    </ul>
                                    <div class="address">대전광역시 유성구 테크노3로 65&#44; 323호 &#40;관평동&#44; 한신에스메카&#41;</div>
                                    <div class="tel">
                                        <span>TEL&#46;</span>
                                        <a href="tel:+82-42-336-7080">&#43;82&#45;42&#45;336&#45;7080</a>
                                        <span>FAX&#46;</span>
                                        <a href="tel:+82-42-336-7180">&#43;82&#45;42&#45;336&#45;7180</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item height_fix" id="songdo">
                                <div class="name">마크로젠 송도 글로벌 지놈캠퍼스</div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_10.png" alt="마크로젠 송도 글로벌 지놈캠퍼스"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>2024년 설립 예정</span></li>
                                        <!-- <li><span>주요사업</span><span>유전체 분석 및 임상진단 서비스</span></li> -->
                                    </ul>
                                    <div class="address">인천광역시 연수구 송도동 210-2</div>
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
                    <div class="title">글로벌</div>
                    <div class="detail">
                        <ul>
                            <li class="item height_fix" id="rockville">
                                <div class="name">소마젠 &#40;Psomagen&#41; <span class="badge">관계사</span></div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_5.png" alt="소마젠 (Psomagen)"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>2004년 12월 설립</span></li>
                                        <!-- <li><span>주요사업</span><span>유전체 분석 및 임상진단 서비스</span></li> -->
                                    </ul>
                                    <div class="address">1330 Piccard Drive&#44; Suite 205&#44; Rockville&#44; MD 20850 USA</div>
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
                                <div class="name">일본법인</div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_6.png" alt="일본법인"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>2007년 11월 설립</span></li>
                                        <!-- <li><span>주요사업</span><span>유전체 분석 및 임상진단 서비스</span></li> -->
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
                            <li class="item height_fix" id="biopolis">
                                <div class="name">싱가포르법인</div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_8.png" alt="싱가포르법인"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>2018년 3월 설립 (지사 오픈: 2016년 11월)</span></li>
                                        <!-- <li><span>주요사업</span><span>유전체 분석 및 임상진단 서비스</span></li> -->
                                    </ul>
                                    <div class="address">#05-18, Synapse Building, 3 Biopolis Drive, Singapore 138623</div>
                                    <div class="tel">
                                        <span>TEL&#46;</span>
                                        <a href="tel:+65-6339-0927">&#43;65&#45;6339&#45;0927</a>
                                        <span>WEB&#46;</span>
                                        <a href="http://www.macrogen-apac.com" target="_blank">www&#46;macrogen&#45;apac&#46;com</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item height_fix" id="amsterdam">
                                <div class="name">유럽법인</div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_7.png" alt="유럽법인"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>2017년 9월 설립 (지사 오픈: 2008년 6월)</span></li>
                                        <!-- <li><span>주요사업</span><span>유전체 분석 및 임상진단 서비스</span></li> -->
                                    </ul>
                                    <div class="address">Meibergdreef 57&#44; Amsterdam&#44; Netherlands</div>
                                    <div class="tel">
                                        <span>TEL&#46;</span>
                                        <a href="tel:+31-20-333-7563">+31&#45;20&#45;333&#45;7563</a>
                                        <span>WEB&#46;</span>
                                        <a href="https://www.macrogen-europe.com/" target="_blank">www&#46;macrogen&#45;europe&#46;com&#47;</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item height_fix" id="madrid">
                                <div class="name">스페인지사</div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_9.png" alt="스페인지사"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>2016년 12월 설립</span></li>
                                        <!-- <li><span>주요사업</span><span>유전체 분석 및 임상진단 서비스</span></li> -->
                                    </ul>
                                    <div class="address">C. de Martínez Villergas, 52, 28027 Madrid, Spain</div>
                                    <div class="tel">
                                        <span>TEL&#46;</span>
                                        <a href="tel:+34-911-138-378">&#43;34&#45;911&#45;138&#45;378</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item height_fix" id="maastricht">
                                <div class="name">벨기에 지놈슈퍼센터</div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_11.png" alt="벨기에 지놈슈퍼센터"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>2021년 8월 설립</span></li>
                                        <!-- <li><span>주요사업</span><span>유전체 분석 및 임상진단 서비스</span></li> -->
                                    </ul>
                                    <div class="address" style="margin-bottom:0;">
                                   		<span>Sales Office&#46;</span> Professor Roger Van Overstraetenplein 5, 3000 Leuven, Belgium                                   
                                    </div>
                                    <div class="address">                                   		
                                   		<span>Laboratory&#46;</span> Oxfordlaan 70, 6229 EV Maastricht, Netherlands
                                    </div>
                                    <div class="tel">
                                        <span>TEL&#46;</span>
                                        <a href="tel:+31-20-333-7563">+31&#45;20&#45;333&#45;7563</a>
                                        <span>WEB&#46;</span>
                                        <a href="https://www.macrogen-europe.com/" target="_blank">www&#46;macrogen&#45;europe&#46;com&#47;</a>
                                    </div>
                                </div>
                            </li>
                            <li class="item height_fix" id="italy">
                                <div class="name">밀라노 지놈슈퍼센터</div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_12.png" alt="밀라노 지놈슈퍼센터"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>2021년 11월 설립</span></li>
                                        <!-- <li><span>주요사업</span><span>유전체 분석 및 임상진단 서비스</span></li> -->
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
                            <li class="item height_fix" id="paris">
                                <div class="name">파리 지놈슈퍼센터</div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_13.png" alt="파리 지놈슈퍼센터"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>2022년 7월 설립</span></li>
                                        <!-- <li><span>주요사업</span><span>유전체 분석 및 임상진단 서비스</span></li> -->
                                    </ul>
                                    <div class="address">161 Rue de la Belle Etoile, 95700, Roissy-en, France</div>                                    
                                </div>
                            </li>   
                            <li class="item height_fix" id="santiago">
                                <div class="name">산티아고 지놈슈퍼센터</div>
                                <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_14.png" alt="산티아고 지놈슈퍼센터"></div>
                                <div class="info">
                                    <ul>
                                        <li><span>2022년 7월 설립</span></li>
                                        <!-- <li><span>주요사업</span><span>유전체 분석 및 임상진단 서비스</span></li> -->
                                    </ul>
                                    <div class="address">Magdalena 140 Oficina 402, Las Condes Santiago, Chile</div>                                    
                                </div>
                            </li>   
                            <li class="item height_fix" id="poland">
                                <div class="name">바르샤바 지놈슈퍼센터</div>
                               <!-- <div class="img"><img src="/publishing/pc-ko/dist/img/macrogen/global_thumb_15.png" alt="바르샤바 지놈슈퍼센터"></div> -->
                                <div class="info">
                                    <ul>
                                        <li><span>2022년 6월 설립</span></li>
                                        <!-- <li><span>주요사업</span><span>유전체 분석 및 임상진단 서비스</span></li> -->
                                    </ul>
                                    <div class="address">Teofila Firlika 19, 71-637 Szczecin, Poland</div>                                    
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
