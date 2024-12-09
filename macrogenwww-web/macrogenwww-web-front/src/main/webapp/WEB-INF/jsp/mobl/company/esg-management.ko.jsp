<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

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
            <h2 class="font-h4">ESG경영</h2>
            <div class="font-slogan">더불어 사는 건강한<br/>세상을 만들어갑니다</div>
            <!-- <div class="font-h7-r">보다 나은 세상을 만드는데 힘을 보태겠습니다.</div> -->
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
                    <div class="font-h3">ESG 외부평가에 체계적인 대응을 통해 ESG 수준을<br>지속 점검하고 발전시켜 나가겠습니다.</div>
                    <div class="font-body-h" style="color:#000;">마크로젠은 2024년 서스틴베스트에서 진행하는 ESG 평가에서 A등급을 획득하였습니다.</div>
                </div>
            </div>
            <!-- e text -->

            <!-- s ESG 경영목표 -->
            <div class="section-management-goals">
                <div class="list-goals">
                    <div class="goal" data-aos="fade-up" data-aos-duration="2000">
                        <div class="box">
                        	<div class="font-h4">ESG 경영목표</div>
                            <div class="item bg"><img src="/publishing/mobile-ko/dist/img/esg/bg-esg-thumb-sm-1.png" alt="고객"></div>
                            <div class="item text">
                                <div class="font-body-h-b">고객</div>
                                <div class="font-h4">고객이 만족하는 마크로젠</div>
                                <div class="font-body-h">
                                    <ul>
                                        <li>글로벌 최고 수준의 기술력을 통한 유전체 분석 정보 제공</li>
                                        <li>고객의 권리 보호 및 개인정보 보호 최우선</li>
                                        <li>공급 및 협력업체와의 상생경영 및 지속 가능한 관계 구축</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="goal" data-aos="fade-up" data-aos-duration="2000">
                        <div class="box">
                            <div class="item bg"><img src="/publishing/mobile-ko/dist/img/esg/bg-esg-thumb-sm-2.png" alt="투자자"></div>
                            <div class="item text">
                                <div class="font-body-h-b">투자자</div>
                                <div class="font-h4">투자자가 신뢰하는 마크로젠</div>
                                <div class="font-body-h">
                                    <ul>
                                        <li>준법성·투명성·공정성을 준수하고 신뢰받는 정직한 기업문화 정착</li>
                                        <li>윤리경영의 효율적 실현을 통한 건실한 재무구조 지속 구현</li>
                                        <li>주주의 이익을 위한 최선의 노력과 의사소통</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="goal" data-aos="fade-up" data-aos-duration="2000">
                        <div class="box">
                            <div class="item bg"><img src="/publishing/mobile-ko/dist/img/esg/bg-esg-thumb-sm-3.png" alt="임직원"></div>
                            <div class="item text">
                                <div class="font-body-h-b">임직원</div>
                                <div class="font-h4">글로벌 바이오·헬스 케어 산업을 선도하는 마크로젠</div>
                                <div class="font-body-h">
                                    <ul>
                                        <li>끊임없이 도전하고 성장하는 마크로젠人</li>
                                        <li>이해와 신뢰를 바탕으로 한 성숙한 윤리문화 정착</li>
                                        <li>임직원간 상호 존중 및 임직원과 회사의 지속적인 동반성장</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="goal" data-aos="fade-up" data-aos-duration="2000">
                        <div class="box">
                            <div class="item bg"><img src="/publishing/mobile-ko/dist/img/esg/bg-esg-thumb-sm-4.png" alt="사회적 책임"></div>
                            <div class="item text">
                                <div class="font-body-h-b">사회적 책임</div>
                                <div class="font-h4">인류의 건강 증진을 위해 함께하는 마크로젠</div>
                                <div class="font-body-h">
                                    <ul>
                                        <li>지속적인 기술 및 연구개발을 통한 인류의 건강한 삶에 기여</li>
                                        <li>과학자들의 연구 지원을 통한 바이오 산업의 기초연구 역량 확대 기여</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="goal" data-aos="fade-up" data-aos-duration="2000">
                        <div class="box">
                        	<div class="font-h4">ESG 외부평가</div>
                            <table class="table">
                            	<colgroup>
                            		<col width="50%" />
                            		<col width="50%" />
                            	</colgroup>
                            	<thead>
                            		<tr>
                            			<th scope="col" colspan="2"><img src="/publishing/mobile-ko/dist/img/macrogen/table-bg-esg.png" alt=""></th>
                            		</tr>
                            	</thead>
								<tbody>
									<tr>
										<th>구분</th>
										<th>등급</th>
									</tr>
									<tr>
										<td>2024년</td>
										<td>A</td>
									</tr>
									<tr>
										<td>2023년</td>
										<td>AA</td>
									</tr>
									<tr>
										<td>2022년</td>
										<td>AA</td>
									</tr>
									<tr>
										<td>2021년</td>
										<td>BB</td>
									</tr>
									<tr>
										<td>2020년</td>
										<td>BB</td> 
									</tr>
								</tbody>
							</table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- e ESG 경영목표 -->
        </div>
    </div>

</body>
