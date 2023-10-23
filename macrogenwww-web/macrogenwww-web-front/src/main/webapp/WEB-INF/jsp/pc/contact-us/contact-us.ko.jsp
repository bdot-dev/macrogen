<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

<%-- <header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header> --%>

	<form id="editForm" name="editForm" action="/${rc.locale.language }/contact-us/submit" method="post">
		<input type="hidden" id="mbtlnum" name="mbtlnum" />
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
	        
                <div class="section">
                    <div class="inner">
                        <div class="font-h3">도움이 필요하신가요?<br/>분야별 담당자가 안내해드립니다</div>
                    </div>
                    <div class="map-wrap">
                        <div class="inner">

                            <div class="info">
	                            <div class="item">
	                                <div class="tit">대표문의</div>
	                                <div class="desc">
	                                    <ul>
	                                        <li><i class="ic-call"></i><a href="tel:+82-2-2180-7000">&#43;82&#45;2&#45;2180&#45;7000</a></li>
	                                        <li><i class="ic-fax"></i><a href="tel:+82-2-2180-7100">&#43;82&#45;2&#45;2180&#45;7100</a></li>
	                                        <li><i class="ic-mail"></i><a href="mailto:webmaster@macrogen.com">webmaster&#64;macrogen&#46;com</a></li>
	                                    </ul>
	                                </div>
	                            </div>
	                        </div>
                            <!--s map pin 2023.04.06-->
                            <div class="contact_map">
                                <!-- 2023-04-17::지도핀에 링크 추가 -->
	                            <div class="map_pins">
	                                <a href="https://goo.gl/maps/uCx53gRnfMACvyqCA" target="_blank" class="pin poland"><i></i>
	                                    <div class="popup_info poland_popup">
	                                        <div class="popup_inner">
	                                            <strong>SZCZECIN, POLAND</strong>
	                                            Teofila Firlika 19, 71-637 Szczecin, Poland
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/JpjkFu4dcm3hSCVX9" target="_blank" class="pin amsterdam" ><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>AMSTERDAM, NETHERLANDS</strong>
	                                            Meibergdreef 57, Amsterdam, Netherlands
	                                            <p><span class="ic-call"></span>+31-20-333-7563</p>
	                                        </div>
	                                        
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/YAAPN7VzmYbNK3416" target="_blank" class="pin leuven"><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>LEUVEN,  BELGIUM</strong>
	                                            Professor Roger Van Overstraetenplein 5, 3000 Leuven, Belgium<br>Oxfordlaan 70, 6229 EV Maastricht, Netherlands
	                                            <p><span class="ic-call"></span>+31-20-333-7563</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/8g2KsnrG3fvTSuib9" target="_blank" class="pin paris"><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>PARIS, FRANCE</strong>
	                                            161 Rue de la Belle Etoile, 95700, Roissy-en, France
	                                            <p><span class="ic-call"></span>+33-1-82-00-96</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/8g2KsnrG3fvTSuib9" target="_blank" class="pin basel"><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>BASEL, SWITZERLAND</strong>
	                                            161 Rue de la Belle Etoile, 95700, Roissy-en, France
	                                            <p><span class="ic-call"></span>+33-1-82-00-96</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/YDWcjkPGRojs7o1u6" target="_blank" class="pin madrid" ><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>MADRID, SPAIN</strong>
	                                            C. de Martínez Villergas, 52, 28027 Madrid, Spain
	                                            <p><sapn class="ic-call"></sapn>+34-911-138-378</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/pvL34u6vBZGomHB67" target="_blank" class="pin milan"><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>MILAN, ITALY</strong>
	                                            Viale Ortles, 22/4, 20139 Milano, MI, Italy
	                                            <p><span class="ic-call"></span>+39-02-5666-0274</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/uXiAmFLfAjKmsEbSA" target="_blank" class="pin seoul"><i></i>
	                                    <div class="popup_info">
	                                        <!-- 2023-04-17::한국 송도주소 삭제 -->
	                                        <div class="popup_inner">
	                                            <strong>SEOUL, KOREA</strong>
	                                            서울특별시 강남구 테헤란로 238 (마크로젠빌딩)
	                                            <p><span class="ic-call"></span>+82-2-2180-7000</p>
	                                            <div class="border_bottom"></div>
	                                            <strong>DAEJEON, KOREA</strong>
	                                            대전광역시 유성구 테크노3로 65, 323호 (관평동, 한신에스메카)
	                                            <p><span class="ic-call"></span>+82-42-336-7080</p>
	                                        </div>
	                                        <!-- //2023-04-17::한국 송도주소 삭제 -->
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/iG8oBnNpT54vJRHAA" target="_blank" class="pin tokyo"><i></i>
	                                    <div class="popup_info">
	                                            <div class="popup_inner">
	                                            <strong>TOKYO, JAPAN</strong>
	                                            16F Time24 Building, 2-4-32 Aomi, Koto-ku, Tokyo 135-0064, JAPAN
	                                            <p><span class="ic-call"></span>+81-3-5962-1124</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/KLY49WbgfXxpT1xd6" target="_blank" class="pin biopolis"><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>BIOPOLIS, SINGAPORE</strong>
	                                            #05-18, Synapse Building, 3 Biopolis Drive, Singapore 138623
	                                            <p><span class="ic-call"></span>+65-6339-0927</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/z384ZygcEgA3PDg19" target="_blank" class="pin boston"><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>BOSTON, USA</strong>
	                                            1330 Piccard Drive, Suite 205, Rockville, MD 20850 USA
	                                            <p><span class="ic-call"></span>+1-301-251-1007</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/z384ZygcEgA3PDg19" target="_blank" class="pin newyork"><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>NEW yORK, USA</strong>
	                                            1330 Piccard Drive, Suite 205, Rockville, MD 20850 USA
	                                            <p><span class="ic-call"></span>+1-301-251-1007</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/z384ZygcEgA3PDg19" target="_blank" class="pin rockville" ><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>ROCKVILLE, USA</strong>
	                                            1330 Piccard Drive, Suite 205, Rockville, MD 20850 USA
	                                            <p><span class="ic-call"></span>+1-301-251-1007</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/z384ZygcEgA3PDg19" target="_blank" class="pin virginia"><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>VIRGINIA, USA</strong>
	                                            1330 Piccard Drive, Suite 205, Rockville, MD 20850 USA
	                                            <p><span class="ic-call"></span>+1-301-251-1007</p>
	                                        </div>
	                                    </div>
	                                </a>
	                                <a href="https://goo.gl/maps/zac2CzmfeNZ8Vgvk8" target="_blank" class="pin santiago"><i></i>
	                                    <div class="popup_info">
	                                        <div class="popup_inner">
	                                            <strong>SANTIAGO, CHILE</strong>
	                                            Magdalena 140 Oficina 401, Las Condes Santiago, Chile
	                                        </div>
	                                    </div>
	                                </a>
	                            </div>
	                            <!-- //2023-04-17::지도핀에 링크 추가 -->
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
                                                 'background-image' : 'url(/publishing/pc-ko/dist/img/main/ico-pin-pink.png)'
                                             })
                                         } 
                                     }
                                 });
                 
                                 $('.pin ').mouseout(function(){
                                     $('.pin .popup_info').css('display','none');
                                 });
                 
                 
                                });
                             </script>
                             <!--s map pin 2023.04.06-->
                        </div> <!-- inner-->  

                        <div class="map-info">
                            <div class="inner">
                               <div class="address-wrap">
                                      <!--<i class="pin"></i>
                                      <span class="tit">마크로젠 본사</span>
                                      <span class="address">서울특별시 강남구 역삼2동 테헤란로 238 마크로젠빌딩</span>
                                  </div>
                                  <div class="pin-btn-wrap"><a class="btn btn-sm btn-white" href="#"><i class="google-pin"></i><span>구글지도에서 길찾기</span></a></div>-->
                                </div>
                           </div>
                       </div>

                    </div>  
	                <!-- e map -->
                    
                    <!-- s 연구·사업 분야별 문의 -->
                    <div class="section">
                        <div class="inner">
                            
                            <!-- s:2023리뉴얼 -->
                            <div class="section_IR">
                                <div class="privacy_box">
                                    <div class="accordion-title toggle-btn">
		                                <div class="font-h5 color-point-primary">문의하기</div>
		                                <div class="arrow-wrapper"><div class="arrow"><div class="close"></div></div></div>
		                            </div> 
                                    
                                    <div class="input-group-box">

                                        <div class="input-group essential">
                                            <span class="input-group-text" id="name">이름</span>
                                            <input type="text" id="nmbrWriterNm" name="nmbrWriterNm" maxlength="10"
                                                   placeholder="이름을 입력하세요" class="form-control" aria-label="input" aria-describedby="name">
                                        </div>
                                        <div class="input-group essential">
                                            <span class="input-group-text" id="affiliation">소속</span>
                                            <input type="text" id="company" name="company" maxlength="50"
                                                   placeholder="소속을 입력하세요" class="form-control" aria-label="input" aria-describedby="name">
                                        </div> 
                                        <!-- input / phone-->
                                        <div class="input-group input-phone-box essential">
                                            <span class="input-group-text" id="num1">휴대폰 번호</span>
                                            <div class="input-group-phone">
                                                <div class="select-box ">
                                                    <a href="#" class="select_default _select_default"><span class="text" id="mbtlnum1">010</span></a>
                                                    <ul class="select_list _select_list">
                                                        <c:forEach items="${mobilePrefixList }" var="result" varStatus="status">
                                                            <li><span>${result.code }</span></li>
                                                        </c:forEach>
                                                    </ul>
                                                </div>
                                                <input type="number" id="mbtlnum2" name="mbtlnum2"
                                                    placeholder="" class="form-control" aria-label="input" aria-describedby="휴대폰번호 중간 네자리" maxlength="4" oninput="lengthLimit4(this)">
                                                <input type="number" id="mbtlnum3" name="mbtlnum3"
                                                    placeholder="" class="form-control" aria-label="input" aria-describedby="휴대폰번호 마지막 네자리" maxlength="4" oninput="lengthLimit4(this)">
                                                
                                                <script>
                                                
                                                    /*숫자 글자수 제한*/
                                                    function lengthLimit4(e){
                                                        if(e.value.length > 4){
                                                            e.value = e.value.slice(0, 4)
                                                        }
                                                    }
            
                                                    /* 문의정보 toggle */
            
                                                    $(document).ready(function(){
                                                        $(".toggle-btn").click(function() {
                                                            $(".toggle-btn .arrow").toggleClass("closetoggle");
                                                            $(".input-group-box").slideToggle("slow");
                                                        });
                                                    });
        
                                                </script>
                                            </div>
                                            <p class="notice-text"><i class="icon icon-attention"></i><span>문의사항에 대한 답변은 개별 연락을 통해 답변드릴 예정이니 연락 받으실 휴대폰 번호를 정확히 입력해주시기 바랍니다&#46;</span></p> 
                                        </div>
                                        
                                        <!--s email form 수정 2023.04.07-->
                                        <div class="input-group input-phone-box essential">
                                            <span class="input-group-text" id="email">이메일</span>
                                            <div class="input-group-email">
                                            
                                                <input type="text" id="email1" name="email1" placeholder="이메일을 입력해주세요" class="form-control email" aria-label="input" aria-describedby="email">
                                                <em>@</em>
                                                <div class="select-box ">
                                                    <a href="javascript:;" class="select_default _select_default _select_email"><span class="text" id="email2"></span></a>         
                                                    <ul class="select_list _select_list">
                                                        <li><span class="directly">직접입력</span></li>
                                                        <c:forEach items="${emailCodeList }" var="result" varStatus="status">
                                                            <li><span>${result.codeNmKo }</span></li>
                                                        </c:forEach>
                                                    </ul>
                                                </div> 
                                            </div>
                                        </div>
                                        <!--e email form 수정 2023.04.07-->
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
		                                                    $(this).parents('.select-box').find('._select_default .text').append("<input class='input_email' id='email3' />"); 
		                                                    $(this).parents('.select-box').find('._select_default .text .input_email').focus(); 
		                                                    $('.input_email').css({ 'border' : '1px solid transparent' }); 
	                                                   }  
	                                               }); 
	                                           }); 
	                                       }); 
	                                   </script>

                                        <!-- s 국가 -->
                                        <div class="input-group essential">
                                            <span class="input-group-text">국가</span>
                                                <div class="select-box full " >
                                                <a href="javascript:;" class="select_default _select_default"><span class="text" >국가를 선택해주세요</span></a>
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
                                            <span class="input-group-text" id="inquiry" vlaue="cago">문의 분야</span>
                                            <div class="select-box full">
                                                <a href="javascript:;" class="select_default _select_default"><span class="text" id="fld" >문의 분야를 선택해주세요</span></a>
                                                <ul class="select_list _select_list" id="dropdown-field">
                                                    <li><span data-value-fld="견적">견적</span></li>
                                                    <li><span data-value-fld="의뢰">의뢰</span></li>
                                                    <li><span data-value-fld="문의">문의</span></li>
                                                </ul>
                                            </div>	
                                        </div>                           	
                                        <!-- e 문의분야 -->

                                        <!-- input / text-->
                                        <div class="input-group essential">
                                            <span class="input-group-text" id="title">제목</span>
                                            <input type="text" id="contactSj" name="contactSj" placeholder="제목을 입력하세요" 
                                                class="form-control" aria-label="input" aria-describedby="title">
                                        </div>
                                        
                                        <!-- textarea -->
                                        <div class="input-group essential">
                                            <span class="input-group-text" id="faq">문의내용</span>
                                            <textarea type="text" id="contactCn" name="contactCn" placeholder="문의하실 내용을 입력하세요" 
                                                class="form-control" aria-label="input" aria-describedby="faq"></textarea>
                                        </div>
                                        
                                        <!--s security-->
                                        <div class="input-group">
                                            <span class="input-group-text" id="automatic">자동등록방지</span>
                                            <span class="security" style="width: 160px; height: 60px; background: #E9E9E9; display: inline-block; margin-right: 15px;">
                                                <img src="/${rc.locale.language }/contact-us/captcha-image" alt="캡차이미지">
                                            </span>
                                            <input type="text" id="captchaString" name="captchaString" maxlength="10"
                                                placeholder="왼쪽의 글자를 순서대로 입력하세요" class="form-control" aria-label="input" aria-describedby="automatic">
                                        </div>
                                        <!--e security-->

                                        <!-- s 개인정보 수집-->
                                        <div class="privacy_box">
                                        <div class="font-h5">개인정보 수집 · 이용 동의서</div>
                                            <div class="agreement">
                                                <p><span class="font-bold">개인정보 수집 목적 &#58;</span> 서비스 문의 및 상담 대응 </p>
                                                <p><span class="font-bold">수집하는 개인정보 항목 &#58;</span> 이름&#44; 휴대폰번호</p>
                                                <p><span class="font-bold">보유 및 이용기간 &#58;</span>  3년</p>
                                                <p class="guidance">&#8251; 위와 같은 개인정보수집 이용에 대하여 동의를 거부할 권리가 있습니다&#46; 그러나 동의를 거부할 경우 투자 문의 및 상담 문의 서비스 이용이 제한될 수 있습니다&#46;</p>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="checkAgree">
                                                <label class="form-check-label" for="checkAgree">동의합니다</label>
                                            </div>
                                            <div class="btn-box">                            
                                                <a href="javascript:;" class="btn btn-primary" id="btn-save"><span>문의하기</span></a>
                                            </div>
                                        </div>
                                        <!-- e 개인정보 수집 -->

                                    </div>
                                </div>
                            </div>
                            <hr class="divider">
                    	    <!-- e:2023리뉴얼 -->

                            <div class="font-h5">연구·사업 분야별 문의</div>
                            <div class="category">
                                <ul class="clearfix">
                                    <li class="item item-lg">
                                        <div class="title">NGS</div>
                                        <div class="desc">
                                            <ul>
                                                <li><i class="ic-call"></i><a href="tel:+82-2-2180-7201">&#43;82&#45;2&#45;2180&#45;7201</a></li>
                                                <li><i class="ic-mail"></i><a href="mailto:ngskr@macrogen.com">ngskr&#64;macrogen&#46;com</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="item item-lg">
                                        <div class="title">CES</div>
                                        <div class="desc">
                                            <div class="name">샘플접수&#47;실험&#47;결과</div>
                                            <ul>
                                                <li><i class="ic-call"></i><a href="tel:+82-2-2180-7237">&#43;82&#45;2&#45;2180&#45;7237</a></li>
                                                <li><i class="ic-mail"></i><a href="mailto:cestechnical@macrogen.com">cestechnical&#64;macrogen&#46;com</a></li>
                                            </ul>
                                            <div class="name">견적 및 계산서 문의</div>
                                            <ul>
                                                <li><i class="ic-call"></i><a href="tel:+82-2-2180-7326">&#43;82&#45;2&#45;2180&#45;7326</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="item item-lg">
                                        <div class="title">Oligo</div>
                                        <div class="desc">
                                            <div class="name">샘플접수&#47;실험&#47;결과</div>
                                            <ul>
                                                <li><i class="ic-call"></i>
                                                    <a href="tel:+82-2-2180-7017">&#43;82&#45;2&#45;2180&#45;7017</a>
                                                    <a href="tel:+82-2-2180-7287">&#43;82&#45;2&#45;2180&#45;7287</a>
                                                </li>
                                                <li><i class="ic-mail"></i><span>국내</span><a href="mailto:oligokr@macrogen.com">oligokr&#64;macrogen&#46;com</a>
                                                </li>
                                                <li><i class="ic-mail"></i><span>해외</span><a href="mailto:oligo@macrogen.com">oligo&#64;macrogen&#46;com</a></li>
                                            </ul>
                                            <div class="name">견적 및 계산서 문의</div>
                                            <ul>
                                                <li><i class="ic-call"></i><a href="tel:+82-2-2180-7326">&#43;82&#45;2&#45;2180&#45;7236</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="item item-lg">
                                        <div class="title">Microarray</div>
                                        <div class="desc">
                                            <ul>
                                                <li><i class="ic-call"></i><a href="tel:+82-2-2180-7360">&#43;82&#45;2&#45;2180&#45;7360</a></li>
                                                <li><i class="ic-mail"></i><a href="mailto:array@macrogen.com">array&#64;macrogen&#46;com</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="item">
                                        <div class="title">임상분석서비스</div>
                                        <div class="desc">
                                            <ul>
                                                <li><i class="ic-call"></i><a href="tel:+82-2-2180-7222">&#43;82&#45;2&#45;2180&#45;7222</a></li>
                                                <li><i class="ic-mail"></i><a href="mailto:ngsclinic@macrogen.com">ngsclinic&#64;macrogen&#46;com</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="item">
                                        <div class="title">퍼스널 헬스케어</div><!--2023-04-21 수정-->
                                        <div class="desc">
                                            <ul>
                                                <li><i class="ic-call"></i><a href="tel:+82-2-2180-7220">&#43;82&#45;2&#45;2180&#45;7220</a></li>
                                                <li><i class="ic-mail"></i><a href="mailto:hello@macrogen.com">hello&#64;macrogen&#46;com</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="item item-lg">
                                        <div class="title">모델동물/크리스퍼</div>
                                        <div class="desc">
                                            <div class="name">샘플접수&#47;실험&#47;결과</div>
                                            <ul>
                                                <li><i class="ic-call"></i><a href="tel:+82-2-3663-5990">&#43;82&#45;2&#45;3663&#45;5990</a></li>
                                            </ul>
                                            <div class="name">견적 및 계산서 문의</div>
                                            <ul>
                                                <li><i class="ic-call"></i><a href="tel:+82-2-3664-2004">&#43;82&#45;2&#45;3664&#45;2004</a></li>
                                                <li><i class="ic-mail"></i><a href="mailto:mouse@macrogen.com">mouse&#64;macrogen&#46;com</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="item item-lg">
                                        <div class="title">마이크로바이옴</div>
                                        <div class="desc">
                                            <div class="name">견적 및 계산서 문의</div>
                                            <ul>
                                                <li><i class="ic-call"></i><a href="tel:+82-2-2180-7206">&#43;82&#45;2&#45;3663&#45;7206</a></li>
                                            </ul>
                                            <div class="name">더바이옴 고객문의</div>
                                            <ul>
                                                <li><i class="ic-call"></i><a href="tel:+82-2-1644-9599">&#43;82&#45;2&#45;1644&#45;9599</a></li>
                                                <li><i class="ic-mail"></i><a href="mailto:thebiome@macrogen.com">thebiome&#64;macrogen&#46;com</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="item item-md">
                                        <div class="title">반려동물 헬스케어</div><!--2023-04-21 수정-->
                                        <div class="desc">
                                            <ul>
                                                <li><i class="ic-call"></i><a href="tel:+82-2-2180-7145">&#43;82&#45;2&#45;2180&#45;7145</a></li>
                                                <li><i class="ic-mail"></i><a href="mailto:mypetgene@macrogen.com">mypetgene&#64;macrogen&#46;com</a></li>
                                            </ul>
                                        </div>
                                    </li>	                            
                                    <!--<li class="item item-md">
                                        <div class="title">대전지사</div>
                                        <div class="desc">
                                            <ul>
                                                <li><i class="ic-call"></i><a href="tel:+82-2-2180-7017">&#43;82&#45;2&#45;2180&#45;7201</a></li>
                                                <li><i class="ic-mail"></i><a href="mailto:sequencing@macrogen.com">sequencing&#64;macrogen&#46;com</a></li>
                                            </ul>
                                        </div>
                                    </li>-->
                                    <li class="item ">
                                        <div class="title">Human ID</div>
                                        <div class="desc">
                                            <div class="name">샘플접수&#47;실험&#47;결과</div>
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
                            <!--<div class="btn-wrap"><a href="#" class="btn btn-text"><span>마크로젠 글로벌 네트워크</span><i class="icon icon-arrow-right-long"></i></a></div>-->

                        </div><!-- inner -->
                    </div>
                    <!-- e 연구·사업 분야별 문의 -->
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
			
			var mbtlnum1 = $('#mbtlnum1');
			var mbtlnum2 = $('#mbtlnum2');
			var mbtlnum3 = $('#mbtlnum3');

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
						alert('처리중입니다....');
						return false;
		    		}
		
		    		if (!validate()) {
		    			return false;
		    		}
		
					if (!confirm('문의하시겠습니까?')) {
						return false;
					} else {
						submitting = true;
					}
					
					/* // 문의분야
					$("#field").val();
					
					// 국가
					$("#nationCode").val(); */
			
					// 핸드폰
					$("#mbtlnum").val(mbtlnum1.text() + '-' + mbtlnum2.val() + '-' + mbtlnum3.val());
		
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
							alert('저장되었습니다.');
							location.href = '/${rc.locale.language }/contact-us';
						} else if (data.result == 'fail') {
							if (data.message == 'invalid_captcha') {
								alert('자동등록방지 문자열을 확인해 주세요.');
								captchaString.focus();
							}
						}
		
					});
		
		    	});
		    });
		
		    function validate() {	
		    	
		    	if (!nmbrWriterNm.val()) {
		    		alert('이름을 입력해 주세요.');
		    		nmbrWriterNm.focus();
		    		return false;
		    	}
		    	
		    	if (!company.val()) {
		    		alert('소속을 입력해 주세요.');
		    		company.focus();
		    		return false;
		    	}
		    	
		    	if (!mbtlnum1.text()) {
		    		alert('휴대폰번호를 입력해 주세요.');
		    		mbtlnum1.focus();
		    		return false;
		    	}
		    	if (!mbtlnum2.val()) {
		    		alert('휴대폰번호를 입력해 주세요.');
		    		mbtlnum2.focus();
		    		return false;
		    	}
		    	if (!mbtlnum3.val()) {
		    		alert('휴대폰번호를 입력해 주세요.');
		    		mbtlnum3.focus();
		    		return false;
		    	}
				
		    	if (!email1.val()) {
		    		alert('이메일을 입력해 주세요.');
		    		email1.focus();
		    		return false;
		    	}	
		    	
		    	// 직접입력 선택시 input 태그 val()
				if(!email2.text()) {
					email2.text( $("input.input_email").val() );
				}	
		    			    	
		    	if (!email2.text()) {
		    		alert('이메일을 입력해 주세요.');
		    		email2.focus();
		    		return false;
		    	}
		    	
		    	if (!nationCode.val()) {
		    		alert('국가를 선택해 주세요.');
		    		nation.focus();
		    		return false;
		    	}
				
		    	if (!field.val()) {
		    		alert('문의분야를 선택해 주세요.');
		    		fld.focus();
		    		return false;
		    	}

		    	
		    	if (!contactSj.val()) {
		    		alert('제목을 입력해 주세요.');
		    		contactSj.focus();
		    		return false;
		    	}
		    	if (!contactCn.val()) {
		    		alert('문의내용을 입력해 주세요.');
		    		contactCn.focus();
		    		return false;
		    	}
		    	if (!captchaString.val()) {
		    		alert('자동등록방지 문자를 입력해 주세요.');
		    		captchaString.focus();
		    		return false;
		    	}
		
		    	if (!checkAgree.is(':checked')) {
		    		alert('투자 및 상담을 위한 개인정보 수집·이용에 동의해주세요');
		    		checkAgree.focus();
		    		return false;
		    	}
		
		    	return true;
		
		    }

    	</script>
        
	</form>         
</body>
