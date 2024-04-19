<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<div class="wrap">
		<div class="top-bg personal02">
			<header class="header header-white">
			    <div class="inner">
			        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
			        <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
			    </div>
			</header>
			<div class="frame">
	            <div class="font-h1">Healthcare Platform</div>
	        </div>
		</div>
		
		<div class="container">
        <link type="text/css" rel="stylesheet" href="/publishing/mobile-en/dist/css/business.css"/>
        <div class="section_business">

            <!-- 탭 컨텐츠 s-->
            <div class="info-box-wrap tab-content">
                <!--컨텐츠탭01-->
                <div class="info-box show">
                    <p class="font-h4 main-title" id="anchor2">GenTok</p>
                    <p class="subject font-body-h">
                        GenTok is a health management platform designed to cater to your individual needs. By leveraging genetic testing and microbiome analysis, GenTok empowers you to gain profound insights into your innate characteristics and current health status.
                    </p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/gentok_bg.png" alt="Unlock Your Body Manual: GenTok, Healthcare Platform">
                    </div>
					<div class="btn-store-wrap">
						<a href="https://play.google.com/store/apps/details?id=app.macrogen.gentok&pcampaignid=web_share" target="_blank"><img src="/publishing/mobile-en/dist/img/business/btn_googleplay.png" alt="Google Play" /></a>
						<a href="https://apps.apple.com/kr/app/%EC%A0%A0%ED%86%A1-gentok/id6450289510" target="_blank"><img src="/publishing/mobile-en/dist/img/business/btn_appstore.png" alt="App Store" /></a>
					</div>
                    <hr class="divider h10">
                    <!--content-anchor s-->
                    <div class="content-anchor">
                        <div class="selected-value _anchor-value">
                            <span class="text">Healthcare Platform</span>
                        </div>
                        <!--v0.11 줄바꿈이슈-->
                        <ul class="anchor-option">
                            <li class="anchor-value" onclick="TitleMove('target1')"><a href="#">Genetic Testing</a></li>
                            <li class="anchor-value" onclick="TitleMove('target8')"><a href="#">the Biome</a></li>
                        </ul>
                    </div>
                    <!--content-anchor e-->
                    <div class="list-gallery">
                        <div class="section-anchor">
                            <div class="list">
                                <p class="sub-title font-h5" id="target1">Genetic Testing</p>
								<div class="descript">
									GenTok offers comprehensive genetic testing covering 129 items such as obesity, hair loss, weight management, blood sugar regulation, and sleep patterns. With GenTok, discovering your genetic predispositions and receiving personalized health management tips has never been easier or more enjoyable, presented to you in convenient card formats.
									<p class="footnote">※ Genetic testing services are not available for minors (under 18 years old).</p>
								</div>
                                <div class="content">
                                    <div class="img">
                                        <img src="/publishing/mobile-en/dist/img/business/img_healthbeauth_img01.png" alt="Genetic Testing">
                                    </div>
									<div class="cont">
										<div class="list-area">
											<ul class="list-circle-dot">
												<li><p>Nutrients: 35 items, including vitamin C levels, vitamin D levels, coenzyme Q10 levels…</p></li>
												<li><p>Exercise Metrics: 10 items, including muscular exercise, endurance exercise, exercise recovery…</p></li>
												<li><p>Skin/Hair Analysis: 18 items, including male pattern baldness, skin aging, skin pigmentation…</p></li>
												<li><p>Dietary Patterns: 21 items, including appetite, satiety, bitter taste sensitivity…</p></li>
												<li><p>Personal Traits: 23 items, including alcohol flushing, nicotine dependence, caffeine metabolism…</p></li>
												<li><p>Healthcare Insights: 22 items, obesity, weight regain, abdominal obesity…</p></li>
											</ul>
										</div>
										<div class="btn-wrap">
											<a href="https://gentok.net/market/goods/5001" target="_blank" class="btn btn-sm btn-white">Read More</a>
											<a href="mailto:hello@macrogen.com" class="btn btn-sm btn-white">Service Inquiry</a>
										</div>
									</div>
                                </div>
                            </div>
                            <div class="list">
                                <p class="sub-title font-h5" id="target2">the Biome</p>
								<div class="descript">
									the Biome is microbiome analysis service. Microbiome, often referred to as the "second genome," dynamically responds to factors like diet, exercise, sleep patterns, lifestyle, and stress levels. By meticulously analyzing your microbiome, you gain invaluable insights to monitor your present health status and pave the way for a more methodical approach to health management.
								</div>
                                <div class="content">
                                    <div class="img">
                                        <img src="/publishing/mobile-en/dist/img/business/img_healthbeauth_img02.png" alt="the Biome">
                                    </div>
									<div class="cont">
										<p class="desc"><strong>The Biome Gold (Gut Microbiome Testing)</strong></p>
										<div class="list-area">
											<ul class="list-circle-dot">
												<li>
													<p>
														Experience a comprehensive analysis of gut health and life index:<br/>
														- Gut Health: Constipation, flatulence, abdominal bloating, functional abdominal discomfort, and diarrhea.<br/>
														- Wellness: Well-being with insights into happiness, fatigue, immunity, obesity, sleep quality, and aging.<br/>
														- Nutrient Metabolism: A detailed analysis of 14 essential nutrients including dietary fiber, B vitamins, protein, and BCAAs.<br/>
														- Probiotic Insights: The presence of 19 specific probiotics as per the standards set by the Korea Food and Drug Administration.
													</p>
												</li>
											</ul>
										</div>
										<div class="btn-wrap">
											<a href="https://gentok.net/market/goods/5001" target="_blank" class="btn btn-sm btn-white">Read More</a>
											<a href="mailto:hello@macrogen.com" class="btn btn-sm btn-white">Service Inquiry</a>
										</div>
									</div>
                                </div>
                            </div>
                        </div>
                        <!-- <hr class="divider">
                        <div class="section-anchor">
                            <div class="list">
                                v0.11 줄바꿈이슈 // title > .sub-title
                                <p class="sub-title font-h5" id="target6">My Genomestory The Plus Skin & Care 44 (48 subcategories)</p>
                                <div class="content">
                                    <div class="img">
                                        <img src="/publishing/mobile-en/dist/img/business/img_theplus_care44.png" alt="마이지놈스토리더플러스스킨&케어44">
                                    </div>
                                    <div class="cont">
                                        <p class="desc font-body">In addition to personal health and beauty management solutions, Macrogen helps you to get to know yourself by analyzing the genetic characteristics you want to know. The All-in-One solution covers the most areas in Korea and is a premium service that offers total health care.</p>
                                        <p class="caption">※ The service is not available to persons under 19 years of age.</p>
                                        <div class="list-area">
                                            <ul class="list-circle-dot">
                                                <li><p>Skin/Hair: 13 subcategories including pigmentation, aging skin, and male pattern hair loss</p></li>
                                                <li><p>Nutrients: 20 subcategories including vitamin C concentration, vitamin D concentration, coenzyme Q10, and magnesium concentration</p></li>
                                                <li><p>Health Care: 15 subcategories including obesity, tendency to yo-yo effect, abdominal obesity, and triglyceride concentration</p></li>
                                            </ul>
                                        </div>
                                        <div class="btn-wrap">
                                            <div class="btn-wrapper">
                                                <a href="mailto:mygenomestory@macrogen.com" class="btn btn-sm btn-light"><span>Service Inquiry</span></a>
                                                <a href="https://smartstore.naver.com/mygenomestory/products/4840761209" target="_blank" class="btn btn-sm btn-primary"><span>Purchase</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="section-anchor">
                            <div class="list">
                                <p class="sub-title font-h5" id="target7">My Genomestory The Plus 41 (43 subcategories)</p>
                                <div class="content">
                                    <div class="img">
                                        <img src="/publishing/mobile-en/dist/img/business/img_theplus_fit41.png" alt="마이지놈스토리더플러스피트니스41">
                                    </div>
                                    <div class="cont">
                                        <p class="desc font-body">The analysis for nutrients and exercise patterns allows you to plan your health care.</p>
                                        <p class="caption">※ The service is not available to persons under 19 years of age.</p>
                                        <div class="list-area">
                                            <ul class="list-circle-dot">
                                                <li><p>Exercise: 8 subcategories including fitness for strength exercise, fitness for endurance exercise, and recovery after exercise</p></li>
                                                <li><p>Nutrients: 20 subcategories including vitamin C concentration, vitamin D concentration, coenzyme Q10, and magnesium concentration</p></li>
                                                <li><p>Health Care: 15 subcategories including obesity, tendency to yo-yo effect, abdominal obesity, and triglyceride concentration</p></li>
                                            </ul>
                                        </div>
                                        <div class="btn-wrap">
                                            09.29 버튼명 변경 (자세히 보기 -> 서비스 문의)
                                            <div class="btn-wrapper">
                                                <a href="mailto:mygenomestory@macrogen.com" class="btn btn-sm btn-light"><span>Service Inquiry</span></a>
                                                <a href="https://smartstore.naver.com/mygenomestory/products/4840761209" target="_blank" class="btn btn-sm btn-primary"><span>Purchase</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="section-anchor">
                            <div class="list">
                                <p class="sub-title font-h5" id="target8">My Genomestory The Plus 11 (13 Subcategories)</p>
                                <div class="content">
                                    <div class="img">
                                        <img src="/publishing/mobile-en/dist/img/business/img_theplus12.png" alt="마이지놈스토리더플러스12">
                                    </div>
                                    <div class="cont">
                                        <p class="desc font-body">This is the only test solution that is available to persons under the age of 19, and consists of only the key services essential for easy and efficient health and beauty management.</p>
                                        <div class="list-area">
                                            <ul class="list-circle-dot">
                                                <li><p>Health: 6 subcategories including body mass index, HDL cholesterol, LDL cholesterol, and triglyceride concentration</p></li>
                                                <li><p>Skin: 4 subcategories including pigmentation, aging skin, and caffeine metabolism</p></li>
                                                <li><p>Hair: 3 subcategories including male pattern hair loss and alopecia areata</p></li>
                                            </ul>
                                        </div>
                                        <div class="btn-wrap">
                                            <div class="btn-wrapper">
                                                <a href="mailto:mygenomestory@macrogen.com" class="btn btn-sm btn-light"><span>Service Inquiry</span></a>
                                                <a href="https://smartstore.naver.com/mygenomestory/products/4150226329" target="_blank" class="btn btn-sm btn-primary"><span>Purchase</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                    </div>
                </div>
                <!-- //컨텐츠탭01 -->
            </div>
            <!--// 탭 컨텐츠 e-->
        </div>
        <script src="/publishing/mobile-ko/dist/js/business.js"></script>
    </div>
		
	</div>
</body>