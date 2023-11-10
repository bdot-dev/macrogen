<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

	<form id="editForm" name="editForm" action="/${rc.locale.language }/contact-us/submit" method="post">
		<input type="hidden" id="mbtlnum" name="mbtlnum" />
		<input type="hidden" id="nationCode" name="nationCode"/>
		<input type="hidden" id="field" name="field" />
		
		<div class="wrap">
			<div class="non-bg">
		        <header class="header">
		            <div class="inner">
		                <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
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
		                    <div class="font-h4">도움이 필요하신가요?<br/>분야별 담당자가<br/>안내해드립니다.</div>
		                </div>
		            </div>	
		            
		            <!-- s map -->
		            <div class="section-map">
		            	<div class="inner">
		            		
		            		<!-- 2023-04-17::"마크로젠 본사" 주소내용 삭제 -->
		            		<div class="info">
		                        <div class="item">
		                            <div class="font-h7">대표문의</div>
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
		                    <img src="/publishing/mobile-ko/dist/img/macrogen/contactus-map.png" alt=""/>
		                </div>
		            	
		            </div>
		            <!-- e map -->
            		<hr class="divider"/>
		            
		            <!-- 2023-04-17::문의하기 내용추가 -->
            		<div class="accordion-container">
            			<div class="accordion-item">
            				<a class="accordion-button color-point-primary" href="#">문의하기</a>
            				<hr class="divider"/>
            				<div class="accordion-content">
            				
            					<div class="input-group-box">
            						<!-- 이름 -->
            						<label class="label essential" id="name">이름</label>
            						<div class="input-group">
		                                <input type="text" id="nmbrWriterNm" name="nmbrWriterNm" maxlength="10" 
		                                	title="이름" class="form-control" placeholder="이름을 입력해주세요">
		                            </div>
		                            <!-- 소속 -->
		                            <label class="label essential" id="affiliation">소속</label>
		                            <div class="input-group">
		                                <input type="text" id="company" name="company" maxlength="50" 
		                                	title="소속" class="form-control" placeholder="소속을 입력하세요">
		                            </div>
		                            <!-- 휴대폰 -->
		                            <label class="label">휴대폰 번호</label>
				                    <div class="input-group input-group-phone">
				                        <div class="dropdown">
				                            <div class="select">
				                                <span id="mbtlnum1">010</span>
				                                <i class="ico-select-nor"></i>
				                            </div>
				                            <input type="hidden" name="phone">
				                            <ul class="dropdown-menu">
					                        	<c:forEach items="${mobilePrefixList }" var="result" varStatus="status">
					                                <li>${result.code }</li>
					                        	</c:forEach>
				                            </ul>
				                        </div>
				                        <input type="number" id="mbtlnum2" name="mbtlnum2"
				                        	title="phone" class="form-control" maxlength="4" oninput="lengthLimit4(this)">
				                        <input type="number" id="mbtlnum3" name="mbtlnum3"
				                        	title="phone" class="form-control" maxlength="4" oninput="lengthLimit4(this)">
				                        	
				                         <script>                                                
	                                         /*숫자 글자수 제한*/
	                                         function lengthLimit4(e){
	                                             if(e.value.length > 4){
	                                                 e.value = e.value.slice(0, 4)
	                                             }
	                                         }
                                        </script>
				                        	
				                    </div>
				                    <div class="input-tip">
		                                <i class="icon ico-info-blue"></i>
		                                <span>문의사항에 대한 답변은 개별 연락을 통해 답변드릴 예정이니 연락 받으실 휴대폰 번호를 정확히 입력해주시기 바랍니다.</span>
		                            </div>
		                            
				                    <!-- 이메일 -->
				                    <label class="label essential">이메일</label>
				                    <div class="input-group">
		                                <input type="text" id="email" name="email" title="이메일" class="form-control" placeholder="이메일을 입력해주세요">
		                            </div>
				                    
				                    <!-- 국가 -->
				                    <label class="label essential">국가</label>
				                    <div class="input-group">
				                    	<div class="dropdown">
				                    		<div class="select">
		                                        <span id="nation">국가를 선택해주세요</span>
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
				                    <label class="label essential">문의 분야</label>
				                    <div class="input-group">
				                    	<div class="dropdown">
				                    		<div class="select">
		                                        <span id="fld">문의 분야를 선택해주세요</span>
		                                        <i class="ico-select-nor"></i>
		                                    </div>
		                                    <ul class="dropdown-menu" id="dropdown-field">
		                                        <li><span data-value-fld="견적">견적</span></li>
                                                <li><span data-value-fld="의뢰">의뢰</span></li>
                                                <li><span data-value-fld="문의">문의</span></li>
		                                    </ul>
				                    	</div>
				                    </div>
				                    
				                    <!-- 제목 -->
				                    <label class="label essential">제목</label>
		                            <div class="input-group">
		                                <input type="text" id="contactSj" name="contactSj" title="제목" class="form-control" 
		                                	placeholder="제목을 입력해주세요">
		                            </div>
				                    
				                    <!-- 내용 -->
				                    <label class="label essential">문의내용</label>
		                            <div class="input-group">
		                                <textarea title="textarea" id="contactCn" name="contactCn" class="form-control" 
		                                	placeholder="문의하실 내용을 입력하세요">
		                                </textarea>
		                            </div>
				                    
				                    <!--s 개발영역-->
				                    <div class="input-group">
				                        <span class="input-group-text" id="automatic">자동등록방지</span>
				                        <span class="security" style="width: 160px; height: 60px; background: #E9E9E9;">
				                    		<img src="/${rc.locale.language }/contact-us/captcha-image" alt="캡차이미지">
				                        </span>
				                        <input type="text" id="captchaString" name="captchaString" maxlength="10"
				                        	placeholder="위의 문자를 순서대로 입력하세요" class="form-control" aria-label="input" aria-describedby="automatic">
				                    </div>
				                    <!--e 개발영역-->
				                    
				                    <!-- 개인정보 -->
				                    <div class="box">
					                    <div class="font-h5">03. 투자 및 상담을 위한 개인정보 수집·이용에 동의해주세요</div>
					
					                    <div class="agreement">
		                                    <p><span class="font-bold">개인정보 수집 목적 :</span> 서비스 문의 및 상담 대응</p>
		                                    <p><span class="font-bold">수집하는 개인정보 항목 :</span> 이름, 휴대폰번호, 이메일, 소속, 국가</p>
		                                    <p><span class="font-bold">보유 및 이용기간 :</span>  3년</p>
		                                    <p class="guidance">※ 위와 같은 개인정보수집 이용에 대하여 동의를 거부할 권리가 있습니다. 그러나 동의를 거부할 경우 투자 문의 및 상담 문의 서비스 이용이 제한될 수 있습니다.</p>
		                                </div>
					
					                    <div class="form-check">
					                        <input type="checkbox" id="checkAgree" class="form-check-input">
					                        <label class="form-check-label" for="checkAgree">동의합니다</label>
					                    </div>
					
					                    <div class="btn-box">
					                        <a href="javascript:;" class="btn btn-primary" id="btn-save"><i class="icon-pen"></i><span>문의하기</span></a>
					                    </div>
					                </div>	                    
            					</div><!-- e input -->
            				</div>
            			</div>
            		</div>
		            <!-- //2023-04-17::문의하기 내용추가 -->
		            
		            <hr class="divider"/>
		            
		            <!-- s 연구·사업 분야별 문의 -->
		            <div class="section">
		                <div class="inner">
		                    <div class="font-h5">연구·사업 분야별 문의</div>
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
		                            <li class="item">
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
		                            <li class="item">
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
		                            <li class="item">
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
		                            <li class="item">
		                                <div class="title">반려동물 헬스케어</div><!--2023-04-21 수정-->
		                                <div class="desc">
		                                    <ul>
		                                        <li><i class="ic-call"></i><a href="tel:+82-2-2180-7145">&#43;82&#45;2&#45;2180&#45;7145</a></li>
		                                        <li><i class="ic-mail"></i><a href="mailto:mypetgene@macrogen.com">mypetgene&#64;macrogen&#46;com</a></li>
		                                    </ul>
		                                </div>
		                            </li>
		                            <li class="item">
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
		
		                    <!-- 2023-04-17::링크버튼 내용 삭제 -->
		                    
		                </div>
		            </div>
		            <!-- e 연구·사업 분야별 문의 -->
		            
		            
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
			
			var mbtlnum1 = $('#mbtlnum1');
			var mbtlnum2 = $('#mbtlnum2');
			var mbtlnum3 = $('#mbtlnum3');

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
					
					/* 문의분야
					$("#field").val();
					
					 국가
					$("#nationCode").val(); */
			
					// 핸드폰
					$("#mbtlnum").val(mbtlnum1.text() + '-' + mbtlnum2.val() + '-' + mbtlnum3.val());

					
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
				
		    	if (!email.val()) {
		    		alert('이메일을 입력해 주세요.');
		    		email.focus();
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
