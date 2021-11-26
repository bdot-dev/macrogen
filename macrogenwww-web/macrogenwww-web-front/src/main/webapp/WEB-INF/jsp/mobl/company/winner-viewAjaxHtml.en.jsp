<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<!-- 검색조건 저장용 -->
<form:form commandName="listVo" id="listForm" name="listForm">
	<form:hidden path="pageIndex" />
	<form:hidden path="wnpzClCode" />
</form:form>

<div class="modal-header">
    <h5 class="modal-title">Macrogen ${ wnpzClCodeVo['codeNm'.concat(lang)] }</h5>
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
                <div class="tit">Major Accomplishments in Research</div>
                <ul>
                    <li>${ resultVo.rm }</li>
                </ul>
            </div>
            <div class="title">Introduction of winner and research accomplishments</div>
            <div class="desc">
            	${ resultVo.wnpzCn }
            </div>
            <div class="list-footer">
                <div class="board">
                    <div class="navigation">
                        <div class="row g-0">
                            <div class="col">
				            	<c:if test="${ not empty prevVo }">
	                            	<i class="icon ico-left-black btn-prev"></i><span class="font-body-h-b btn-prev">Previous</span>
	                            </c:if>
                            </div>
                            <div class="col">
				            	<c:if test="${ not empty nextVo }">
	                            	<span class="font-body-h-b btn-next">Next</span><i class="icon ico-left-black btn-prev"></i>
	                            </c:if>
                            </div>
                        </div>
                    </div>
                    <a href="javascript:;" class="btn btn-black btn-list">List</a>
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
			$.ajax({
				dataType: 'html', type : 'post',
				url: '/${rc.locale.language }/company/winner/viewAjaxHtml/${prevVo.wnpzSn}',
				data: $form.serialize(),
			}).done(function(html) {
				$modalContent.empty().html(html);
				modal.show();
			});

		});

		$('.btn-next').on('click', function(e) {
			$.ajax({
				dataType: 'html', type : 'post',
				url: '/${rc.locale.language }/company/winner/viewAjaxHtml/${nextVo.wnpzSn}',
				data: $form.serialize(),
			}).done(function(html) {
				$modalContent.empty().html(html);
				modal.show();
			});

	    });

	});

</script>
