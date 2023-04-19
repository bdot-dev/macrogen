<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

	<form id="editForm" name="editForm" action="/${rc.locale.language }/etc/contact/submit" method="post">
		<input type="hidden" id="nationCode" name="nationCode"/>
		<input type="hidden" id="field" name="field" />
		
		<div class="wrap">
			<div class="non-bg">
		        <header class="header">
		            <div class="inner">
		                <h1 class="logo"><a href="#">마크로젠 로고</a></h1>
		                <a href="#" class="btn-menu" data-bs-toggle="modal" data-bs-target="#gnb"><span class="sr-only">메뉴</span></a>
		            </div>
		        </header>
		        
		        <div class="frame">
		            <div class="font-h1">CONTACT US</div>
		        </div>
		    </div>	
		    
		    <div class="container pt-0">
		    	<div class="macrogen macrogen-contact-us">
		    	
		    		<div class="section">
		                <div class="inner">
		                    <div class="font-h4">How can we help you?</div>
		                    <div class="sub-copy">Our highest priority is to provide excellent personal service to our customers.<br>We're available by phone or email weekdays 9:00AM–5:00PM KST.</div>
		                </div>
		            </div>	
		            
		            <!-- s map -->
		            <div class="section-map">
		            	<div class="inner">
		            		
		            		<!-- 2023-04-17::"마크로젠 본사" 주소내용 삭제 -->
		            		<div class="info">
		                        <div class="item">
		                            <div class="font-h7">Customer Care</div>
		                            <div class="desc">
		                                <ul>
		                                    <li><i class="ic-call"></i><a href="tel:+82-2-2180-7000">+82-2-2180-7000</a></li>
		                                    <li><i class="ic-fax"></i><a href="tel:+82-2-2180-7100">+82-2-2180-7100</a></li>
		                                    <li><i class="ic-mail"></i><a href="mailto:webmaster@macrogen.com">webmaster@macrogen.com</a></li>
		                                </ul>
		                            </div>
		                        </div>
		                        <!-- 2023-04-17::"서비스 결제문의" 내용 삭제 -->
		                    </div>
		            		
		            	</div>
		            	<div class="inner">
		                    <!-- 2023-04-17::지도 이미지 추가 -->
		                    <img src="/publishing/mobile-en/dist/img/macrogen/contactus-map.png" alt=""/>
		                </div>
		            	
		            </div>
		            <!-- e map -->
            		<hr class="divider"/>
		            
		            <!-- 2023-04-17::문의하기 내용추가 -->
            		<div class="accordion-container">
            			<div class="accordion-item">
            				<a class="accordion-button color-point-primary" href="#">Inquiry Information</a>
            				<hr class="divider"/>
            				<div class="accordion-content">
            				
            					<div class="input-group-box">
            						<!-- 이름 -->
            						<label class="label essential" id="name">Name</label>
            						<div class="input-group">
		                                <input type="text" id="nmbrWriterNm" name="nmbrWriterNm" maxlength="10" 
		                                	title="Name" class="form-control" placeholder="Enter your name (First name / Last name)">
		                            </div>
		                            <!-- 소속 -->
		                            <label class="label essential" id="affiliation">Organization</label>
		                            <div class="input-group">
		                                <input type="text" id="company" name="company" maxlength="50" 
		                                	title="Organization" class="form-control" placeholder="Enter your Organization">
		                            </div>
		                            <!-- 휴대폰 -->
		                            <label class="label essential">Phone</label>
				                    <div class="input-group">
                                		<input type="text" title="Phone" id="mbtlnum" name="mbtlnum" class="form-control" placeholder="Enter your Phone number">
		                            </div>
		                            <div class="input-tip">
		                                <i class="icon ico-info-blue"></i>
		                                <span>For answers to your questions, please contact us individually. I'm going to answer you, so please enter the correct mobile number to receive your call.</span>
		                            </div>

		                            
				                    <!-- 이메일 -->
				                    <label class="label essential">Email</label>
				                    <div class="input-group">
		                                <input type="text" id="email" name="email" title="Email" class="form-control" placeholder="Enter your E-mail">
		                            </div>
				                    
				                    <!-- 국가 -->
				                    <label class="label essential">Country</label>
				                    <div class="input-group">
				                    	<div class="dropdown">
				                    		<div class="select">
		                                        <span id="nation">Select your Country</span>
		                                        <i class="ico-select-nor"></i>
		                                    </div>
		                                    <ul class="dropdown-menu" id="dropdown-nation">
		                                    	<c:forEach items="${ nationCodeList }" var="result" varStatus="status">
	                                                 <li>
	                                                     <span id="nation" data-value-nation="${result.code}">${result.codeNmEn}</span>
	                                                 </li>
                                                 </c:forEach>
		                                    </ul>
		                                    
				                    	</div>
				                    </div>
				                    
				                    <!-- 문의분야 -->
				                    <label class="label essential">Inquiry field</label>
				                    <div class="input-group">
				                    	<div class="dropdown">
				                    		<div class="select">
		                                        <span id="fld">Select your Inquiry</span>
		                                        <i class="ico-select-nor"></i>
		                                    </div>
		                                    <ul class="dropdown-menu" id="dropdown-field">
		                                        <li><span data-value-fld="Quotation">Quotation</span></li>
                                                <li><span data-value-fld="Request">Request</span></li>
                                                <li><span data-value-fld="Inquiry">Inquiry</span></li>
		                                    </ul>
				                    	</div>
				                    </div>
				                    
				                    <!-- 제목 -->
				                    <label class="label essential">Subject</label>
		                            <div class="input-group">
		                                <input type="text" id="contactSj" name="contactSj" title="Subject" class="form-control" placeholder="Enter title">
		                            </div>
				                    
				                    <!-- 내용 -->
				                    <label class="label essential">Details</label>
		                            <div class="input-group">
		                                <textarea title="textarea" id="contactCn" name="contactCn" class="form-control" placeholder="Enter the your Inquiry"></textarea>
		                            </div>
				                    
				                    <!--s 개발영역-->
				                    <div class="input-group">
				                        <span class="input-group-text" id="automatic">Security code</span>
				                        <span class="security" style="width: 160px; height: 60px; background: #E9E9E9;">
				                    		<img src="/${rc.locale.language }/etc/contact/captcha-image" alt="캡차이미지">
				                        </span>
				                        <input type="text" id="captchaString" name="captchaString" maxlength="10"
				                        	placeholder="Enter number" class="form-control" aria-label="input" aria-describedby="automatic">
				                    </div>
				                    <!--e 개발영역-->
				                    
				                    <!-- 개인정보 -->
				                    <div class="box">
					                    <div class="font-h5">Agree to the collection & use of personal information</div>
					
					                    <div class="agreement">
		                                    <p><span class="font-bold">Purpose of collecting personal information :</span> Response to investment inquiries and consultation inquiries</p>
		                                    <p><span class="font-bold">Items of Personal Information Collected :</span> Name, E-mail</p>
		                                    <p><span class="font-bold">Retention and period of use :</span>  3 years</p>
		                                    <p class="guidance">※ You have the right to refuse consent. However, if you refuse to consent, you may be restricted from using the investment inquiry and consultation inquiry service.</p>
		                                </div>
					
					                    <div class="form-check">
					                        <input type="checkbox" id="checkAgree" class="form-check-input">
					                        <label class="form-check-label" for="checkAgree">Agree</label>
					                    </div>
					
					                    <div class="btn-box">
					                        <a href="javascript:;" class="btn btn-primary" id="btn-save"><i class="icon-pen"></i><span>Inquire</span></a>
					                    </div>
					                </div>	                    
            					</div><!-- e input -->
            				</div>
            			</div>
            		</div>
		            <!-- //2023-04-17::문의하기 내용추가 -->
		            
		            <hr class="divider"/>
		            
		            <!-- s 연구·사업 분야별 문의 -->
		            <!-- 2023-04-17::문구 번역 적용 -->
		            <div class="section">
		                <div class="inner">
		                    <div class="font-h5">Additional Contact <br>Information</div>
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
		                                <div class="title">Clinical Services</div>
		                                <div class="desc">
		                                    <ul>
		                                        <li><i class="ic-call"></i><a href="tel:+82-2-2180-7222">&#43;82&#45;2&#45;2180&#45;7222</a></li>
		                                        <li><i class="ic-mail"></i><a href="mailto:ngsclinic@macrogen.com">ngsclinic&#64;macrogen&#46;com</a></li>
		                                    </ul>
		                                </div>
		                            </li>
		                            <li class="item">
		                                <div class="title">Personal Genome Analysis</div>
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
		                                <div class="title">Pet DNA Test</div>
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
		                        </ul>
		                    </div>
							<!-- <div class="btn-wrap"><a href="#" class="btn btn-text"><span>마크로젠 글로벌 네트워크</span><i class="icon icon-arrow-right-long"></i></a></div>-->
		                </div>
		            </div>
		            
		            
		    	</div>
		    </div>
		    
		</div>
		
		<a href="#" class="btn-totop"></a>
		
		<script>
		    $(document).ready(function(){
		        $('.btn-totop').click(function(){
		            $('html,body').animate( { scrollTop:0 },{duration : 100});
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

			var email = $('#email');
			
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
					
					/* // 문의분야
					$("#field").val();
					
					// 국가
					$("#nationCode").val();	 */		

					
					$.ajax({
						dataType : 'json',
						type : 'post',
						url : '/${rc.locale.language }/etc/contact/submit',
						data: $('#editForm').serialize(),
					}).done(function(data) {
						submitting = false;						
						if (data.result == 'success') {
							alert('Completed.');
							location.href = '/${rc.locale.language }/etc/contact';
						} else if (data.result == 'fail') {
							if (data.message == 'invalid_captcha') {
								alert('Security code is required.');
								captchaString.focus();
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
	    	
				
		    	if (!email.val()) {
		    		alert('Email is required.');
		    		email.focus();
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
