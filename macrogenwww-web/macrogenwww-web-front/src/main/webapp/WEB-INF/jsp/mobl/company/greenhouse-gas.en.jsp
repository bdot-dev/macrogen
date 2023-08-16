<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">
	<div class="wrap">
	
		<div class="full-bg" style="background-image: url(/publishing/mobile-en/dist/img/esg/bg-greenhouse.png);">
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
	            <div class="font-h4">Greenhouse<br>gas emissions</div>
	            <div class="font-h7-r">For a sustainable future, we will continuously monitor the impact of businesses on the environment</div>
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
	                        For a sustainable <br>
	                        future, we will <br>
	                        continuously monitor <br>
	                        the impact of <br>
	                        businesses on the <br>
	                        environment
	                    </div>
	                </div>
	            </div>
	            <!-- e text -->
	
	            <!-- s -->
	            <div class="section-greenhouse">
	                <div class="box" data-aos="fade-up" data-aos-duration="2000">
	                    <div class="font-h4">Build Greenhouse<br>Gas Inventory Systems</div>
	                    <div class="item bg"><img src="/publishing/mobile-en/dist/img/esg/greenhouse-1.png" alt=""></div>
	                    <div class="item text">
	                        <div class="font-h4">Environment</div>
	                        <div class="font-body-h">
	                            Macrogen will continue to raise climate change 
	                            awareness and endeavor towards ESG management 
	                            to make the Earth sustainable for present and future 
	                            generations in the long term.
	                        </div>
	                    </div>
	                </div>
	                <div class="box" data-aos="fade-up" data-aos-duration="2000">
	                    <div class="item bg"><img src="/publishing/mobile-en/dist/img/esg/greenhouse-2.png" alt=""></div>
	                    <div class="item text">
	                        <div class="font-h4">System</div>
	                        <div class="font-body-h">
	                            Since 2020, Macrogen has established greenhouse 
	                            gas inventory systems in a total of four domestic 
	                            facilities (Seoul Gangnam HQ & Genome Center, 
	                            Daejeon Genome Center, and GEM Center),
	                            with the aim of expanding the GHG inventory system 
	                            to include overseas facilities as well.
	                        </div>
	                    </div>
	                </div>
	                <div class="box" data-aos="fade-up" data-aos-duration="2000">
	                    <div class="item bg"><img src="/publishing/mobile-en/dist/img/esg/greenhouse-3.png" alt=""></div>
	                    <div class="item text">
	                        <div class="font-h4">Trust</div>
	                        <div class="font-body-h">
	                            Through voluntary third-party verification
	                            by the Korea Standard Association,
	                            we have secured data accuracy and reliability
	                            based on international calculation standards.
	                        </div>
	                    </div>
	                </div>
	                
					<div class="item" data-aos="fade-up" data-aos-duration="2000">
						<div class="font-h4">Greenhouse Gas Inventory</div>
						<div class="inner-tbl">
							<table class="table">
								<thead>
									<tr>
										<th scope="col">Scope</th>
										<th scope="col">Category</th>
										<th scope="col">Facility</th>
										<th scope="col">Emission source</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" rowspan="3" class="bg-line">Scope 1</th>
										<td>Stationary Combustion</td>
										<td>Heating</td>
										<td>LNG</td>
									</tr>
									<tr>
										<td>Mobile Combustion</td>
										<td>Company vehicles</td>
										<td>Gasoline, diesel, etc.</td>
									</tr>
									<tr>
										<td>Etc.</td>
										<td>-</td>
										<td>CO2, Dry Ice, etc.</td>
									</tr>
									<tr>
										<th scope="row" class="bg-line">Scope 2</th>
										<td>Indirect Emission</td>
										<td>Electricity</td>
										<td>Power</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2" class="bg-line">Scope 3</th>
										<td rowspan="2">Other Greenhouse Gases</td>
										<td>Water</td>
										<td>Water</td>
									</tr>
									<tr>
										<td>Business Travel</td>
										<td>Travel distance by means of transportation</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="item" data-aos="fade-up" data-aos-duration="2000">
						<div class="font-h4">GHG Emissions & Energy</div>
	                    <div class="txt-grade">(Unit: tCO2-eq)</div>
						<div class="inner-tbl">
							<table class="table">
								<thead>
									<tr>
										<th scope="col"></th>
										<th scope="col">Direct Emissions<br>(Scope 1)</th>
										<th scope="col">Indirect Emissions<br>(Scope 2)</th>
										<th scope="col">Indirect Emissions<br>(Scope 3)</th>
										<th scope="col">Overall Emission</th>
										<th scope="col">Energy Usage</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" class="bg-line">2022</th>
										<td>430</td>
										<td>2,493</td>
										<td>81</td>
										<td>3,005</td>
										<td>58</td>
									</tr>
									<tr>
										<th scope="row" class="bg-line">2021</th>
										<td>404</td>
										<td>2,360</td>
										<td>30</td>
										<td>2,794</td>
										<td>55</td>
									</tr>
									<tr>
										<th scope="row" class="bg-line">2020</th>
										<td>436</td>
										<td>2,346</td>
										<td>78</td>
										<td>2,860</td>
										<td>55</td>
									</tr>
								</tbody>
							</table>
							<div class="txt-comment">※ For the 2022 emissions,<br>third-party verification is scheduled to be conducted</div>
						</div>
					</div>
					<div class="item" data-aos="fade-up" data-aos-duration="2000">
						<div class="font-h4">Facility Emissions</div>
						<div class="inner-graph">
							<img src="/publishing/mobile-en/dist/img/esg/greenhouse-graph.png" alt="">
							<div class="info-ksa">
								<img src="/publishing/mobile-en/dist/img/esg/symbol-ksa.png" alt="">
	                            <strong>Please check the<br>GHG verification statement.</strong>
	                            By clicking the button below,<br>
	                            you can find Macrogen's verification statement<br>
	                            for greenhouse gas emissions.
	                            <button type="button" class="btn-certification" onclick="window.open('/publishing/mobile-en/dist/img/esg/greenhouse-gas-en.pdf')">View GHG Verification Statement.</button>
							</div>
						</div>
					</div>
	            </div>
	            <!-- e -->
	        </div>
	    </div>
			
	</div>	
    
</body>