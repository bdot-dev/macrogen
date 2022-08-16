<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg macrogen" style="background-image: url(/publishing/pc-ko/dist/img/macrogen/bg-ethical-management-2.png);">
        <!--header 수정시 메인 header 같이 수정해주세요-->
		<header class="header" id="header">
			<c:import url="/inc/header-inner-gnb" />
		</header>
        <div class="frame">
            <div class="hero-title">사회공헌</div>
            <div class="slogan ko">함께하는 미래를 위해<br/>사회적 책임을 실천합니다</div>
            <div class= "slogan-sub">지구와 인류의 건강한 삶을 위해 노력합니다</div>
            <nav aria-label="breadcrumb">
			    <ol class="breadcrumb breadcrumb-white">
			        <li class="breadcrumb-item">Home</li>
			        <li class="breadcrumb-item">ESG</li>
			        <li class="breadcrumb-item">사회공헌</li>
			    </ol>
			</nav>

            <div class="scroll-wrap">
			    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
			</div>

        </div>
    </div>

    <div class="container container-fluid">
        <div class="macrogen ethical-management">
            <!-- s  문구 -->
            <div class="section-description">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="text-lg">마크로젠人은 지속가능한<br/> 지구를 생각합니다</div>
                    <div class="desc">마크로젠 임직원은 생활 속 환경 보호, 사회적 책임 활동 등 자발적으로 ESG 캠페인에 참여하며  친환경적인 사내 문화를 조성하고 있습니다.<br/>
					더 나은 세상을 만들어 나가기 위해 마크로젠 임직원은 적극적으로 ESG 활동을 실천하고 있습니다.</div>
                </div>
            </div>
            <!-- e  문구 -->
            
            <!-- s  하나 -->
            <div class="section-banner" style="background-image: url(/publishing/pc-ko/dist/img/macrogen/bg-ethical-banner-3.png);">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-slogan color-white">하나&#46;</div>
                    <div class="desc color-white">마크로젠 임직원이 실천하는<br/>ESG 활동</div>
                </div>
            </div>
            <!-- e 하나 -->
            
            <div class="section-activity section-supporters">
                <div class="box" data-aos="fade-up" data-aos-duration="2000">
                    <div class="title">ESG 서포터즈</div>
                    <div class="desc">임직원들의 자발적 참여로 구성된 ESG 서포터즈는 지속가능한 지구를 위한 공동의 목표를 가지고 있으며 1년의 임기로 활동합니다.<br/>
						환경 보호, 사회적 책임 활동 등 캠페인을 직접 기획하며 많은 임직원들이 ESG 활동에 동참 할 수 있도록 다양한 프로그램을 만들고 있습니다.
					</div>
					<div class="slider">				        
				        <div class="swiper-container _supportSlider">
				            <div class="swiper-wrapper">				
								<c:forEach var="result" items="${ esgList }" varStatus="status">
					                <div class="swiper-slide">
					                   <div class="img">
					                       <img src="${publicUrl}${result.imageFlpth}" alt="${result.cntntsSj }">
					                   </div>
					                   <div class="content">${result.cntntsSj }
					                   </div>
					                   <div class="date"><fmt:formatDate value="${result.postDt }" pattern="yyyy.MM" /></div>
					                </div>
								</c:forEach>				
				            </div>
				        </div>	
				        <div class="slider-navigation">
				            <a href="#" class="btn btn-circle btn-white btn-sm _btnPrev"><i class="icon icon-arrow-left-sm"></i></a>
				            <a href="#" class="btn btn-circle btn-white btn-sm _btnNext"><i class="icon icon-arrow-right-sm"></i></a>
				        </div>			        
				    </div>
                </div>
                <div class="box" data-aos="fade-up" data-aos-duration="2000">   
                	<div class="title">마크로젠은 사회적 책임을 위해 <br/>다양한 파트너와 동행합니다</div>
                    <div class="desc">마크로젠은 유전체 분석 분야의 인재 양성 및 유전체 분석 기술을 활용하여 사회적 책임을 다하려 합니다.<br/>
						비영리기관, 지자체 및 대학 등 다양한 파트너와 협업하며 지속가능한 사회적 발전에 도움이 되도록 최선을 다하겠습니다.
					</div>                 
                </div>
            </div>
		    <script>
		        new Swiper("._supportSlider", {
		            slidesPerView: "4",
		            slidesPerGroup: 4,
		            grabCursor: true,
		            spaceBetween: 20,
		            loopFillGroupWithBlank : true, // 그룹수가 맞지 않을 경우 빈칸으로 메우기(4개가 나와야 되는데 1개만 있다면 3개는 빈칸으로 채워서 4개를 만듦)
		            /* loop : true, */
		            navigation: {
		                nextEl: "._btnNext",
		                prevEl: "._btnPrev",
		            },
		        });		        		      
		    </script>
		    
		     <!-- s  둘 -->
            <div class="section-banner" style="background-image: url(/publishing/pc-ko/dist/img/macrogen/bg-ethical-banner-4.png);">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-slogan color-white">둘&#46;</div>
                    <div class="desc color-white">마크로젠과<br/>함께하는 사회적 파트너</div>
                </div>
            </div>
            <!-- e 둘 -->
            
            <div class="section-activity section-supporters">
                <div class="box" data-aos="fade-up" data-aos-duration="2000">
                    <div class="title">지역 사회 프로그램</div>
                    <div class="desc">마크로젠은 유전체 분야 전문기술인력 양성, 소외계층 유전자 검사 지원 및 인류의 건강한 삶을 위하여<br/>
						다양한 분야의 공익 활동을 추진해 나가고 있습니다.
					</div>
					<div class="slider">				        
				        <div class="swiper-container _communitySlider">
				            <div class="swiper-wrapper">				
								<c:forEach var="result" items="${ communityList }" varStatus="status">
					                <div class="swiper-slide">
					                   <div class="img">
					                       <img src="${publicUrl}${result.imageFlpth}" alt="${result.cntntsSj }">
					                   </div>
					                   <div class="content">${result.cntntsSj }
					                   </div>
					                   <div class="date"><fmt:formatDate value="${result.postDt }" pattern="yyyy.MM" /></div>
					                </div>
								</c:forEach>				
				            </div>
				        </div>		
				        <div class="slider-navigation">
				            <a href="#" class="btn btn-circle btn-white btn-sm _btnPrev"><i class="icon icon-arrow-left-sm"></i></a>
				            <a href="#" class="btn btn-circle btn-white btn-sm _btnNext"><i class="icon icon-arrow-right-sm"></i></a>
				        </div>				        		        
				    </div>
                </div>
                <div class="box" data-aos="fade-up" data-aos-duration="2000">   
                	<div class="title">마크로젠은 대한민국의 미래를<br/>응원하고 지원합니다</div>
                    <div class="desc">강한 책임감과 소명의식을 지닌 마크로젠은 앞으로 생명공학 분야의 연구자들을 위한 든든한 후원자이자<br/>
						국가 기술경쟁력 강화의 중심축 역할로서 맡은바 사회적 책임을 다할 것입니다.
					</div>                 
                </div>
            </div>
		    <script>
		        new Swiper("._communitySlider", {
		            slidesPerView: "4",
		            slidesPerGroup: 4,
		            spaceBetween: 20,
		            grabCursor: true,
		            loopFillGroupWithBlank : true, // 그룹수가 맞지 않을 경우 빈칸으로 메우기(4개가 나와야 되는데 1개만 있다면 3개는 빈칸으로 채워서 4개를 만듦)
		            /* loop : true, */
		            navigation: {
		                nextEl: "._btnNext",
		                prevEl: "._btnPrev",
		            },
		        });		        		      
		    </script>
		    
            <!-- s  셋 -->
            <div class="section-banner" style="background-image: url(/publishing/pc-ko/dist/img/macrogen/bg-ethical-banner-1.png);">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-slogan color-white">셋&#46;</div>
                    <div class="desc color-white">마크로젠이 후원하는<br/>과학자상</div>
                </div>
            </div>
            <!-- e 셋 -->

            <!-- s 과학자 상 -->
            <div class="section-reward">
                <div class="inner">
                    <div class="list">
                        <!-- 마크로젠 과학자상 -->
                        <div class="item" data-aos="fade-up" data-aos-duration="2000">
                            <div class="list-header">
                                <div class="title">마크로젠<br/>과학자상</div>
                                <div class="btn-wrap"><a href="#cl=msa" class="btn btn-sm btn-white"><span>역대 수상자 전체보기</span></a></div>
                            </div>
                            <div class="list-body">
                                <div class="desc">
                                    현재 생명공학은 IT분야와 함께 미래 국가경제를 견인할 신성장동력으로 새롭게 자리매김하고 있습니다&#46;<br/>
                                    특히 생명공학은 생물체를 이용하여 새로운 혁신기술을 개발하는 응용과학으로서 의약&#44; 농업&#44; 에너지&#44; 환경 등 다양한 산업 분야에 활용되어 향후 미래의 고부가가치 산업으로 성장하는 데 없어서는 안될 중요한 역할을 담당하고 있습니다&#46; 앞으로 우리 국가경제의 미래는 자신의 분야에서 끊임없이 정진하고 있는 우수한 생명과학도의 손에 달려 있다고 해도 과언이 아닙니다&#46;<br/>
                                    마크로젠 과학자상은 기초 생명공학 분야에서 탁월한 업적을 이룬 국내 과학자를 격려하고 지원하기 위해 마련된 상입니다&#46;
                                </div>
                                <div class="swiper reward _reward1">
                                    <div class="swiper-wrapper">

                                    	<c:forEach var="result" items="${ msaResultList }" varStatus="status">
	                                        <div class="swiper-slide">
	                                            <div class="box">
	                                                <div class="img"><img src="${publicUrl }${ result.photoFlpth }" alt="${ result.wnpzNm }"></div>
	                                                <div class="info">
	                                                    <div class="sub">${ result['wnpzTmeCodeNm'.concat(lang)] }</div>
	                                                    <div class="name">${ result.wnpzNm }</div>
	                                                    <div class="job">${ result.occp }</div>
	                                                    <div class="career">
	                                                        <div class="tit">주요 연구 업적</div>
	                                                        <ul>
	                                                            <li>${ result.rm }</li>
	                                                        </ul>
	                                                    </div>
	                                                    <div class="btn-wrap"><a href="#sn=${result.wnpzSn }&cl=msa" class="btn btn-text"><span>MORE</span><i class="icon icon-arrow-right-long"></i></a></div>
	                                                </div>
	                                            </div>
	                                        </div>
                                    	</c:forEach>


                                    </div>
                                </div>
                                <div class="pagination-wrap">
                                    <ul class="navigation">
                                        <li class="page-item prev">
                                            <a class="page-link" href="#">
                                                <span class="sr-only">이전</span>
                                            </a>
                                        </li>
                                        <li class="page-item next">
                                            <a class="page-link" href="#">
                                                <span class="sr-only">다음</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <script>
                                    var swiper = new Swiper("._reward1", {
                                        slidesPerView: 1,
                                        centeredSlides: false,
                                        spaceBetween: 0,
                                        grabCursor: true,
                                        navigation: {
                                            nextEl: '._reward1 + .pagination-wrap .page-item.next',
                                            prevEl: '._reward1 + .pagination-wrap .page-item.prev',
                                        },
                                    });
                                </script>
                            </div>
                        </div>

                        <!-- 마크로젠 여성과학자상 -->
                        <div class="item" data-aos="fade-up" data-aos-duration="2000">
                            <div class="list-header">
                                <div class="title">마크로젠<br/>여성과학자상</div>
                                <div class="btn-wrap"><a href="#cl=wsa" class="btn btn-sm btn-white"><span>역대 수상자 전체보기</span></a></div>
                            </div>
                            <div class="list-body">
                                <div class="desc">
                                    &#39;마크로젠 여성과학자상&#39;은 기초생명과학 분야에서 높은 역량을 지닌 여성과학자들에 대한 지원이 활발히 이루어질 수 있도록 마련된 상입니다&#46;<br/>
                                    대한민국 생명공학분야의 여성과학자들은 학문에 대한 강한 사명감과 끊임없는 연구개발을 바탕으로 우수한 연구성과들을 창출함으로써 국가를 넘어 세계 과학발전에 기여해왔습니다&#46;<br/>
                                    이러한 흐름을 반영하듯 정부는 2002년  &#39;여성과학기술인 육성 및 지원에 관한 법률&#39;을 제정하였으며&#44; 해당 법률에 의거하여 중장기 정책목표와 방향을 설정함으로써 이공계 연구직&#183;기술직에 종사하는 여성과학자를 육성하기 위한 다양한 정책들을 지원하고 있습니다&#46;<br/>
                                    마크로젠은 학문에 대한 강한 열정과 섬세함&#44; 그리고 유연한 리더십 등 다양한 장점을 겸비한 여성과학자들이 무한한 재능과 더 큰 가능성을 펼쳐나갈 수 있도록 함께 응원하고 지지합니다&#46;
                                </div>
                                <div class="swiper reward _reward2">
                                    <div class="swiper-wrapper">

                                    	<c:forEach var="result" items="${ wsaResultList }" varStatus="status">
	                                        <div class="swiper-slide">
	                                            <div class="box">
	                                                <div class="img"><img src="${publicUrl }${ result.photoFlpth }" alt="${ result.wnpzNm }"></div>
	                                                <div class="info">
	                                                    <div class="sub">${ result['wnpzTmeCodeNm'.concat(lang)] }</div>
	                                                    <div class="name">${ result.wnpzNm }</div>
	                                                    <div class="job">${ result.occp }</div>
	                                                    <div class="career">
	                                                        <div class="tit">주요 연구 업적</div>
	                                                        <ul>
	                                                            <li>${ result.rm }</li>
	                                                        </ul>
	                                                    </div>
	                                                    <div class="btn-wrap"><a href="#sn=${result.wnpzSn }&cl=wsa" class="btn btn-text"><span>MORE</span><i class="icon icon-arrow-right-long"></i></a></div>
	                                                </div>
	                                            </div>
	                                        </div>
                                    	</c:forEach>

                                    </div>
                                </div>
                                <div class="pagination-wrap">
                                    <ul class="navigation">
                                        <li class="page-item prev">
                                            <a class="page-link" href="#">
                                                <span class="sr-only">이전</span>
                                            </a>
                                        </li>
                                        <li class="page-item next">
                                            <a class="page-link" href="#">
                                                <span class="sr-only">다음</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <script>
                                    var swiper = new Swiper("._reward2", {
                                        slidesPerView: 1,
                                        centeredSlides: false,
                                        spaceBetween: 0,
                                        grabCursor: true,
                                        navigation: {
                                            nextEl: '._reward2 + .pagination-wrap .page-item.next',
                                            prevEl: '._reward2 + .pagination-wrap .page-item.prev',
                                        },
                                    });
                                </script>
                            </div>
                        </div>

                        <!-- 마크로젠 젊은 생명정보학자상 -->
                        <div class="item" data-aos="fade-up" data-aos-duration="2000">
                            <div class="list-header">
                                <div class="title">마크로젠<br/>젊은 생명정보<br/>학자상</div>
                                <div class="btn-wrap"><a href="#cl=yba" class="btn btn-sm btn-white"><span>역대 수상자 전체보기</span></a></div>
                            </div>
                            <div class="list-body">
                                <div class="desc">
                                    &#39;마크로젠 젊은 생명정보학자상&#39;은 생명정보학 분야에서 전도유망한 국내 신진 과학자를 지원합니다&#46;<br/>
                                    마크로젠이 지원하고 한국생명정보학회가 주최하는 &#39;마크로젠 젊은 생명정보학자상&#39;은 2019년에 제정되었으며&#44; 과학 분야에서 탁월한 연구실적을 달성한 신진 과학자를 발굴하고 격려하기 위해 마련되었습니다&#46; 마크로젠은 앞으로 생명정보학 분야의 높은 잠재력을 지닌 신진 과학자를 후원하여 국내 과학기술의 경쟁력을 강화하고 생명과학 발전을 위해 아낌없이 지원하겠습니다&#46;
                                </div>
                                <div class="swiper reward _reward3">
                                    <div class="swiper-wrapper">

                                    	<c:forEach var="result" items="${ ybaResultList }" varStatus="status">
	                                        <div class="swiper-slide">
	                                            <div class="box">
	                                                <div class="img"><img src="${publicUrl }${ result.photoFlpth }" alt="${ result.wnpzNm }"></div>
	                                                <div class="info">
	                                                    <div class="sub">${ result['wnpzTmeCodeNm'.concat(lang)] }</div>
	                                                    <div class="name">${ result.wnpzNm }</div>
	                                                    <div class="job">${ result.occp }</div>
	                                                    <div class="career">
	                                                        <div class="tit">주요 연구 업적</div>
	                                                        <ul>
	                                                            <li>${ result.rm }</li>
	                                                        </ul>
	                                                    </div>
	                                                    <div class="btn-wrap"><a href="#sn=${result.wnpzSn }&cl=yba" class="btn btn-text"><span>MORE</span><i class="icon icon-arrow-right-long"></i></a></div>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </c:forEach>
                                    </div>
                                </div>
                                <div class="pagination-wrap">
                                    <ul class="navigation">
                                        <li class="page-item prev">
                                            <a class="page-link" href="#">
                                                <span class="sr-only">이전</span>
                                            </a>
                                        </li>
                                        <li class="page-item next">
                                            <a class="page-link" href="#">
                                                <span class="sr-only">다음</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <script>
                                    var swiper = new Swiper("._reward3", {
                                        slidesPerView: 1,
                                        centeredSlides: false,
                                        spaceBetween: 0,
                                        grabCursor: true,
                                        navigation: {
                                            nextEl: '._reward3 + .pagination-wrap .page-item.next',
                                            prevEl: '._reward3 + .pagination-wrap .page-item.prev',
                                        },
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- e 과학자 상 -->

            <!-- s 넷 -->
            <div class="section-banner" style="background-image: url(/publishing/pc-ko/dist/img/macrogen/bg-ethical-banner-2.png);">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="font-slogan color-white">넷&#46;</div>
                    <div class="desc color-white">마크로젠의 사회적<br/>후원활동</div>
                </div>
            </div>
            <!-- e 넷 -->

            <div class="section-activity">
                <div class="box" data-aos="fade-up" data-aos-duration="2000">
                    <div class="title">근보회 활동후원</div>
                    <div class="desc">&#39;근보회&#39;는 유전자 이상에 의해 발생하는 근육질환인 근이영양증을 앓고 있는 환우와 가족들의 모임으로서<br/>1999년 11월 발족한 비영리 민간단체입니다&#46;</div>
                </div>
                <div class="main-img" data-aos="fade-up" data-aos-duration="2000">
                    <!-- <img src="/publishing/pc-ko/dist/img/macrogen/ethical-activity-thumb-1.png" alt="근보회 활동후원"> -->
                </div>
                <div class="box" data-aos="fade-up" data-aos-duration="2000">
                    <div class="multi-stage">
                        <div class="row">
                            <div class="col">
                                <div class="item item-txt">
                                    <div class="tit">마크로젠은 근보회 활동을 후원합니다</div>
                                    <div class="desc">근보회는 근보회 환우를 위한 복지혜택&#44; 오프라인 정기모임&#44; 근이영양증 환우 진단 및 간병을 위한 상담서비스 제공 등 근이영양증을 알리는 활동과 함께 그 치료법 등을 찾는 데 도움을 줄 수 있도록 다양한 활동들을 지속하고 있습니다&#46; <br/>마크로젠은 근이영양증 연구자들을 물색하여 이들이 희귀질환을 연구할 수 있도록 지원하고 있으며 환우들과 회사임직원이 함께하는 봄나들이&#44; 작은 음악회 등 정기적인 근보회 활동을 통해 친목 도모 및 상호교류의 장을 만들어 가고 있습니다&#46;</div>
                                </div>
                                <div class="item item-img"><img src="/publishing/pc-ko/dist/img/macrogen/ethical-activity-thumb-2.png" alt="마크로젠은 근보회 활동을 후원합니다"></div>
                            </div>
                            <div class="col">
                                <div class="item item-img"><img src="/publishing/pc-ko/dist/img/macrogen/ethical-activity-thumb-3.png" alt="근이영양증 (Muscular dystrophy)이란?"></div>
                                <div class="item item-txt">
                                    <div class="tit">근이영양증 &#40;Muscular dystrophy&#41;이란&#63;</div>
                                    <div class="desc">유전적인 요인으로 진행성 근력저하 및 위축을 보이고 병리학적으로 근육섬유의 괴사 및 재생을 특징으로 하는 퇴행성 근육병증을 말합니다&#46; 이는 디스트로핀&#40;dystrophin&#41; 유전자 등 유전자 돌연변이에 의해 특정 단백이 소실되어 근세포막의 손상으로 근육섬유의 괴사와 퇴행 과정을 거쳐 결국 근력저하 및 위축이 발생하게 되는 질환입니다&#46; 해당 질환이 발생하는 유전적 원인으로는 50&#45;60&#37;가 유전자 결실에 의하여 발생하며 나머지 40&#45;50&#37;는 점 돌연변이&#44; 미세 결손&#44; 중복 등이 그 원인으로 알려져 있습니다&#46;</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->

	<script src="/js/util/Hash.js"></script>
    <script>
    	$(function() {
    		$(window).on('hashchange', function() {
    			console.log(location.hash);
    		    var wnpzClCode = Hash.getParam('cl');
    		    var sn = Hash.getParam('sn');
    		    console.log('wnpzClCode:', wnpzClCode);
    		    console.log('sn:', sn);

    		    if (!wnpzClCode) return;

    		    var $modalContent = $('#modalListOfWinners .modal-content');
    		    if (sn) {
        		    <%-- 수상자 상세 --%>
        		    console.log('winner detail');
        			$.ajax({
        				dataType: 'html', type : 'post',
        				url: '/${rc.locale.language}/company/winner/viewAjaxHtml/' + sn,
        				data: { wnpzClCode: wnpzClCode },
        			}).done(function(html) {
        				$modalContent.empty().html(html);
    				    console.log('modalListOfWinners.show', modalListOfWinners);
        			    modalListOfWinners.show();
        			});

    		    } else {
    		    	<%-- 수상자 목록 --%>
        		    console.log('winner list');
    				$.ajax({
    					dataType: 'html', type : 'post',
    					url: '/${rc.locale.language}/company/winner/listAjaxHtml',
        				data: { wnpzClCode: wnpzClCode },
    				}).done(function(html) {
    					$modalContent.empty().html(html);
    				    console.log('modalListOfWinners.show', modalListOfWinners);
        			    modalListOfWinners.show();
    				});

    		    }
    		});

    		$(window).trigger('hashchange');
    	});
    </script>

</body>