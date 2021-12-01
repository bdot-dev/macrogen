<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg macrogen" style="background-image: url(/publishing/pc-ko/dist/img/@temp/macrogen/macrogen_bg_1.png);">
        <!--header 수정시 메인 header 같이 수정해주세요-->
		<header class="header" id="header">
			<c:import url="/inc/header-inner-gnb" />
		</header>

        <div class="frame">
            <div class="hero-title">연혁</div>
            <div class="slogan ko">유전체 분석 기술로<br>미래를 열어갑니다</div>
            <div class= "slogan-sub">마크로젠은 인류 건강의 새 역사를 만들고 있습니다</div>
            <nav aria-label="breadcrumb">
			    <ol class="breadcrumb breadcrumb-white">
			        <li class="breadcrumb-item">Home</li>
			        <li class="breadcrumb-item">MACROGEN</li>
			        <li class="breadcrumb-item">회사소개</li>
			        <li class="breadcrumb-item">연혁</li>
			    </ol>
			</nav>

            <div class="scroll-wrap">
			    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
			</div>

        </div>
    </div>

    <div class="container container-fluid">
    	<c:if test="${fn:length(resultList) gt 0 }">
	        <div class="macrogen macrogen-history">
	            <!-- s tab -->
	            <div class="slide-tab-wrap">
	                <div class="swiper-container tab-slide-box _swiperTab">
	                    <div class="swiper-wrapper _swiperTab">
	                    	<c:forEach var="result" items="${ resultList }" varStatus="status">
		                        <div class="swiper-slide ${ status.index eq 0 ? 'active' : '' }"><a
		                        	href="javascript:;" onclick="fnMove('group-${result.cmpnyhistGroupSn }')">${result.beginYear } &#45; ${result.endYear eq 'present' ? '현재' : result.endYear }</a></div>
		                    </c:forEach>
	                    </div>
	                </div>
	            </div>
	            <script>
	                $('._swiperTab .swiper-slide').on('click', function(){
	                    $(this).addClass('active').siblings().removeClass('active');
	                });
	            </script>
	            <!-- e tab -->

	            <div class="section-wrap">
	               	<c:forEach var="result" items="${ resultList }" varStatus="status">
			            <!-- s 글로벌 유전체 정보 구축 -->
			            <div class="section _historySection" id="group-${result.cmpnyhistGroupSn }" data-aos="fade-up" data-aos-duration="2000">
			                <div class="inner">
			                    <div class="year">${result.beginYear } &#45; ${result.endYear eq 'present' ? '현재' : result.endYear }</div>
			                    <div class="title">${result['groupnm'.concat(lang)] }</div>
			                </div>

			                <c:if test="${fn:length(result.cmpnyhistGroupPhotoList) gt 0 }">
				                <div class="history-slider ${fn:length(result.cmpnyhistGroupPhotoList)}" >
				                    <div class="swiper-container _historySlider${status.count }">
				                        <div class="swiper-wrapper">
				                        	<c:forEach var="photo" items="${result.cmpnyhistGroupPhotoList }" varStatus="photoStatus">
					                            <div class="swiper-slide">
					                                <img src="${publicUrl }${ photo.photoFlpth }" alt="${ photo['photoSj'.concat(lang)] }">
					                                <div class="inner">
					                                    <div class="year">${ photo.photoYear }</div>
					                                    <div class="desc">${ photo['photoSj'.concat(lang)] }</div>
					                                </div>
					                            </div>
					                        </c:forEach>

				                        </div>
				                    </div>
				                    <div class="inner">
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
				                        <div class="swiper-pagination"></div>
				                    </div>
				                    <script>
				                        var imageSwiper = new Swiper("._historySlider${status.count }", {
				                            pagination: {
				                                el: "._historySlider${status.count } + .inner .swiper-pagination",
				                                clickable : true,
				                            },
				                            navigation: {
				                                nextEl: '._historySlider${status.count } + .inner .page-item.next',
				                                prevEl: '._historySlider${status.count } + .inner .page-item.prev',
				                            },
				                            touchRatio: 0
				                        });
				                    </script>
				                </div>
			                </c:if>

			                <div class="inner">
			                	<c:if test="${fn:length(result.yearCmpnyhistList) gt 0 }">
				                    <div class="history-list">
				                        <div class="year-info" ${ status.index eq 0 ? 'id="informationYear"' : '' }>
				                            <ul>
				                            	<c:forEach var="yearCmpnyhist" items="${result.yearCmpnyhistList }" varStatus="yearCmpnyhistStatus">
				                                <li class="${ yearCmpnyhistStatus.index eq 0 ? 'active' : '' }"><span>${yearCmpnyhist.year }</span></li>
				                               	</c:forEach>
				                            </ul>
				                        </div>
				                        <div class="desc-info">
			                            	<c:forEach var="yearCmpnyhist" items="${result.yearCmpnyhistList}">
					                            <ul data-year="${yearCmpnyhist.year }">
					                            	<c:forEach var="cmpnyhist" items="${yearCmpnyhist.cmpnyhistList }">
						                                <li>
						                                    <span class="num">${cmpnyhist.mt }&#46;</span>
						                                    <span class="desc">${cmpnyhist.cn }</span>
						                                </li>
					                            	</c:forEach>
					                            </ul>
				                            </c:forEach>
				                        </div>
				                    </div>
			                	</c:if>
			                </div>
			            </div>
			            <!-- e 글로벌 유전체 정보 구축 -->
			        </c:forEach>
	            </div>

	        </div>
    	</c:if>
    </div>
    <!--footer 수정사항 있을시 메인 footer 별도 확인-->

