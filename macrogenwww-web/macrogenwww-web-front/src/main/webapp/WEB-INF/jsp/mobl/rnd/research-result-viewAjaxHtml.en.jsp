<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<div class="modal-header">
    <h5 class="modal-title">Research Achievements & Status</h5>
    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
</div>
<div class="modal-body">
    <div class="font-h7">
        <span class="sub_title">${resultVo['bbsCtgryNm'.concat(lang)] }</span>
        ${resultVo.nttSj }
    </div>
    <hr class="M-divider"/>
    <div class="desc">
        <span>
        ${resultVo.nttCn }
        </span>
    </div>

</div>
<div class="modal-footer">
    <div class="board">
        <div class="navigation">
            <div class="row g-0">
                <div class="col ${ empty prevVo ? 'disabled' : '' }">
                	<i class="icon ico-left-black btn-prev"></i><span class="font-body-h-b btn-prev">Previous</span>
                </div>
                <div class="col ${ empty nextVo ? 'disabled' : '' }">
                	<span class="font-body-h-b btn-next">Next</span><i class="icon ico-left-black btn-next"></i>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
	$(function() {
		$('#Institute_01 .btn-close').on('click', function() {
			window.history.replaceState({}, document.title, ' ');
		});

	    $('.btn-close').on('click',function (){
	    	modalResearchResult.hide();
	    })

	});
</script>

<script>
    var $modalContent = $('#Institute_01 .modal-content');
    var bbsCtgrySn = ${not empty resultVo.bbsCtgrySn ? resultVo.bbsCtgrySn : 'null'};

	$(function() {
    	<c:if test="${not empty prevVo }">
		$('.btn-prev').on('click', function(e) {
			$.ajax({
				dataType: 'html', type : 'post',
				url: '/${rc.locale.language }/rnd/research-result/viewAjaxHtml/${prevVo.nttSn}',
				data: { bbsCtgrySn: bbsCtgrySn },
			}).done(function(html) {
				$modalContent.empty().html(html);
				modalResearchResult.show();
			});

		});
		</c:if>

    	<c:if test="${not empty nextVo }">
		$('.btn-next').on('click', function(e) {
			$.ajax({
				dataType: 'html', type : 'post',
				url: '/${rc.locale.language }/rnd/research-result/viewAjaxHtml/${nextVo.nttSn}',
				data: { bbsCtgrySn: bbsCtgrySn },
			}).done(function(html) {
				$modalContent.empty().html(html);
				modalResearchResult.show();
			});

	    });
		</c:if>

	});

</script>
