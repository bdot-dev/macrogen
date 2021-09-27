<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<!-- 검색조건 저장용 -->
<form:form commandName="listVo" id="listForm" name="listForm">
	<form:hidden path="pageIndex" />
	<form:hidden path="wnpzClCode" />
</form:form>

<div class="modal-header">
    <h5 class="modal-title">마크로젠 과학자상</h5>
    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
</div>
<div class="modal-body">
    <div class="list-of-winners-detail">
        <div class="btn-wrap">
            <a href="javascript:;" class="btn btn-text btn-list"><i class="icon icon-arrow-left-long"></i><span>목록으로</span></a>
        </div>
        <div class="list-header">
            <div class="img"><img src="${publicUrl }${ resultVo.photoFlpth }" alt="${ resultVo.wnpzNm }"></div>
            <div class="info">
                <div class="sub">${ resultVo['wnpzTmeCodeNm'.concat(lang)] }</div>
                <div class="name">${ resultVo.wnpzNm }</div>
                <div class="job">${ resultVo.occp }</div>
                <div class="career">
                    <div class="tit">주요 연구 업적</div>
                    <ul>
                        <li>${ resultVo.rm }</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="list-body">
            <div class="title">수상자 및 연구업적 소개</div>
            <div class="desc">
            	${ resultVo.wnpzCn }
            </div>
        </div>
    </div>
</div>
<div class="modal-footer">
    <div class="board">
        <div class="navigation">
            <div class="content clearfix">
            	<c:if test="${ not empty prevVo }">
	                <a href="javascript:;" class="item prev btn-prev">
	                    <div class="title">${ prevVo['wnpzTmeCodeNm'.concat(lang)] }</div>
	                </a>
            	</c:if>
            	<c:if test="${ not empty nextVo }">
	                <a href="javascript:;" class="item next btn-next">
	                    <div class="title">${ nextVo['wnpzTmeCodeNm'.concat(lang)] }</div>
	                </a>
            	</c:if>
            </div>
        </div>
    </div>
</div>

<script>
	$(function() {
		$('#modalListOfWinners .btn-close').on('click', function() {
			window.history.replaceState({}, document.title, ' ');
		});

	    $('.btn-close').on('click',function (){
	    	modalListOfWinners.hide();
	    })

	});
</script>

<script>
	var $form = $('#listForm');
    var $modalContent = $('#modalListOfWinners .modal-content');

	$(function() {
		$('.btn-list').on('click', function(e) {
			$.ajax({
				dataType: 'html', type : 'post',
				url: '/${rc.locale.language}/company/winner/listAjaxHtml',
				data: $form.serialize(),
			}).done(function(html) {
				$modalContent.empty().html(html);
			    modalListOfWinners.show();
			});
	    });

		$('.btn-prev').on('click', function(e) {
			$.ajax({
				dataType: 'html', type : 'post',
				url: '/${rc.locale.language }/company/winner/viewAjaxHtml/${prevVo.wnpzSn}',
				data: $form.serialize(),
			}).done(function(html) {
				$modalContent.empty().html(html);
			    modalListOfWinners.show();
			});

		});

		$('.btn-next').on('click', function(e) {
			$.ajax({
				dataType: 'html', type : 'post',
				url: '/${rc.locale.language }/company/winner/viewAjaxHtml/${nextVo.wnpzSn}',
				data: $form.serialize(),
			}).done(function(html) {
				$modalContent.empty().html(html);
			    modalListOfWinners.show();
			});

	    });

	});

</script>