<script>

    /**
     * swiper
     */
    new Swiper('.snbSwiper', {
        slidesPerView: 'auto',
        preventClicks: true,
        preventClicksPropagation: false,
        observer: true,
        observeParents: true,
        navigation: {
            nextEl: "._slideRight",
            prevEl: "._slideLeft",
        }
    });

    var $snbSwiperItem = $('.snbSwiper .swiper-wrapper .swiper-slide a');
    $snbSwiperItem.click(function () {
        var target = $(this).parent();
        $snbSwiperItem.parent().removeClass('on')
        target.addClass('on');
        muCenter(target);
    })

    function muCenter(target) {
        var snbwrap = $('.snbSwiper .swiper-wrapper');
        var targetPos = target.position();
        var box = $('.snbSwiper');
        var boxHarf = box.width() / 2;
        var pos;
        var listWidth = 0;

        snbwrap.find('.swiper-slide').each(function () {
            listWidth += $(this).outerWidth();
        })

        var selectTargetPos = targetPos.left + target.outerWidth() / 2;
        if (selectTargetPos <= boxHarf) { // left
            pos = 0;
        } else if ((listWidth - selectTargetPos) <= boxHarf) { //right
            pos = listWidth - box.width();
        } else {
            pos = selectTargetPos - boxHarf;
        }

        setTimeout(function () {
            snbwrap.css({
                "transform": "translate3d(" + (pos * -1) + "px, 0, 0)",
                "transition-duration": "500ms"
            })
        }, 200);
    }

    var slide = $('._swiperTab').find('.swiper-slide')

    $(".section-wrap .swiper-container").each(function(index){
        var $this = $(this);
        $this.addClass('slider-' + index);

        new Swiper('.slider-' + index, {
            observer: true,
            observeParents: true,
            navigation: {
                nextEl: $('.slider-' + index).siblings().find('.next'),
                prevEl: $('.slider-' + index).siblings().find('.prev'),
            },
            pagination: {
                el : $('.slider-' + index).siblings().find('.swiper-pagination'),
                clickable : true
            }
        });
    });

    /**
     * tab
     */
    function setTabContent (idx){
        var slide =  $('._swiperTab').find('.swiper-slide');
        var section =  $(".section-wrap").find('.section');

        slide.eq(idx).addClass('active').siblings().removeClass('active');
        section.addClass('show').siblings().removeClass('show');
        section.eq(idx).addClass('show').siblings().removeClass('show');
    }

    slide.on('click', function(){
        var idx = $(this).index();
        setTabContent(idx)
    });

    /**
     * fnSelectBox
     * @param selectBox
     */
    function fnSelectBox (selectBox){
        selectBox.on('click', function () {
            let select = $(this);
            if (select.hasClass('open')) {
                select.removeClass("open").children('.select-option').slideUp(200).removeClass("open");
            } else {
                select.addClass("open").children('.select-option').slideDown(200).addClass("open");
            }
        });
    }

    /**
     * fnOptionBox
     * @param section
     * @param option
     * @param selectBox
     */
    function fnOptionBox (section, option ,selectBox){
        option.on('click', function () {
            let select = $(this).find('a').text();
            let thisOption = $(this);
            let thisIndex = thisOption.index();
            selectBox.find('._selectedValue').find('span').text(select);
            section.find('.history-list').eq(thisIndex).addClass('active').siblings().removeClass('active');
            fnListMove(section, thisIndex);
        });
    }

    /**
     * fnListMove
     * @param section
     * @param index
     */
    function fnListMove(section, index){
        let listOffset = section.find('.history-list').eq(index).offset();
        $('html, body').animate({scrollTop : listOffset.top - 60}, 100);
    }

    /**
     * selectInit
     * @param section
     */
    function selectInit (section) {
        $('._section').each(function (){
            let target = $(this);
            let selectBox = target.find(".select-box");
            let option = target.find(".option-value");
            fnSelectBox(selectBox);
            fnOptionBox(target, option, selectBox);
        })
    }

    /**
     * fnBodyEvent
     */
    function fnBodyEvent(){
        $('body').on('click', function (e) {
            var $select = $(".select-box");
            if ($select.hasClass('open')) {
                if (!$select.has(e.target).length) {
                    $select.removeClass("open").next('.select-option').slideUp(200).removeClass("open");
                }
            }
            e.preventDefault()
        })
    }

    /**
     * fnMousewheel
     */
    function fnMousewheel(){
        var lastScroll = 0;

        $(window).on('scroll',function(){
            let listPos = $('._listWrap').offset().top;
            let selectBox = $('.section.show .select-box');
            let offset = $(this).scrollTop();

            $('.section.show .history-list').each(function(idx) {
                if(offset > $('.section.show .history-list').eq(idx).offset().top - 62) {
                    $('.section.show .history-list').removeClass('active');
                    $(this).addClass('active');
                    selectBox.children('._selectedValue').text($(this).children('.year').text())
                }
            });

            if (offset > lastScroll){
                // console.log('down')
                if (offset > listPos) {
                    selectBox.show().css({'position': 'fixed','top':'0'});
                }
                else {
                    selectBox.hide();
                }
            }
            else {
                // console.log('up')
                if (offset > listPos) {
                    selectBox.show().css({'position': 'fixed','top':'70px'});
                }
                else {
                    selectBox.hide();
                }
            }
            lastScroll = offset;
        });
    }

    /**
     * 함수 실행
     */
    selectInit();
    fnBodyEvent();
    fnMousewheel();

</script>


</body>