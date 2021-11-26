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
		        <li class="breadcrumb-item active">NEWS</li>
		    </ol>
		</nav>

        <div class="section_newsroom">
            <div class="font-h1">News</div>
            <div class="board">

				<c:if test="${fn:length(upendFixingList) > 0}">
	                <div class="slider">
	                    <div class="swiper-container text-slider _textSlider">
	                        <div class="swiper-wrapper">
	                        	<c:forEach var="result" items="${upendFixingList }" varStatus="status">
		                            <div class="swiper-slide">
		                            	<a href="javascript:linkView(${result.nttSn })">
			                                <div class="info">
			                                    <div class="tit">${result.nttSj }</div>
			                                    <div class="cont">${fn:substring(result.nttCnBrief, 0, 200) }</div>
			                                    <div class="date"><fmt:formatDate value="${result.registDt }" pattern="yyyy&#46;MM&#46;dd" /></div>
			                                </div>
		                                </a>
		                            </div>
	                        	</c:forEach>
	                        </div>
	                        <div class="pagination-wrap">
	                            <ul class="navigation">
	                                <li class="page-item prev">
	                                    <a class="page-link" href="#">
	                                        <span class="sr-only">이전</span>
	                                    </a>
	                                </li>
	                                <li class="page-item next">
	                                    <a class="page-link" href="#">
	                                        <span class="sr-only">다음</span>
	                                    </a>
	                                </li>
	                            </ul>
	                        </div>
	                    </div>
	                    <div class="swiper-container image-slider _imageSlider">
	                        <div class="swiper-wrapper">
	                        	<c:forEach var="result" items="${upendFixingList }" varStatus="status">
	                        		<c:choose>
	                        			<c:when test="${result.thumbBassImageUseYn eq 'Y' }">
	                        				<c:set var="imgUrl" value="${result.thumbBassImageCodeNm }" />
	                        			</c:when>
	                        			<c:otherwise>
	                        				<c:set var="imgUrl" value="${publicUrl }${result.thumbFlpth }" />
	                        			</c:otherwise>
	                        		</c:choose>
		                            <div class="swiper-slide">
		                            	<a href="javascript:linkView(${result.nttSn })">
		                            		<img src="${imgUrl }" alt="${result.nttSj }">
		                            	</a>
		                            </div>
		                        </c:forEach>
	                        </div>
	                        <!-- <div class="swiper-pagination"></div> -->
	                    </div>
	                    <script>
	                        var imageSwiper = new Swiper("._imageSlider", {
	                            /* pagination: {
	                                el: ".swiper-pagination",
	                                clickable : true,
	                            }, */
	                            navigation: {
	                                nextEl: '.page-item.next',
	                                prevEl: '.page-item.prev',
	                            },
	                        });

	                        var textSwiper = new Swiper("._textSlider", {
	                            navigation: {
	                                nextEl: '.page-item.next',
	                                prevEl: '.page-item.prev',
	                            },
	                        });
	                    </script>
	                </div>
                </c:if>

                <div class="search-wrap">
                    <div class="input-search">
	                    <form:input path="searchKeyword" maxlength="100"
	                    	class="form-control" placeholder="Enter a search term" aria-label="Enter a search term" aria-describedby="search2" />
						<input type="text" style="display: none;">
                        <button class="btn-search" type="button" id="search2"><span class="sr-only">검색</span></button>
                    </div>
                </div>

				<c:if test="${fn:length(resultList) > 0}">
	                <div class="thumbnail thumbnail-fluid"> <!-- 썸네일 높이 자유형식 -->
	                    <ul class="_thumbnailGrid">
		                    <c:forEach var="result" items="${resultList }" varStatus="status">
                        		<c:choose>
                        			<c:when test="${result.thumbBassImageUseYn eq 'Y' }">
                        				<c:set var="imgUrl" value="${result.thumbBassImageCodeNm }" />
                        			</c:when>
                        			<c:otherwise>
                        				<c:set var="imgUrl" value="${publicUrl }${result.thumbFlpth }" />
                        			</c:otherwise>
                        		</c:choose>
		                        <li class="item">
		                            <a href="javascript:linkView(${result.nttSn })">
		                                <span class="img"><img src="${imgUrl }" alt="${result.nttSj }"></span>
		                                <span class="tit">${result.nttSj }</span>
		                                <span class="cont">${fn:substring(result.nttCnBrief, 0, 200) }</span>
		                                <span class="date"><fmt:formatDate value="${result.registDt }" pattern="yyyy&#46;MM&#46;dd" /></span>
		                            </a>
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

	</form:form>

	<script>
	    // http://suprb.com/apps/gridalicious/
	    $(function () {
	        $('._thumbnailGrid').gridalicious({
	            selector: '.item',
	            width: 388
	        });
	    })
	</script>

	<script>
		var $form = $('#listForm');

		$(function() {
			$form.find('.btn-search').on('click', function(e){
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
			$form.attr('action', '/${rc.locale.language}/newsroom/news');
			$form.attr('method', 'get');
			$form.submit();
		}

		function linkView(nttSn) {
			$form.attr('action', '/${rc.locale.language }/newsroom/news/' + nttSn);
			$form.attr('method', 'get');
			$form.submit();
		}

	</script>

</body>
