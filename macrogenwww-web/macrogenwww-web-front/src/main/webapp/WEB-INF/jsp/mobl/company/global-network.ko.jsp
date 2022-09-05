<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg" style="background-image: url(/publishing/mobile-ko/dist/img/macrogen/bg-global-network.png);">
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
            <div class="font-h4">글로벌 네트워크</div>
            <div class="font-slogan en">GLOBAL<br/>MACROGEN</div>
            <div class="font-h7-r">글로벌 정밀의학을 선도합니다.</div>
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
                <div class="desc">마크로젠은 세계 어디에서나 현지 고객 맞춤형 서비스를 제공하며 신속하고 체계적인 고객 대응으로 글로벌 정밀의학 선도기업으로 자리매김하고 있습니다.</div>
                <div class="map"></div>
            </div>
            <!-- e  map -->

            <nav class="tab-secondary" data-aos="fade-up" data-aos-duration="2000">
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                    <button class="nav-link ${ globalYn ne 'Y' ? 'active' : '' }" id="nav-tab-1" data-bs-toggle="tab" data-bs-target="#nav-1" type="button" role="tab" aria-controls="nav-1" aria-selected="true"><span>국내</span></button>
                    <button class="nav-link ${ globalYn eq 'Y' ? 'active' : '' }" id="nav-tab-2" data-bs-toggle="tab" data-bs-target="#nav-2" type="button" role="tab" aria-controls="nav-2" aria-selected="false"><span>글로벌</span></button>
                </div>
            </nav>

            <!-- s  map 상세 -->
            <div class="section-map-detail" data-aos="fade-up" data-aos-duration="2000">
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade ${ globalYn ne 'Y' ? 'show active' : '' }" id="nav-1" role="tabpanel" aria-labelledby="nav-tab-1">
                        <div class="box">
                            <div class="title">국내</div>
                            <div class="detail">
                                <ul>
                                    <li class="item" id="seoul">
                                        <div class="name">마크로젠 강남본사</div>
                                        <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/global_thumb_1.png" alt="마크로젠 강남본사"></div>
                                        <div class="info">
                                            <div class="address">서울특별시 강남구 테헤란로 238 (마크로젠빌딩) </div>
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
                                        <div class="name">마크로젠 지놈센터</div>
                                        <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/global_thumb_2.png" alt="마크로젠 지놈센터"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>1997년 6월 설립</span></li>
                                            </ul>
                                            <div class="address">서울특별시 금천구 벚꽃로 254, 10층 (가산동, 월드메르디앙1차)</div>
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
                                        <div class="name">마크로젠 모델동물센터</div>
                                        <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/global_thumb_3.png" alt="마크로젠 모델동물센터"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>2002년 2월 설립</span></li>
                                            </ul>
                                            <div class="address">서울특별시 강서구 강서로 466, 3층 (등촌동, 우리벤처타운)</div>
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
                                        <div class="name">마크로젠 대전지사</div>
                                        <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/global_thumb_4.png" alt="마크로젠 대전지사"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>2008년 2월 설립</span></li>
                                            </ul>
                                            <div class="address">대전광역시 유성구 테크노3로 65, 323호 (관평동, 한신에스메카)</div>
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
                                        <div class="name">마크로젠 송도 글로벌 지놈캠퍼스</div>
                                        <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/global_thumb_10.png" alt="마크로젠 송도 글로벌 지놈캠퍼스"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>2024년 설립 예정</span></li>
                                            </ul>
                                            <div class="address">인천광역시 연수구 송도동 210-2)</div>
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
                            <div class="title">글로벌</div>
                            <div class="detail">
                                <ul>
                                    <li class="item" id="rockville" >
                                        <div class="name">소마젠 (Psomagen) <span class="badge">관계사</span></div>
                                        <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/global_thumb_5.png" alt="소마젠 (Psomagen)"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>2004년 12월 설립</span></li>
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
                                        <div class="name">일본법인</div>
                                        <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/global_thumb_6.png" alt="일본법인"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>2007년 11월 설립</span></li>
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
                                        <div class="name">싱가포르법인</div>
                                        <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/global_thumb_8.png" alt="싱가포르법인"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>2018년 3월 설립 (지사 오픈: 2016년 11월)</span></li>
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
                                        <div class="name">유럽법인</div>
                                        <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/global_thumb_7.png" alt="유럽법인"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>2017년 9월 설립 (지사 오픈: 2008년 6월)</span></li>
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
                                        <div class="name">스페인지사</div>
                                        <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/global_thumb_9.png" alt="스페인지사"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>2016년 12월 설립</span></li>
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
                                    <li class="item" id="maastricht">
                                        <div class="name">벨기에지사</div>
                                        <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/global_thumb_11.png" alt="벨기에지사"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>2021년 8월 설립</span></li>
                                            </ul>
                                            <div class="address" style="margin-bottom:0;">
		                                   		<span>Sales Office&#46;</span><p>Professor Roger Van Overstraetenplein 5, 3000 Leuven, Belgium</p>                               
		                                    </div>
		                                    <div class="address">                                   		
		                                   		<span>Laboratory&#46;</span><p>Oxfordlaan 70, 6229 EV Maastricht, Netherlands</p>
		                                    </div>                                           
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
                                    <li class="item" id="italy">
                                        <div class="name">이탈리아지사</div>
                                        <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/global_thumb_12.png" alt="이탈리아지사"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>2021년 11월 설립</span></li>
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
                                        <div class="name">프랑스 지놈슈퍼센터</div>
                                        <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/global_thumb_13.png" alt="프랑스 지놈슈퍼센터"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>2022년 7월 설립</span></li>
                                            </ul>
                                            <div class="address">161 Rue de la Belle Etoile, 95700, Roissy-en, France</div>                                            
                                        </div>
                                    </li>
                                     <li class="item" id="santiago">
                                        <div class="name">칠레 지놈슈퍼센터</div>
                                        <div class="img"><img src="/publishing/mobile-ko/dist/img/macrogen/global_thumb_14.png" alt="칠레 지놈슈퍼센터"></div>
                                        <div class="info">
                                            <ul>
                                                <li><span>2022년 7월 설립</span></li>
                                            </ul>
                                            <div class="address">Magdalena 140 Oficina 402, Las Condes Santiago, Chile</div>                                            
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
