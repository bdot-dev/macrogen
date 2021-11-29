<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="full-bg" style="background-image: url(/publishing/mobile-ko/dist/img/macrogen/macrogen-history-bg.png);">
        <header class="header header-white">
    <div class="inner">
        <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
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
                $('.header').show().css({'position': 'absolute','top':'0'}).addClass('header-white');
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
            <div class="font-h4">연혁</div>
            <div class="font-slogan">유전체 분석 기술로<br>미래를 열어갑니다</div>
            <div class="font-h7-r">마크로젠은 인류 건강의 새 역사를 <br/>만들고 있습니다</div>
            <div class="scroll-wrap">
    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
</div>

        </div>
    </div>
    <div class="container">
        <div class="macrogen macrogen-history">
            <!-- s tab -->
            <div class="swiper-container snbSwiper slide-tab-wrap _swiperTab" >
                <div class="swiper-wrapper">
                   	<c:forEach var="result" items="${ resultList }" varStatus="status">
	                    <div class="swiper-slide ${ status.index eq 0 ? 'on' : '' }"><a
	                    	href="javascript:;"><span class="text">${result.beginYear } - ${result.endYear eq 'present' ? '현재' : result.endYear }</span></a></div>
	                </c:forEach>
                </div>
                <a href="javascript:;" class="btn-navi btn-navi-prev _slideLeft"></a>
                <a href="javascript:;" class="btn-navi btn-navi-next _slideRight"></a>
            </div>
            <!-- e tab-->
            <div class="section-wrap">


               	<c:forEach var="result" items="${ resultList }" varStatus="status">
	               	<c:if test="${fn:length(result.yearCmpnyhistList) gt 0 }">
		                <div class="section ${ status.index eq 0 ? 'show' : '' } _section">
		                    <div class="select-box">
		                        <div class="selected-value _selectedValue">
		                            <span class="text">${result.yearCmpnyhistList[0].year }</span>
		                        </div>
		                        <ul class="select-option">
	                            	<c:forEach var="yearCmpnyhist" items="${result.yearCmpnyhistList }" varStatus="yearCmpnyhistStatus">
		                            	<li class="option-value"><a href="javascript:;">${yearCmpnyhist.year }</a></li>
		                            </c:forEach>
		                        </ul>
		                    </div>
		                    <div class="history-heading" data-aos="fade-up" data-aos-duration="2000">
		                        <div class="year">${result.beginYear } - ${result.endYear eq 'present' ? '현재' : result.endYear }</div>
		                        <div class="title">${result['groupnm'.concat(lang)] }</div>
		                    </div>

			                <c:if test="${fn:length(result.cmpnyhistGroupPhotoList) gt 0 }">
			                    <div class="history-slider" data-aos="fade-up" data-aos-duration="2000">
			                        <div class="swiper-container _Slider">
			                            <div class="swiper-wrapper">

				                        	<c:forEach var="photo" items="${result.cmpnyhistGroupPhotoList }" varStatus="photoStatus">
				                                <div class="swiper-slide">
				                                    <div class="img">
						                                <img src="${publicUrl }${ photo.photoMoblFlpth }" alt="${ photo['photoSj'.concat(lang)] }">
				                                        <div class="year">${ photo.photoYear }</div>
				                                    </div>
				                                    <div class="desc">${ photo['photoSj'.concat(lang)] }</div>
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
			                    </div>
			                </c:if>

		                    <div class="history-list-wrap _listWrap" data-aos="fade-up" data-aos-duration="2000">

			                	<c:if test="${fn:length(result.yearCmpnyhistList) gt 0 }">
	                            	<c:forEach var="yearCmpnyhist" items="${ result.yearCmpnyhistList }" varStatus="yearCmpnyhistStatus">
				                        <div class="history-list">
				                            <div class="year">${ yearCmpnyhist.year }</div>
				                            <div class="desc-info">
				                                <ul>
					                            	<c:forEach var="cmpnyhist" items="${yearCmpnyhist.cmpnyhistList }">
					                                    <li>
					                                        <span class="num">${cmpnyhist.mt }.</span>
					                                        <span class="desc">${cmpnyhist.cn }</span>
					                                    </li>
					                            	</c:forEach>
				                                </ul>
				                            </div>
				                        </div>
				                    </c:forEach>
				                </c:if>

		                    </div>
		                </div>
					</c:if>
				</c:forEach>

            </div>
        </div>
    </div>

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
	            section.find('.history-list').eq(thisIndex).addClass('active').siblings().removeClass('active')
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
		        let listPos = $('.section.show ._listWrap').offset().top;
		        let selectBox = $('.section.show .select-box');
		        let offset = $(this).scrollTop();
		        // console.log(offset);

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
		                selectBox.show().css({'position': 'fixed','top': '0'});


		            }
		            else {
		                selectBox.hide();
		            }
		        }
		        else {
		            // console.log('up')
		            if (offset > listPos) {
		                selectBox.show().css({'position': 'fixed','top': '70px'});
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

	<%-- 개발스크립트 --%>
	<script>
	</script>

</body>