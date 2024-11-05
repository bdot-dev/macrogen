<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

	<form id="editForm" name="editForm" action="/${rc.locale.language }/ir/investor-inquiries/submit" method="post">

    <div class="container container-fluid">
        <div class="section_IR">
            <div class="question_box">
                <div class="text-area">
                    <nav aria-label="breadcrumb">
					    <ol class="breadcrumb">
					        <li class="breadcrumb-item">Home</li>
					        <li class="breadcrumb-item">IR</li>
					        <li class="breadcrumb-item active">Investment Inquiries</li>
					    </ol>
					</nav>

                    <h2 class="font-h1">Investment Inquiries</h2>
                    <div class="font-h4">Contact us for any questions regarding investment.<br/> We will respond promptly.</div>
                    <span class="number">Tel&#46; 02&#45;3489&#45;7570</span>
                    <a href="#write" class="btn btn-white btn-round btn-round-big"><span>Write</span><i class="icon icon-arrow-bottom-short"></i></a>

                </div>
                <div class="img-area"></div>

            </div>
            <div class="privacy_box" id="write">
                <div class="font-h5"><span>01.</span>Inquiry Information</div>
                <!-- input / text-->
                <div class="input-group">
                    <span class="input-group-text" id="name">Name</span>
                    <input type="text" id="nmbrWrterNm" name="nmbrWrterNm" maxlength="20"
                    	placeholder="Enter your name" class="form-control" aria-label="input" aria-describedby="name">
                </div>
                <!--영문버전 추가 영역 -->
                <div class="input-group input-email-box">
                    <span class="input-group-text">Email</span>
                    <input type="text" id="email1" name="email1" maxlength="20"
                    	placeholder="email" class="form-control" aria-label="input" aria-describedby="yourmail">
                    <span class="at_sign">@</span>
                    <input type="text"  id="email2" name="email2" maxlength="50"
                    	placeholder="example.com" class="form-control" aria-label="input" aria-describedby="example.com">
					<input type="hidden" id="email" name="email" />
                </div>

                <hr class="divider"/>
            </div>
            <div class="privacy_box">
                <div class="font-h5"><span>02&#46;</span>Please enter the your inquiry</div>
                <!-- input / text-->
                <div class="input-group">
                    <span class="input-group-text" id="title">Subject</span>
                    <input type="text" id="nttSj" name="nttSj" maxlength="200"
                    	placeholder="Enter title" class="form-control" aria-label="input" aria-describedby="title">
                </div>
                <!-- textarea -->
                <div class="input-group">
                    <span class="input-group-text" id="faq">Details</span>
                    <textarea id="nttCn" name="nttCn" placeholder="Enter the your inquiry" class="form-control" aria-label="input"
                              aria-describedby="faq"></textarea>
                </div>
                <!-- input / text-->

                <!--s 개발영역-->
                <div class="input-group">
                    <span class="input-group-text" id="automatic">Security code</span>
                    <span class="security" style="width: 160px; height: 60px; background: #E9E9E9; display: inline-block; margin-right: 15px;">
                    	<img src="/${rc.locale.language }/ir/investor-inquiries/captcha-image" alt="캡차이미지">
                    </span>
                    <input type="text" id="captchaString" name="captchaString" maxlength="10"
                    	placeholder="Enter number" class="form-control" aria-label="input" aria-describedby="automatic">
                </div>
                <!--e 개발영역-->

                <hr class="divider"/>
            </div>

            <div class="privacy_box">
                <div class="font-h5"><span>03.</span>Agree to the collection and use of personal information.</div>
                <div class="agreement">
                    <p><span class="font-bold">Purpose of collecting personal information :</span> Response to investment inquiries and consultation inquiries</p>
                    <p><span class="font-bold">Items of Personal Information Collected :</span> Name, Email</p>
                    <p><span class="font-bold">Retention and period of use :</span>  3 years</p>
                    <p class="guidance">&#8251; You have the right to refuse consent. However, if you refuse to consent, you may be restricted from using the investment inquiry and consultation inquiry service.</p>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="checkAgree">
                    <label class="form-check-label" for="checkAgree">Agree</label>
                </div>
            </div>
            <div class="btn-box">
                <a href="javascript:;" class="btn btn-white btn-cancel"><span>Cancel</span></a>
                <a href="javascript:;" class="btn btn-primary btn-save"><i class="icon icon-pen"></i><span>Inquire</span></a>
            </div>

        </div>

    </div>

	</form>

    <script>
	var submitting = false;
	var $form = $('#editForm');
	var $nmbrWrterNm = $('#nmbrWrterNm');
	var $email = $('#email');
	var $email1 = $('#email1');
	var $email2 = $('#email2');
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
				alert('Processing....');
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

			$email.val($email1.val() + '@' + $email2.val());

			$.ajax({
				dataType : 'json',
				type : 'post',
				url : '/${rc.locale.language }/ir/investor-inquiries/submit',
				data: $('#editForm').serialize(),
			}).done(function(data) {
				submitting = false;
				if (data.result == 'success') {
					alert('Completed.');
					location.href = '/${rc.locale.language }/ir/investor-inquiries';
				} else if (data.result == 'fail') {
					if (data.message == 'invalid_captcha') {
						alert('Confirm security code.');
						$captchaString.focus();
					}
				}

			});

    	});
    });

    function validate() {
    	if (!$nmbrWrterNm.val()) {
    		alert('Name is required.');
    		$nmbrWrterNm.focus();
    		return false;
    	}
    	if (!$email1.val()) {
    		alert('Email is required.');
    		$email1.focus();
    		return false;
    	}
    	if (!$email2.val()) {
    		alert('Email is required.');
    		$email2.focus();
    		return false;
    	}

    	if (!$nttSj.val()) {
    		alert('Subject is required.');
    		$nttSj.focus();
    		return false;
    	}
    	if (!$nttCn.val()) {
    		alert('Details is required.');
    		$nttCn.focus();
    		return false;
    	}
    	if (!$captchaString.val()) {
    		alert('Security code is required.');
    		$captchaString.focus();
    		return false;
    	}

    	if (!$checkAgree.is(':checked')) {
    		alert('Agree to the collection and use of personal information');
    		$checkAgree.focus();
    		return false;
    	}

    	return true;

    }

    </script>

</body>
