<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

	<form id="editForm" name="editForm" action="/${rc.locale.language }/ir/investor-inquiries/submit" method="post">

    <div class="non-bg">
        <header class="header">
		    <div class="inner">
		        <h1 class="logo"><a href="/en">마크로젠 로고</a></h1>
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
            <h2 class="font-h1">Investment Inquiries</h2>
        </div>
    </div>
    <div class="container pt-0">
        <div class="section_IR">
            <div class="question">
                <div class="text-area">
                    <div class="font-h4">Contact us for any questions regarding investment.
                        We will respond promptly.</div>
                    <span class="number">Tel&#46; 02&#45;3489&#45;7570</span>
                 </div>
                <div class="img-area"></div>
            </div>

            <div class="privacy_list">
                <div class="box">
                    <div class="font-h5">01. Inquiry Information</div>
                    <label class="label">Name</label>
                    <div class="input-group">
                        <input type="text" id="nmbrWrterNm" name="nmbrWrterNm" maxlength="10"
                        	title="검색" class="form-control" placeholder="Enter your name">
                    </div>

                    <!-- s 영문버전 추가 영역 -->
                    <label class="label">Email</label>
                    <div class="input-group input-email-box">
	                    <input type="text" id="email1" name="email1" maxlength="20"
	                    	placeholder="email" class="form-control" aria-label="input" aria-describedby="yourmail">
                        <span class="at_sign">@</span>
	                    <input type="text"  id="email2" name="email2" maxlength="50"
	                    	placeholder="example.com" class="form-control" aria-label="input" aria-describedby="example.com">
						<input type="hidden" id="email" name="email" />
                    </div>
                    <!-- e 영문버전 추가 영역 -->

                </div>

                <hr class="M-divider">

                <div class="box">
                    <div class="font-h5">02. Please enter the your inquiry</div>

                    <label class="label">Subject</label>
                    <div class="input-group">
                        <input type="text" id="nttSj" name="nttSj" maxlength="200"
                        	title="검색" class="form-control" placeholder="Enter title">
                    </div>

                    <label class="label">Details</label>
                    <div class="input-group">
                        <textarea id="nttCn" name="nttCn"
                        	title="textarea" class="form-control" placeholder="Enter the your inquiry"></textarea>
                    </div>

                    <!--s 개발영역-->
                    <div class="input-group">
                        <span class="input-group-text" id="automatic">Security code</span>
                        <span class="security" style="width: 160px; height: 60px; background: #E9E9E9;">
                    		<img src="/${rc.locale.language }/ir/investor-inquiries/captcha-image" alt="캡차이미지">
                        </span>
                        <input type="text" id="captchaString" name="captchaString" maxlength="10"
                        	placeholder="Enter number" class="form-control" aria-label="input" aria-describedby="automatic">
                    </div>
                    <!--e 개발영역-->
                </div>

                <hr class="M-divider"/>

                <div class="box">

                    <div class="form-check">
                        <input type="checkbox" id="checkAgree"
                        	class="form-check-input">
                        <label class="form-check-label" for="checkAgree">Agree</label>
                    </div>

                    <div class="btn-box">
                        <a href="javascript:;" class="btn btn-light btn-cancel"><span>Cancel</span></a>
                        <a href="javascript:;" class="btn btn-primary btn-save"><i class="icon-pen"></i><span>Inquire</span></a>
                    </div>
                </div>

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

			$email.val($email1.val() + '@' + $email2.val());

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
