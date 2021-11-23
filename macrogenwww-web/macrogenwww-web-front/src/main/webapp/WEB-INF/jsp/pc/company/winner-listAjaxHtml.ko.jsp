<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>

<form:form commandName="listVo" id="listForm" name="listForm">
<form:hidden path="pageIndex" />
<form:hidden path="wnpzClCode" />

<div class="modal-header">
    <h5 class="modal-title">마크로젠 ${ wnpzClCodeVo['codeNm'.concat(lang)] }</h5>
    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
</div>
<div class="modal-body">
    <div class="list-of-winners">
        <div class="title">역대 수상자</div>
        <ul class="clearfix">
            <c:forEach var="result" items="${ resultList }" varStatus="status">
             <li>
                 <div class="img"><img src="${publicUrl }${ result.photoFlpth }" alt="${ result.wnpzNm }"></div>
                 <div class="name"><a href="javascript:linkView(${ result.wnpzSn })">${ result.wnpzNm }</a></div>
                 <div class="desc">${ result['wnpzTmeCodeNm'.concat(lang)] }</div>
             </li>
            </c:forEach>
        </ul>
    </div>
</div>
<div class="modal-footer">
	<c:if test="${fn:length(resultList) > 0}">
		<div class="pagination-wrap">
			<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="linkPage" />
		</div>
	</c:if>
</div>

</form:form>

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
	var $form = $("#listForm");
    var $modalContent = $('#modalListOfWinners .modal-content');

	function linkPage(pageNo) {
		$('#listForm #pageIndex').val(pageNo);
		$.ajax({
			dataType: 'html', type : 'post',
			url: '/${rc.locale.language}/company/winner/listAjaxHtml',
			data: $form.serialize(),
		}).done(function(html) {
			$modalContent.empty().html(html);
		    modalListOfWinners.show();
		});

	}

	function linkView(sn) {
		$.ajax({
			dataType: 'html', type : 'post',
			url: '/${rc.locale.language }/company/winner/viewAjaxHtml/' + sn,
			data: $form.serialize(),
		}).done(function(html) {
			$modalContent.empty().html(html);
		    modalListOfWinners.show();
		});
	}
</script>
