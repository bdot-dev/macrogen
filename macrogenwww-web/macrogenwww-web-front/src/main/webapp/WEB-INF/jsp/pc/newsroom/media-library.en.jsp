<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

	<form:form commandName="listVo" id="listForm" name="listForm">
	<form:hidden path="pageIndex" />

    <div class="container">
        <nav aria-label="breadcrumb">
		    <ol class="breadcrumb">
		        <li class="breadcrumb-item">Home</li>
		        <li class="breadcrumb-item">Newsroom</li>
		        <li class="breadcrumb-item active">Media library</li>
		    </ol>
		</nav>

        <div class="section_newsroom">
            <div class="font-h1">Media library</div>
            <div class="board">
                <div class="search-wrap">
                    <div class="input-search">
	                    <form:input path="searchKeyword" maxlength="100"
	                    	class="form-control" placeholder="Enter a search term" aria-label="Enter a search term" aria-describedby="search2" />
	                    <input type="text" style="display: none;">
                        <button class="btn-search" type="button" id="search2"><span class="sr-only">검색</span></button>
                    </div>
                </div>
                <div class="tab-content">
					<c:if test="${fn:length(resultList) > 0}">
	                    <div class="thumbnail thumbnail-only-title">
	                        <ul class="clearfix">
			                    <c:forEach var="result" items="${resultList }" varStatus="status">
			                    	<li class="item">
		                                <span class="img img-wrap">
		                                    <a href="#sn=${result.nttSn }"><img src="${publicUrl }${result.thumbFlpth }" alt=""></a>
		                                    <!-- 이미지 , 다운로드 버튼 있는경우 -->
		                                    <span class="btn-box clearfix">
		                                    	<c:if test="${fn:length(result.imageList) gt 1 }">
			                                        <a href="#sn=${result.nttSn }" class="img-list"><i class="icon icon-list_box"></i><span class="num">${fn:length(result.imageList) }</span></a>
		                                    	</c:if>
		                                    	<c:if test="${fn:length(result.atchList) gt 0 }">
			                                        <a href="#sn=${result.nttSn }" class="download"><i class="icon icon-download-white"></i></a>
			                                    </c:if>
		                                    </span>
		                                </span>
		                                <div class="text-wrap">
		                                    <a href="#sn=${result.nttSn }">
		                                        <span class="tit">${result.nttSumry }</span>
		                                        <span class="date"><fmt:formatDate value="${result.registDt }" pattern="yyyy&#46;MM&#46;dd" /></span>
		                                    </a>
		                                </div>
		                            </li>
				                </c:forEach>
	                        </ul>
	                    </div>

		                <hr class="divider"/>
					</c:if>

					<c:if test="${fn:length(resultList) <= 0}">
		                <div class="no-data">
		                    <p>No article</p>
		                </div>
		            </c:if>

					<c:if test="${fn:length(resultList) > 0}">
				        <div class="pagination-wrap">
							<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="linkPage" />
						</div>
					</c:if>

                </div>
            </div>
        </div>
    </div>

	</form:form>

	<script src="/js/util/Hash.js"></script>
	<script>
		var $form = $("#listForm");

		$(function() {
			$form.find(".btn-search").on('click', function(e){
				linkPage(1);
				return false;
		    });

			$('#searchKeyword').on('keyup', function(key) {
				if (key.keyCode == 13) {
					linkPage(1)
					return false;
				}
			});

		});

	    function linkPage(pageNo) {
			$form.find('#pageIndex').val(pageNo);
			$form.attr('action', '/${rc.locale.language}/newsroom/media-library');
			$form.attr('method', 'get');
			$form.submit();
	    }

		function linkView(nttSn) {
			$form.attr('action', '/${rc.locale.language }/newsroom/media-library/' + nttSn);
			$form.attr('method', 'get');
			$form.submit();
		}

    	$(function() {
    		$(window).on('hashchange', function() {
    			console.log(location.hash);
    		    var sn = Hash.getParam('sn');
    		    console.log('sn:', sn);

    		    if (!sn) return;

    		    var $modalContent = $('#modalMediaLibrary .modal-content');
       			$.ajax({
       				dataType: 'html', type : 'post',
       				url: '/${rc.locale.language}/newsroom/media-library/viewAjaxHtml/' + sn,
       				data: { },
       			}).done(function(html) {
   				 	modalMediaLibrary.show();
       				$modalContent.empty().html(html);
       			});

    		});

    		$(window).trigger('hashchange');
    	});

	</script>

</body>
