<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<!-- 검색조건 저장용 -->
<form:form commandName="listVo" id="listForm" name="listForm">
	<form:hidden path="pageIndex" />
	<form:hidden path="wnpzClCode" />
</form:form>

<div class="modal-header">
    <h5 class="modal-title">마크로젠 ${ wnpzClCodeVo['codeNm'.concat(lang)] }</h5>
    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
</div>
<div class="modal-body">
    <div class="list-of-winners-detail">
        <div class="list-header">
            <div class="img"><img src="${publicUrl }${ resultVo.photoFlpth }" alt="${ resultVo.wnpzNm }"></div>
            <div class="info">
                <div class="sub">${ resultVo['wnpzTmeCodeNm'.concat(lang)] }</div>
                <div class="name">${ resultVo.wnpzNm }</div>
                <div class="job">${ resultVo.occp }</div>
            </div>
        </div>
        <div class="list-body">
            <div class="career">
                <div class="tit">주요 연구 업적</div>
                <ul>
                    <li>${ resultVo.rm }</li>
                </ul>
            </div>
            <div class="title">수상자 및 연구업적 소개</div>
            <div class="desc">
            	${ resultVo.wnpzCn }
            </div>
            <div class="list-footer">
                <div class="board">
                    <div class="navigation">
                        <div class="row g-0">
                            <div class="col ${ empty prevVo ? 'disabled' : '' }">
                            	<i class="icon ico-left-black btn-prev"></i><span class="font-body-h-b btn-prev">이전</span>
                            </div>
                            <div class="col ${ empty nextVo ? 'disabled' : '' }">
                            	<span class="font-body-h-b btn-next">다음</span><i class="icon ico-left-black btn-next"></i>
                            </div>
                        </div>
                    </div>
                    <a href="javascript:;" class="btn btn-black btn-list">목록</a>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
	$(function() {
		$('#modal .btn-close').on('click', function() {
			window.history.replaceState({}, document.title, ' ');
		});

	    $('.btn-close').on('click',function (){
	    	modal.hide();
	    })

	});
</script>

<script>
	var $form = $('#listForm');
    var $modalContent = $('#modal .modal-content');

	$(function() {
		$('.btn-list').on('click', function(e) {
			$.ajax({
				dataType: 'html', type : 'post',
				url: '/${rc.locale.language}/company/winner/listAjaxHtml',
				data: $form.serialize(),
			}).done(function(html) {
				$modalContent.empty().html(html);
				modal.show();
			});
	    });

		$('.btn-prev').on('click', function(e) {
			<c:if test="${ empty prevVo }">
				alert('첫글입니다.');
			</c:if>
			<c:if test="${ not empty prevVo }">
				$.ajax({
					dataType: 'html', type : 'post',
					url: '/${rc.locale.language }/company/winner/viewAjaxHtml/${prevVo.wnpzSn}',
					data: $form.serialize(),
				}).done(function(html) {
					$modalContent.empty().html(html);
					modal.show();
				});
			</c:if>

		});

		$('.btn-next').on('click', function(e) {
			<c:if test="${ empty nextVo }">
				alert('마지막 글입니다.');
			</c:if>
			<c:if test="${ not empty nextVo }">
				$.ajax({
					dataType: 'html', type : 'post',
					url: '/${rc.locale.language }/company/winner/viewAjaxHtml/${nextVo.wnpzSn}',
					data: $form.serialize(),
				}).done(function(html) {
					$modalContent.empty().html(html);
					modal.show();
				});
			</c:if>

	    });

	});

</script>
