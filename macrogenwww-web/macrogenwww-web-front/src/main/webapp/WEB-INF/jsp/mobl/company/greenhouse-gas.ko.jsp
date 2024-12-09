<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>
	<div class="wrap">	
		<div class="full-bg">
	        <header class="header">
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
			                // $('.header').show().css({'position': 'absolute','top':'0'}).addClass('header-white');
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
	            <h2 class="font-h4">온실가스</h2>
	            <!-- <div class="font-h7-r">지속가능한 지구를 위해 기후변화<br>대응에 동참하겠습니다</div> -->
	            <div class="scroll-wrap">
	                <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
	            </div>
	
	        </div>
	    </div>
	    
	    <div class="container">
	        <div class="macrogen esg-greenhouse">
	            <!-- s text -->
	            <div class="section-phrase">
	                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
	                    <div class="font-h3">
	                        지속 가능한 내일을 위해<br>
	                        기업이 환경에 미치는 <br>
	                        영향을 지속적으로 <br>
	                        모니터링 하겠습니다
	                    </div>
	                </div>
	            </div>
	            <!-- e text -->
	
	            <!-- s -->
	            <div class="section-greenhouse">
	                <div class="box" data-aos="fade-up" data-aos-duration="2000">
	                    <div class="font-h4">온실가스 인벤토리 구축</div>
	                    <div class="item bg"><img src="/publishing/mobile-ko/dist/img/esg/greenhouse-1.png" alt=""></div>
	                    <div class="item text">
	                        <div class="font-h4">Environment</div>
	                        <div class="font-body-h">
	                            마크로젠은 앞으로도 미래세대와 <br>
	                            지속가능한 지구를 위하여 기후변화에 대한 <br>
	                            경각심을 갖고 ESG경영에 대한 관심과 노력을 <br>
	                            중장기적으로 이어나가고자 합니다.
	                        </div>
	                    </div>
	                </div>
	                <div class="box" data-aos="fade-up" data-aos-duration="2000">
	                    <div class="item bg"><img src="/publishing/mobile-ko/dist/img/esg/greenhouse-2.png" alt=""></div>
	                    <div class="item text">
	                        <div class="font-h4">System</div>
	                        <div class="font-body-h">
	                            2020년부터 총 4곳의 국내 사업장(강남, 가산, 대전,
	                            등촌)의 온실가스 인벤토리 시스템을 구축하였으며,
	                            향후 해외 사업장으로 인벤토리 구축을<br>
	                            확대해 나갈 것입니다.
	                        </div>
	                    </div>
	                </div>
	                <div class="box" data-aos="fade-up" data-aos-duration="2000">
	                    <div class="item bg"><img src="/publishing/mobile-ko/dist/img/esg/greenhouse-3.png" alt=""></div>
	                    <div class="item text">
	                        <div class="font-h4">Trust</div>
	                        <div class="font-body-h">
	                            또한, 자발적 제3자 검증 (한국표준협회)를 통해
	                            국제적 수준의 산정기준에 근거하여 데이터에 대한
	                            정확성과 신뢰성을 확보하였습니다.
	                        </div>
	                    </div>
	                </div>
	                
					<div class="item" data-aos="fade-up" data-aos-duration="2000">
						<div class="font-h4">온실가스 인벤토리</div>
						<div class="inner-tbl">
							<table class="table">
								<thead>
									<tr>
										<th scope="col" colspan="2">구분</th>
										<th scope="col">시설</th>
										<th scope="col">배출원</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" rowspan="3" class="bg-line">Scope 1</th>
										<td>고정연소</td>
										<td>사업장 난방</td>
										<td>도시가스(LNG)</td>
									</tr>
									<tr>
										<td>이동연소</td>
										<td>업무용 차량</td>
										<td>휘발유, 경유 등</td>
									</tr>
									<tr>
										<td>기타</td>
										<td>-</td>
										<td>CO2, 드라이아이스 등</td>
									</tr>
									<tr>
										<th scope="row" class="bg-line">Scope 2</th>
										<td>간접배출</td>
										<td>사업장 전기</td>
										<td>전력</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2" class="bg-line">Scope 3</th>
										<td rowspan="2">기타 온실가스</td>
										<td>사업장 용수</td>
										<td>용수</td>
									</tr>
									<tr>
										<td>국내 외 출장 (기차, 버스, 항공 등)</td>
										<td>이동수단에 따른 출장거리 측정</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="item" data-aos="fade-up" data-aos-duration="2000">
						<div class="font-h4">온실가스 배출량</div>
	                    <div class="txt-grade">(단위: tCO2-eq)</div>
						<div class="inner-tbl">
							<table class="table">
								<thead>
									<tr>
										<th scope="col">구분</th>
										<th scope="col">직접배출<br>(Scope 1)</th>
										<th scope="col">간접배출<br>(Scope 2)</th>
										<th scope="col">기타배출<br>(Scope 3)</th>
										<th scope="col">총 배출량</th>
										<th scope="col">에너지 사용량<br>(TJ)</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" class="bg-line">2023년</th>
										<td>430</td>
										<td>2,476</td>
										<td>39</td>
										<td>2,945</td>
										<td>58</td>
									</tr>
									<tr>
										<th scope="row" class="bg-line">2022년</th>
										<td>430</td>
										<td>2,493</td>
										<td>87</td>
										<td>3,010</td>
										<td>58</td>
									</tr>
									<tr>
										<th scope="row" class="bg-line">2021년</th>
										<td>404</td>
										<td>2,360</td>
										<td>30</td>
										<td>2,794</td>
										<td>55</td>
									</tr>
									<!--
									<tr>
										<th scope="row" class="bg-line">2020년</th>
										<td>436</td>
										<td>2,346</td>
										<td>78</td>
										<td>2,860</td>
										<td>55</td>
									</tr>
									-->
								</tbody>
							</table>
							<%--<div class="txt-comment">※ '22년, 23년 배출량의 경우, 추후 제3자 검증 진행 예정</div>--%>
						</div>
					</div>
					<div class="item" data-aos="fade-up" data-aos-duration="2000">
						<div class="font-h4">사업장별 온실가스</div>
						<div class="inner-graph">
							<img src="/publishing/mobile-ko/dist/img/esg/greenhouse-graph.png" alt="">
							<div class="info-ksa">
								<img src="/publishing/mobile-ko/dist/img/esg/symbol-ksa.png" alt="">
	                            <strong>검증서를 확인하세요</strong>
	                            아래의 버튼을 누르시면 <br>마크로젠의 온실가스 배출량 검증서를 <br>확인할 수 있습니다.
	                            <button type="button" class="btn-certification" onclick="window.open('/publishing/mobile-ko/dist/img/esg/greenhouse-gas-ko.pdf')">온실가스 배출량 검증서 보기</button>
							</div>
						</div>
					</div>
	            </div>
	            <!-- e -->
	        </div>
	    </div>
	</div>
</body>
