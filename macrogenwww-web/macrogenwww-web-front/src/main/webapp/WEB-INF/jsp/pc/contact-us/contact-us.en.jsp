<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

<%-- <header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header> --%>

	<form id="editForm" name="editForm" action="/${rc.locale.language }/contact-us/submit" method="post">
		<input type="hidden" id="nationCode" name="nationCode"/>
		<input type="hidden" id="email" name="email" />
		<input type="hidden" id="field" name="field" />

		<div class="full-bg macrogen no-bg">
	        <div class="frame frameC">
	            <div class="hero-title en">CONTACT US</div>
	        </div>
	    </div>
		
	    <div class="container container-fluid"> <!-- 첫 시작-->
	        <div class="macrogen macrogen-contact-us">    
	        	
	        	<!-- s map -->
	            <div class="section">
	                <div class="inner">
	                    <div class="font-h3">How can we help you?</div>
	                    <div class="sub-copy">Our highest priority is to provide excellent personal service to our customers.<br>We're available by phone or email weekdays 9:00AM–5:00PM KST.</div>
	                </div>
	                <div class="map-wrap">
	                    <div class="inner">
	                        <div class="info">
	                            <div class="item">
	                                <div class="tit">Customer<br>Care</div>
	                                <div class="desc">
	                                    <ul>
	                                        <li><i class="ic-call"></i><a href="tel:+82-2-2180-7000">&#43;82&#45;2&#45;2180&#45;7000</a></li>
	                                        <li><i class="ic-fax"></i><a href="tel:+82-2-2180-7100">&#43;82&#45;2&#45;2180&#45;7100</a></li>
	                                        <li><i class="ic-mail"></i><a href="mailto:webmaster@macrogen.com">webmaster&#64;macrogen&#46;com</a></li>
	                                    </ul>
	                                </div>
	                            </div>
	                            <!-- 2023-04-17::"서비스 결제문의" 내용 삭제 -->
	                        </div>
	
	
	                        <!-- 2023-04-17::지도영역 추가 -->
	                        <div class="contact_map">
	                            <div class="map_pins">
	                                <a href="https://goo.gl/maps/F5dd58ASxMvkxhuo7" target="_blank" class="pin poland"><i></i>
	                                    <div class="popup_info poland_popup">
	                                        <div class="popup_inner">
	                                            <strong>SZCZECIN, POLAND</strong>
	                                            Teofila Firlika 19, 71-637 Szczecin, Poland
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/PYZUkpfSoqL9UsRo7" target="_blank" class="pin amsterdam" ><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>AMSTERDAM, NETHERLANDS</strong>
	                                            Meibergdreef 57, Amsterdam, Netherlands
	                                            <p><span class="ic-call"></span>+31-20-333-7563</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/e68LHuKwyKT8z5ycA" target="_blank" class="pin leuven"><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>LEUVEN,  BELGIUM</strong>
	                                            Professor Roger Van Overstraetenplein 5, 3000 Leuven, Belgium<br>Oxfordlaan 70, 6229 EV Maastricht, Netherlands
	                                            <p><span class="ic-call"></span>+31-20-333-7563</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/gDQpvqaMdUwsuPih6" target="_blank" class="pin paris"><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>PARIS, FRANCE</strong>
	                                            161 Rue de la Belle Etoile, 95700, Roissy-en, France
	                                            <p><span class="ic-call"></span>+33-1-82-00-96</p>
	                                        </div>
	                                    </div>
	                                </a>	                                
	                                <a href="javascript:void(0)"class="pin basel"><i></i></a>
	                                <a href="https://goo.gl/maps/7hkdDHYjwme3LE2n6" target="_blank" class="pin madrid" ><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>MADRID, SPAIN</strong>
	                                            C. de Martínez Villergas, 52, 28027 Madrid, Spain
	                                            <p><sapn class="ic-call"></sapn>+34-911-138-378</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/FpiRLLGJJPFYMkFh6" target="_blank" class="pin milan"><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>MILAN, ITALY</strong>
	                                            Viale Ortles, 22/4, 20139 Milano, MI, Italy
	                                            <p><span class="ic-call"></span>+39-02-5666-0274</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/LhYsNgFfKEHPNbjS8" target="_blank" class="pin seoul"><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>SEOUL, KOREA</strong>
	                                            Macrogen Bldg, 238, Teheran-ro, Gangnam-gu,<br>Seoul, Republic of Korea
	                                            <p><span class="ic-call"></span>+82-2-2180-7000</p>
	                                            <div class="border_bottom"></div>
	                                            <strong>DAEJEON, KOREA</strong>
	                                            Rm 323, 65, Techno 3-ro, Yuseong-gu,<br>Daejeon (Gwanpyeong-dong, Hanshin S-Meca)
	                                            <p><span class="ic-call"></span>+82-42-336-7080</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/GbeqmTX9iR7JZqzA9" target="_blank" class="pin tokyo"><i></i>
	                                    <div class="popup_info">
	                                            <div class="popup_inner">
	                                            <strong>TOKYO, JAPAN</strong>
	                                            16F Time24 Building, 2-4-32 Aomi, Koto-ku, Tokyo 135-0064, JAPAN
	                                            <p><span class="ic-call"></span>+81-3-5962-1124</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/igipG8VE2bjfxch36" target="_blank" class="pin biopolis"><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>BIOPOLIS, SINGAPORE</strong>
	                                            #05-18, Synapse Building, 3 Biopolis Drive, Singapore 138623
	                                            <p><span class="ic-call"></span>+65-6339-0927</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/CapZ7eahDdog86817" target="_blank" class="pin boston"><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>BOSTON, USA</strong>
	                                            1330 Piccard Drive, Suite 205, Rockville, MD 20850 USA
	                                            <p><span class="ic-call"></span>+1-301-251-1007</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/CapZ7eahDdog86817" target="_blank" class="pin newyork"><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>NEW yORK, USA</strong>
	                                            1330 Piccard Drive, Suite 205, Rockville, MD 20850 USA
	                                            <p><span class="ic-call"></span>+1-301-251-1007</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/CapZ7eahDdog86817" target="_blank" class="pin rockville" ><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>ROCKVILLE, USA</strong>
	                                            1330 Piccard Drive, Suite 205, Rockville, MD 20850 USA
	                                            <p><span class="ic-call"></span>+1-301-251-1007</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/CapZ7eahDdog86817" target="_blank" class="pin virginia"><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>VIRGINIA, USA</strong>
	                                            1330 Piccard Drive, Suite 205, Rockville, MD 20850 USA
	                                            <p><span class="ic-call"></span>+1-301-251-1007</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/yUFULvCtvkxYXqY47" target="_blank" class="pin santiago"><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>SANTIAGO, CHILE</strong>
	                                            Magdalena 140 Oficina 401, Las Condes Santiago, Chile
	                                        </div>
	                                    </div>
	                                </a>
	                            </div>
	                        </div>
	                        <script>
	                            $(document).ready(function(){
	                                $('.pin ').mouseover(function(){
	                                    const mapInfoBox = ['poland','amsterdam','leuven','paris','basel','madrid','milan','seoul'
	                                    ,'tokyo','biopolis','boston','newyork','rockville','virginia','santiago'];
	                                    for(let i=0; i < mapInfoBox.length; i++) {                        
	                                        if( $(this).hasClass(mapInfoBox[i])){
	                                            $(this).find('.popup_info').css({
	                                                'display' : 'block',
	                                                'background-image' : 'url(../img/main/ico-pin-pink.png)'
	                                            })
	                                        } 
	                                    }
	                                });
	                                $('.pin ').mouseout(function(){
	                                    $('.pin .popup_info').css('display','none');
	                                });
	                            });
	                        </script>
	                        <!-- //2023-04-17::지도영역 추가 -->
	                    </div>
	
	                    <!-- 2023-04-17::컨텐츠 내용 삭제 - 디자인 유지위해 마크업은 남겨두었습니다. -->
	                    <div class="map-info">
	                        <div class="inner">
	                            <div class="address-wrap">
	                            </div>
	                        </div>
	                    </div>
	                    <!-- //2023-04-17::컨텐츠 내용 삭제 -->
	                </div>
	            </div>
	            <!-- e map -->
	        	
	        	<!-- s 연구·사업 분야별 문의 -->
	        	<div class="section">
	        		<!-- 2023-04-17::문의하기 내용 추가 -->
		        	<div class="inner">
	        			<div class="section_IR">
	        			
	        				<div class="privacy_box">
	        				
	        					<div class="accordion-title toggle-btn">
	                                <div class="font-h5 color-point-primary">Ask the experts</div>
	                                <div class="arrow-wrapper"><div class="arrow"><div class="close"></div></div></div>
	                            </div>
	                            
	                            <div class="input-group-box">
	                            	<div class="input-group essential">
	                                    <span class="input-group-text" id="name">Name</span>
	                                    <input type="text" id="nmbrWriterNm" name="nmbrWriterNm" placeholder="Enter your name (First name / Last name)" class="form-control" aria-label="input" aria-describedby="name">
	                                </div>
	                                <div class="input-group essential">
	                                    <span class="input-group-text" id="affiliation">Organization</span>
	                                    <input type="text" id="company" name="company" placeholder="Enter your Organization" class="form-control" aria-label="input" aria-describedby="affiliation">
	                                </div>
		                                
	                                <!-- input / phone-->
	                                <div class="input-group essential">
	                                    <span class="input-group-text" id="phone">Phone</span>
	                                    <input type="text" id="mbtlnum" name="mbtlnum" placeholder="Enter your Phone number" class="form-control" aria-label="input" aria-describedby="phone">
	                                </div>
	                                
	                                <div class="input-group input-phone-box essential">
	                                    <span class="input-group-text" id="email">Email</span>
	                                    <div class="input-group-email">
	                                        <input type="text" id="email1" name="email1" placeholder="Enter your E-mail" class="form-control email" aria-label="input" aria-describedby="email">
	                                        <em>@</em>
	                                        <div class="select-box ">
	                                            <a href="javascript:;" class="select_default _select_default _select_email"><span class="text" id="email2"></span></a>
	                                            <ul class="select_list _select_list">
	                                            	<li><span class="directly">Direct input</span></li>
	                                                <c:forEach items="${emailCodeList }" var="result" varStatus="status">
                                                        <li><span>${result.codeNmEn }</span></li>
                                                    </c:forEach>
	                                            </ul>
	                                        </div> 
	                                    </div>
	                                </div>

                                   <!--드롭다운 수정 2023.04.12--> 
                                   <script> 
                                   
                                       $(document).ready(function(){ 
                                           var selectDefault = $('.select-box ._select_default'); 
                                           var selectList = $('.select_list li, ._select_list li'); 
                                           var selectEmail = $('._select_email'); 
                                               $('._select_list').hide(); 
                                         
           
                                           /*email - 직접입력*/ 
                                           selectEmail.on('click',function() { 
                                               $(this).next().find('span').on('click',function() { 
                                                   if($(this).hasClass('directly')){
                                                   		$(this).parents('.select-box').find('._select_default .text').empty();
	                                                    $(this).parents('.select-box').find('._select_default .text').append("<input type='text' class='input_email' id='email3' />"); 
	                                                    $(this).parents('.select-box').find('._select_default .text .input_email').focus(); 
	                                                    $('.input_email').css({ 'border' : '1px solid transparent' }); 
                                                   }  
                                               }); 
                                           }); 
                                       }); 
                                   </script>
	                                    
	                                <!-- s 국가 -->
	                                <div class="input-group essential">
                                    	<span class="input-group-text">Country</span>
	                                    <div class="select-box full">
	                                        <a href="javascript:;" class="select_default _select_default"><span class="text">Select your Country</span></a>
	                                        <ul class="select_list _select_list" id="dropdown-nation">
	                                            <c:forEach items="${ nationCodeList }" var="result" varStatus="status">
	                                                <li>
	                                                    <span id="nation" data-value-nation="${result.code}">${result.codeNmEn}</span>
	                                                </li>
                                                </c:forEach>
	                                        </ul>
	                                    </div>
	                                </div>
	                                <!-- e 국가 -->
		                                
	                                <!-- s 문의분야 -->
	                                <div class="input-group essential">
                                    	<span class="input-group-text" id="inquiry" vlaue="cago">Inquiry field</span>
	                                    <div class="select-box full">
	                                        <a href="javascript:;" class="select_default _select_default"><span class="text" id="fld" >Select your Inquiry</span></a>
	                                        <ul class="select_list _select_list" id="dropdown-field">
	                                            <li><span data-value-fld="Quotation">Quotation</span></li>
	                                            <li><span data-value-fld="Request">Request</span></li>
	                                            <li><span data-value-fld="Inquiry">Inquiry</span></li>
	                                        </ul>
	                                    </div>
	                                </div>
	                                <!-- e 문의분야 -->
		                                
	                                <!-- input / text-->
	                                <div class="input-group essential">
	                                    <span class="input-group-text" id="title">Subject</span>
	                                    <input type="text" id="contactSj" name="contactSj" placeholder="Enter title" class="form-control" aria-label="input" aria-describedby="title">
	                                </div>
	                                
	                                <!-- textarea -->
	                                <div class="input-group essential">
	                                    <span class="input-group-text" id="faq">Details</span>
	                                    <textarea type="text" id="contactCn" name="contactCn" placeholder="Enter the your Inquiry" class="form-control" aria-label="input" aria-describedby="faq"></textarea>
	                                </div>
		                                
	                                <!--s security-->
	                                <div class="input-group">
	                                    <span class="input-group-text" id="automatic">Security code</span>
	                                    <span class="security" style="width: 160px; height: 60px; background: #E9E9E9; display: inline-block; margin-right: 15px;">
	                                    	<img src="/${rc.locale.language }/contact-us/captcha-image" alt="캡차이미지">	
	                                    </span>
	                                    <input type="text" id="captchaString" name="captchaString" maxlength="10" placeholder="Enter number" class="form-control" aria-label="input" aria-describedby="automatic">
	                                </div>
	                                <!--e security-->
		                                
	                                <!-- s 개인정보 수집-->
                                    <div class="privacy_box">
	                                    <div class="font-h5">Agree to the collection & use of personal information</div>
	                                    <div class="agreement">
	                                        <p><span class="font-bold">Purpose of collecting personal information &#58;</span> Response to investment inquiries and consultation inquiries
	                                        </p>
	                                        <p><span class="font-bold">Items of Personal Information Collected &#58;</span> Name&#44; E-mail</p>
	                                        <p><span class="font-bold">Retention and period of use &#58;</span>  3 years</p>
	                                        <p class="guidance">&#8251; You have the right to refuse consent&#46; However&#44; if you refuse to consent&#44; you may be restricted from using the investment inquiry and consultation inquiry service.&#46;</p>
	                                    </div>
	                                    <div class="form-check">
	                                        <input class="form-check-input" type="checkbox" id="checkAgree">
	                                        <label class="form-check-label" for="checkAgree">Agree</label>
	                                    </div>
	                                    <div class="btn-box">                            
	                                        <a href="javascript:;" class="btn btn-primary" id="btn-save"><span>Inquire</span></a>
	                                    </div>
	                                </div> 
	                                <!-- e 개인정보 수집 -->

		                            <hr class="divider">
		                            <script>
	                                    /* 문의정보 toggle */
	                                    $(document).ready(function(){
	                                        $(".toggle-btn").click(function() {
	                                            $(".toggle-btn .arrow").toggleClass("closetoggle");
	                                            $(".input-group-box").slideToggle("slow");
	                                        });
	                                    });
	                                </script>
           	                	</div>
	        				</div>	
	        			</div>
	        		</div>
		        	
		        	<!-- //2023-04-17::문의하기 내용 추가 -->		        	
		        	<!-- 2023-04-17::문구 번역 적용 -->
	            	<!-- 2023-04-17::문구 번역 적용 -->
                <div class="inner">
                    <div class="font-h5">Additional Contact Information</div>
                    <div class="category">
                        <ul>
                            <li class="item">
                                <div class="title">NGS</div>
                                <div class="desc">
                                    <ul>
                                        <li><i class="ic-call"></i><a href="tel:+82-2-2180-7201">&#43;82&#45;2&#45;2180&#45;7201</a></li>
                                        <li><i class="ic-mail"></i><a href="mailto:ngskr@macrogen.com">ngskr&#64;macrogen&#46;com</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="item">
                                <div class="title">CES</div>
                                <div class="desc">
                                    <div class="name">Sample Reception and Result</div>
                                    <ul>
                                        <li><i class="ic-call"></i><a href="tel:+82-2-2180-7237">&#43;82&#45;2&#45;2180&#45;7237</a></li>
                                        <li><i class="ic-mail"></i><a href="mailto:cestechnical@macrogen.com">cestechnical&#64;macrogen&#46;com</a></li>
                                    </ul>
                                    <div class="name">Quote and Invoice</div>
                                    <ul>
                                        <li><i class="ic-call"></i><a href="tel:+82-2-2180-7326">&#43;82&#45;2&#45;2180&#45;7326</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="item">
                                <div class="title">Oligo</div>
                                <div class="desc">
                                    <div class="name">Sample Reception and Result</div>
                                    <ul>
                                        <li><i class="ic-call"></i>
                                            <a href="tel:+82-2-2180-7017">&#43;82&#45;2&#45;2180&#45;7017</a>
                                            <a href="tel:+82-2-2180-7287">&#43;82&#45;2&#45;2180&#45;7287</a>
                                        </li>
                                        <li><i class="ic-mail"></i><span>KOR</span><a href="mailto:oligokr@macrogen.com">oligokr&#64;macrogen&#46;com</a>
                                        </li>
                                        <li><i class="ic-mail"></i><span>ENG</span><a href="mailto:oligo@macrogen.com">oligo&#64;macrogen&#46;com</a></li>
                                    </ul>
                                    <div class="name">Quote and Invoice</div>
                                    <ul>
                                        <li><i class="ic-call"></i><a href="tel:+82-2-2180-7326">&#43;82&#45;2&#45;2180&#45;7236</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="item">
                                <div class="title">Microarray</div>
                                <div class="desc">
                                    <ul>
                                        <li><i class="ic-call"></i><a href="tel:+82-2-2180-7360">&#43;82&#45;2&#45;2180&#45;7360</a></li>
                                        <li><i class="ic-mail"></i><a href="mailto:array@macrogen.com">array&#64;macrogen&#46;com</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="item">
                                <div class="title">Clinical<br>Services</div>
                                <div class="desc">
                                    <ul>
                                        <li><i class="ic-call"></i><a href="tel:+82-2-2180-7222">&#43;82&#45;2&#45;2180&#45;7222</a></li>
                                        <li><i class="ic-mail"></i><a href="mailto:ngsclinic@macrogen.com">ngsclinic&#64;macrogen&#46;com</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="item">
                                <div class="title">Personal <br>Healthcare</div><!--2023-04-21 수정-->
                                <div class="desc">
                                    <ul>
                                        <li><i class="ic-call"></i><a href="tel:+82-2-2180-7220">&#43;82&#45;2&#45;2180&#45;7220</a></li>
                                        <li><i class="ic-mail"></i><a href="mailto:hello@macrogen.com">hello&#64;macrogen&#46;com</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="item">
                                <div class="title">GEM/CRISPR</div>
                                <div class="desc">
                                    <div class="name">Sample Reception and Result</div>
                                    <ul>
                                        <li><i class="ic-call"></i><a href="tel:+82-2-3663-5990">&#43;82&#45;2&#45;3663&#45;5990</a></li>
                                    </ul>
                                    <div class="name">Quote and Invoice</div>
                                    <ul>
                                        <li><i class="ic-call"></i><a href="tel:+82-2-3664-2004">&#43;82&#45;2&#45;3664&#45;2004</a></li>
                                        <li><i class="ic-mail"></i><a href="mailto:mouse@macrogen.com">mouse&#64;macrogen&#46;com</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="item">
                                <div class="title">Microbiome</div>
                                <div class="desc">
                                    <div class="name">Quote and Invoice</div>
                                    <ul>
                                        <li><i class="ic-call"></i><a href="tel:+82-2-2180-7206">&#43;82&#45;2&#45;3663&#45;7206</a></li>
                                    </ul>
                                    <div class="name">The Biome Customer Care</div>
                                    <ul>
                                        <li><i class="ic-call"></i><a href="tel:+82-2-1644-9599">&#43;82&#45;2&#45;1644&#45;9599</a></li>
                                        <li><i class="ic-mail"></i><a href="mailto:thebiome@macrogen.com">thebiome&#64;macrogen&#46;com</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="item">
                                <div class="title">Pet Healthcare</div><!--2023-04-21 수정-->
                                <div class="desc">
                                    <ul>
                                        <li><i class="ic-call"></i><a href="tel:+82-2-2180-7145">&#43;82&#45;2&#45;2180&#45;7145</a></li>
                                        <li><i class="ic-mail"></i><a href="mailto:mypetgene@macrogen.com">mypetgene&#64;macrogen&#46;com</a></li>
                                    </ul>
                                </div>
                            </li>
                            <!--<li class="item">
                                <div class="title">대전지사</div>
                                <div class="desc">
                                    <ul>
                                        <li><i class="ic-call"></i><a href="tel:+82-2-2180-7017">&#43;82&#45;2&#45;2180&#45;7201</a></li>
                                        <li><i class="ic-mail"></i><a href="mailto:sequencing@macrogen.com">sequencing&#64;macrogen&#46;com</a></li>
                                    </ul>
                                </div>
                            </li>-->
                            <li class="item">
                                <div class="title">Human ID</div>
                                <div class="desc">
                                    <div class="name">Sample Reception and Result</div>
                                    <ul>
                                        <li><i class="ic-call"></i><a href="tel:+82-2-2180-7134">&#43;82&#45;2&#45;2180&#45;7134</a></li>
                                        <li><i class="ic-mail"></i><a href="mailto:hg1427@macrogen.com">hg1427&#64;macrogen&#46;com</a></li>
                                    </ul>
                                </div>
                            </li>
							<!-- 2023-04-21 추가 -->
                            <li class="item ">
                                <div class="title">Single Cell</div>
                                <div class="desc">
                                    <ul>
                                        <li><i class="ic-call"></i><a href="tel:+82-2-2180-7205">&#43;82&#45;2&#45;2180&#45;7205</a></li>
                                        <li><i class="ic-mail"></i><a href="mailto:ngskr@macrogen.com">ngskr&#64;macrogen&#46;com</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="item ">
                                <div class="title">Proteomics</div>
                                <div class="desc">
                                    <ul>
                                        <li><i class="ic-call"></i><a href="tel:+82-2-2180-7128">&#43;82&#45;2&#45;2180&#45;7128</a></li>
                                        <li><i class="ic-mail"></i><a href="mailto:array@macrogen.com">array&#64;macrogen&#46;com</a></li>
                                    </ul>
                                </div>
                            </li>
                            <!-- //2023-04-21 추가 -->
                        </ul>
                    </div>
                    <!-- <div class="btn-wrap"><a href="#" class="btn btn-text"><span>마크로젠 글로벌 네트워크</span><i class="icon icon-arrow-right-long"></i></a></div> -->
                </div>
	            <!-- //2023-04-17::문구 번역 적용 -->
	        	
        	</div>
        </div>
	</div> <!-- 첫 시작-->

    <a href="#" class="btn btn-text btn-totop">
	    <i class="icon icon-arrow-top-long"></i>
	    <span>TOP</span>
	</a>
	
	<script>
	    $(document).ready(function(){
	        $('.btn-totop').click(function(){
	            $('html,body').animate( { scrollTop:0 },{duration : 100});
	            $('.header').css({'display' : 'block'});
	            return false;
	        });
	        $(window).on('scroll', function (){
	            var scrollTop = $(window).scrollTop()
	            if (scrollTop > 150) {
	                $('.btn-totop').css({'opacity' : 1})
	            } else {
	                $('.btn-totop').css({'opacity' : 0})
	            }
	        })
	    });
	</script>
	
    <script>
		var submitting = false;
		var form = $('#editForm');
		var nmbrWriterNm = $('#nmbrWriterNm');
		var company = $('#company');
		
		var mbtlnum = $('#mbtlnum');

		var email1 = $('#email1');
		var email2 = $('#email2');
		var email3 = $("input.input_email");
		
		var field = $('#field');
		var fld = $('#fld');
		var nationCode = $("#nationCode");
		var nation = $('#nation');
		
		
		var contactSj = $('#contactSj');
		var contactCn = $('#contactCn');
		var captchaString = $('#captchaString');
		var checkAgree = $('#checkAgree');
	
	    $(function() {		    	
	    	
	    	$(document).ready(function(){
				 $("#dropdown-nation").on("click", "span", function(e){
					 console.log($(this).attr("data-value-nation"));
					 $("#nationCode").val($(this).attr("data-value-nation"));
				 });
				
			});
				
	    	$(document).ready(function(){
	    		$("#dropdown-field").on("click", "span", function(e){
	    			 console.log($(this).attr("data-value-fld"));
	    			 $("#field").val($(this).attr("data-value-fld"));
	    		});
	    	});
	    	
	    	$('#btn-save').on('click', function() {
	    		if (submitting) {
					alert('in processing....');
					return false;
	    		}
	
	    		if (!validate()) {
	    			return false;
	    		}
	
				if (!confirm('Inquire?')) {
					return false;
				} else {
					submitting = true;
				}
						
	
				// 이메일										
				$("#email").val(email1.val() + '@' + email2.text());

				
				$.ajax({
					dataType : 'json',
					type : 'post',
					url : '/${rc.locale.language }/contact-us/submit',
					data: $('#editForm').serialize(),
				}).done(function(data) {
					submitting = false;						
					if (data.result == 'success') {
						alert('Completed.');
						location.href = '/${rc.locale.language }/contact-us';
					} else if (data.result == 'fail') {
						if (data.message == 'invalid_captcha') {
							alert('Security code is required.');
							captchaString.focus();
						}else{
							alert('This is not a normal registration.');
						}
					}
	
				});
	
	    	});
	    });
	
	    function validate() {	
	    	
	    	if (!nmbrWriterNm.val()) {
	    		alert('Name is required.');
	    		nmbrWriterNm.focus();
	    		return false;
	    	}
	    	
	    	if (!company.val()) {
	    		alert('Organization is required.');
	    		company.focus();
	    		return false;
	    	}
	    	
	    	if (!mbtlnum.val()) {
	    		alert('Phone Number is required.');
	    		mbtlnum.focus();
	    		return false;
	    	}
			
	    	if (!email1.val()) {
	    		alert('Email is required.');
	    		email1.focus();
	    		return false;
	    	}	
	    	
	    	// 직접입력 선택시 input 태그 val()
			if(!email2.text()) {
				email2.text( $("input.input_email").val() );
			}	
	    			    	
	    	if (!email2.text()) {
	    		alert('Email is required.');
	    		email2.focus();
	    		return false;
	    	}
	    	
	    	if (!nationCode.val()) {
	    		alert('Country is required.');
	    		nation.focus();
	    		return false;
	    	}
			
	    	if (!field.val()) {
	    		alert('Inquiry field is required.');
	    		fld.focus();
	    		return false;
	    	}

	    	
	    	if (!contactSj.val()) {
	    		alert('Subject is required.');
	    		contactSj.focus();
	    		return false;
	    	}
	    	if (!contactCn.val()) {
	    		alert('Details is required.');
	    		contactCn.focus();
	    		return false;
	    	}
	    	if (!captchaString.val()) {
	    		alert('Security code is required.');
	    		captchaString.focus();
	    		return false;
	    	}
	
	    	if (!checkAgree.is(':checked')) {
	    		alert('Agree to the collection and use of personal information.');
	    		checkAgree.focus();
	    		return false;
	    	}
	
	    	return true;
	
	    } 

   	</script>
        
	</form>         
</body>
