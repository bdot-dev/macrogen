<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<div class="modal-header">
    <h5 class="modal-title">Research Achievements & Status</h5>
    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
</div>
<div class="modal-body">
    <div class="title">
        <span class="sub_title">${resultVo['bbsCtgryNm'.concat(lang)] }</span>
        ${resultVo.nttSj }
    </div>
    <hr class="divider"/>
    <div class="desc">
    	<span>
        ${resultVo.nttCn }
    	</span>
    </div>

</div>
<div class="modal-footer">
    <div class="board">
        <div class="navigation">
            <div class="content clearfix">
            	<c:if test="${not empty prevVo }">
	                <a href="javascript:;" class="item prev btn-prev">
	                    <div class="title">${prevVo.nttSj }</div>
	                </a>
            	</c:if>
            	<c:if test="${not empty nextVo }">
	                <a href="javascript:;" class="item next btn-next">
	                    <div class="title">${nextVo.nttSj }</div>
	                </a>
	            </c:if>
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
