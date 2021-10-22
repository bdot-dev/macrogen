<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

	<form id="editForm" name="editForm" action="/${rc.locale.language }/ir/investor-inquiries/submit" method="post">
	<input type="hidden" id="mbtlnum" name="mbtlnum" />

    <div class="container container-fluid">
        <div class="section_IR">
            <div class="question_box">
                <div class="text-area">
                    <nav aria-label="breadcrumb">
					    <ol class="breadcrumb">
					        <li class="breadcrumb-item">Home</li>
					        <li class="breadcrumb-item">IR</li>
					        <li class="breadcrumb-item active">투자자 문의</li>
					    </ol>
					</nav>

                    <div class="font-h1">투자자 문의</div>
                    <div class="font-h4">투자에 관해 궁금한점이 있으시면 문의해주세요<br>성심을 다해 답변 드리겠습니다</div>
                    <span class="number">Tel. 02-3489-7558</span>
                    <a href="#write-form" class="btn btn-white btn-round btn-round-big"><span>문의 작성하기</span><i class="icon icon-arrow-bottom-short"></i></a>

                </div>
                <div class="img-area"></div>

            </div>
            <div class="privacy_box" id="write-form">
                <div class="font-h5"><span>01.</span>정보를 입력해주세요</div>
                <!-- input / text-->
                <div class="input-group">
                    <span class="input-group-text" id="name">이름</span>
                    <input type="text" id="nmbrWrterNm" name="nmbrWrterNm" maxlength="10"
                    	placeholder="이름을 입력하세요" class="form-control" aria-label="input" aria-describedby="name">
                </div>
                <!-- input / phone-->
                <div class="input-group input-phone-box">
                    <span class="input-group-text" id="num1">휴대폰 번호</span>
                    <div class="input-group-phone">
                        <select id="mbtlnum1" name="mbtlnum1" class="form-select" title="휴대폰번호 앞세자리 선택">
                        	<c:forEach items="${mobilePrefixList }" var="result" varStatus="status">
	                            <option value="${result.code }">${result.code }</option>
                        	</c:forEach>
                        </select>
                        <input type="number" type="number" id="mbtlnum2" name="mbtlnum2"
                        	placeholder="" class="form-control" aria-label="input" aria-describedby="휴대폰번호 중간 네자리" maxlength="4" oninput="lengthLimit4(this)">
                        <input type="number" type="number" id="mbtlnum3" name="mbtlnum3"
                        	placeholder="" class="form-control" aria-label="input" aria-describedby="휴대폰번호 마지막 네자리" maxlength="4" oninput="lengthLimit4(this)">
                        <script>
                            /*숫자 글자수 제한*/
                            function lengthLimit4(e){
                                if(e.value.length > 4){
                                    e.value = e.value.slice(0, 4)
                                }
                            }
                        </script>
                    </div>
                    <p class="notice-text"><i class="icon icon-attention"></i><span>문의사항에 대한 답변은 개별 연락을 통해 답변드릴 예정이니 연락 받으실 휴대폰 번호를 정확히 입력해주시기 바랍니다.</span></p>
                </div>
                <hr class="divider"/>
            </div>
            <div class="privacy_box">
                <div class="font-h5"><span>02.</span>문의하실 내용을 작성해주세요</div>
                <!-- input / text-->
                <div class="input-group">
                    <span class="input-group-text" id="title">제목</span>
                    <input type="text" id="nttSj" name="nttSj" maxlength="200"
                    	placeholder="제목을 입력하세요" class="form-control" aria-label="input" aria-describedby="title">
                </div>
                <!-- textarea -->
                <div class="input-group">
                    <span class="input-group-text" id="faq">문의내용</span>
                    <textarea id="nttCn" name="nttCn" type="text" placeholder="문의하실 내용을 입력하세요" class="form-control" aria-label="input"
                              aria-describedby="faq"></textarea>
                </div>
                <!-- input / text-->

                <!--s 개발영역-->
                <div class="input-group">
                    <span class="input-group-text" id="automatic">자동등록방지</span>
                    <span class="security" style="width: 160px; height: 60px; background: #E9E9E9; display: inline-block; margin-right: 15px;">
                    	<img src="/${rc.locale.language }/ir/investor-inquiries/captcha-image" alt="캡차이미지">
                    </span>
                    <input type="text" id="captchaString" name="captchaString" maxlength="10"
                    	placeholder="왼쪽의 글자를 순서대로 입력하세요" class="form-control" aria-label="input" aria-describedby="automatic">
                </div>
                <!--e 개발영역-->

                <hr class="divider"/>
            </div>

            <div class="privacy_box">
                <div class="font-h5"><span>03.</span>투자 및 상담을 위한 개인정보 수집&#183;이용에 동의해주세요</div>
                <div class="agreement">
                    <p><span class="font-bold">개인정보 수집 목적 :</span> 투자 문의 및 상담 문의 대응</p>
                    <p><span class="font-bold">수집하는 개인정보 항목 :</span> 이름, 휴대폰번호</p>
                    <p><span class="font-bold">보유 및 이용기간 :</span>  3년</p>
                    <p class="guidance">&#8251; 위와 같은 개인정보수집 이용에 대하여 동의를 거부할 권리가 있습니다. 그러나 동의를 거부할 경우 투자 문의 및 상담 문의 서비스 이용이 제한될 수 있습니다.</p>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="checkAgree">
                    <label class="form-check-label" for="checkAgree">동의합니다</label>
                </div>
            </div>
            <div class="btn-box">
                <a href="javascript:;" class="btn btn-white btn-cancel"><span>취소</span></a>
                <a href="javascript:;" class="btn btn-primary btn-save"><i class="icon icon-pen"></i><span>문의하기</span></a>
            </div>

            <script>
                $('.form-check').on('click',function (){
                    /* if($(this).is(":checked") ==  true){
                        $(this).parents().next('.btn-box').children('.btn').removeClass('disabled')
                    }else{
                        $(this).parents().next('.btn-box').children('.btn').addClass('disabled')
                    } */
                });
            </script>
        </div>

    </div>

	</form>

    <script>
	var submitting = false;
	var $form = $('#editForm');
	var $nmbrWrterNm = $('#nmbrWrterNm');
	var $mbtlnum = $('#mbtlnum');
	var $mbtlnum1 = $('#mbtlnum1');
	var $mbtlnum2 = $('#mbtlnum2');
	var $mbtlnum3 = $('#mbtlnum3');
	var $nttSj = $('#nttSj');
	var $nttCn = $('#nttCn');
	var $captchaString = $('#captchaString');
	var $checkAgree = $('#checkAgree');

    $(function() {
    	$('.btn-cancel').on('click', function() {
    		$form[0].reset();
    	});

    	$('.btn-save').on('click', function() {
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

			$mbtlnum.val($mbtlnum1.val() + '-' + $mbtlnum2.val() + '-' + $mbtlnum3.val());

			$.ajax({
				dataType : 'json',
				type : 'post',
				// contentType : 'application/json',
				url : '/${rc.locale.language }/ir/investor-inquiries/submit',
				/* data : JSON.stringify({
					nttSj : $nttSj.val(),
					nttCn : $nttCn.val(),
					nmbrWrterNm : $nmbrWrterNm.val(),
					mbtlnum : $mbtlnum1.val() + '-' + $mbtlnum2.val() + '-' + $mbtlnum3.val(),
					captchaString : $captchaString.val(),
				}), */
				data: $('#editForm').serialize(),
			}).done(function(data) {
				submitting = false;
				if (data.result == 'success') {
					alert('저장되었습니다.');
					location.href = '/${rc.locale.language }/ir/investor-inquiries';
				} else if (data.result == 'fail') {
					if (data.message == 'invalid_captcha') {
						alert('자동등록방지 문자열을 확인해 주세요.');
						$captchaString.focus();
					}
				}

			});

    	});
    });

    function validate() {
    	if (!$nmbrWrterNm.val()) {
    		alert('이름을 입력해 주세요.');
    		$nmbrWrterNm.focus();
    		return false;
    	}
    	if (!$mbtlnum1.val()) {
    		alert('휴대폰번호를 입력해 주세요.');
    		$mbtlnum1.focus();
    		return false;
    	}
    	if (!$mbtlnum2.val()) {
    		alert('휴대폰번호를 입력해 주세요.');
    		$mbtlnum2.focus();
    		return false;
    	}
    	if (!$mbtlnum3.val()) {
    		alert('휴대폰번호를 입력해 주세요.');
    		$mbtlnum3.focus();
    		return false;
    	}

    	if (!$nttSj.val()) {
    		alert('제목을 입력해 주세요.');
    		$nttSj.focus();
    		return false;
    	}
    	if (!$nttCn.val()) {
    		alert('문의내용을 입력해 주세요.');
    		$nttCn.focus();
    		return false;
    	}
    	if (!$captchaString.val()) {
    		alert('자동등록방지 문자를 입력해 주세요.');
    		$captchaString.focus();
    		return false;
    	}

    	if (!$checkAgree.is(':checked')) {
    		alert('투자 및 상담을 위한 개인정보 수집·이용에 동의해주세요');
    		$checkAgree.focus();
    		return false;
    	}

    	return true;

    }

    </script>

</body>
