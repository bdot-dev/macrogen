<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="top-bg" style="background-image: url(/publishing/mobile-en/dist/img/business/bg_banner_pet.png);">
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
            <div class="font-h1">Pet DNA Test</div>
            <div class="font-body-h">myPETGENE</div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <!--메인 컨텐츠-->
            <div class="subject-box">
                <p class="title font-h4">myPETGENE is a genetic testing service
                    that helps keep your pets healthy and happy.
                </p>
                <p class="subject font-body-h">genetic diseases of your companion animals at an early stage, so you can prevent diseases through customized care solutions such as improvement of eating habits and exercise. It is also possible to prevent loss and abandonment of companion animals by proving individual identification and blood ties with the corresponding DNA.</p>
                <div class="img-wrap">
                    <div class="content">
                        <!--10.05 이미지 경로 변경-->
                        <div class="img">
                            <img src="/publishing/mobile-en/dist/img/business/img_preventivecare.png" alt="유전질환 조기예측 및 예방관리">
                        </div>
                        <p class="desc font-body-h">Early prediction<br>
                            prevention and control of<br>
                            genetic diseases</p>
                    </div>
                    <div class="content">
                        <!--10.05 이미지 경로 변경-->
                        <div class="img">
                            <img src="/publishing/mobile-en/dist/img/business/img_breeding.png" alt="건강한 반려동물 번식">
                        </div>
                        <p class="desc font-body-h">Breeding of healthy<br>
                            companion animals</p>
                    </div>
                    <div class="content">
                        <!--10.05 이미지 경로 변경-->
                        <div class="img">
                            <img src="/publishing/mobile-en/dist/img/business/img_identification.png" alt="개체식별 통한 분실방지">
                        </div>
                        <p class="desc font-body-h">Prevention of loss with the
                            identification of an individual animal.</p>
                    </div>
                </div>
            </div>
            <div class="info-box-wrap">
                <!--마이펫진 검사-->
                <div class="info-box show">
                    <div class="content-anchor">
                        <div class="selected-value _anchor-value">
                            <span class="text">Disease Confirmation</span>
                        </div>
                        <ul class="anchor-option">
                            <li class="anchor-value" onclick="TitleMove('Degree')"><a href="#">Disease Confirmation</a></li>
                            <li class="anchor-value" onclick="TitleMove('Dna')"><a href="#">DNA Certificate</a></li>
                            <li class="anchor-value" onclick="TitleMove('Blood')"><a href="#">Paternity Confirmation</a></li>
                            <li class="anchor-value" onclick="TitleMove('Gender')"><a href="#">Gender Confirmation</a></li>
                        </ul>
                    </div>
                    <script>
                        /*변수*/
                        var contentAnchor = $(".content-anchor");
                        var anchorOption= $(".anchor-value");
                        var anchor = $( "._anchor" );
                        var offset = anchor.offset();


                        /*특정위치 show & hide*/
                        function fnMousewheel(){
                            var lastScroll = 0;

                            $(window).on('scroll',function(e){
                                let listPos = $('.info-box').offset().top;
                                let offset = $(this).scrollTop();

                                if (offset > lastScroll){
                                    // console.log('down')
                                    if (offset > listPos) {
                                        contentAnchor.show().css({'position': 'fixed','top':'0px'});
                                    }
                                    else {
                                        contentAnchor.hide();
                                    }
                                }
                                else {
                                    // console.log('up')
                                    if (offset > listPos) {
                                        contentAnchor.show().css({'position': 'fixed','top':'70px'});
                                    }
                                    else {
                                        contentAnchor.hide();
                                    }
                                }
                                lastScroll = offset;
                            });
                        }

                        /*드롭다운 클릭시 이벤트*/
                        contentAnchor.on('click',function() {
                            var select = $(this);
                            if(select.hasClass('open')) {
                                select.removeClass("open").children('.anchor-option').slideUp(200).removeClass("open");
                            }
                            else {
                                select.addClass("open").children('.anchor-option').slideDown(200).addClass("open");
                                $('body').on('click',function (e){
                                    if(contentAnchor.hasClass('open')) {
                                        if(!contentAnchor.has(e.target).length) {
                                            contentAnchor.removeClass("open").next('._dropdown').slideUp(200).removeClass("open");
                                        }
                                    }

                                })
                            }
                        });


                        /*클릭시 페이지 이동 이동*/
                        function TitleMove(target){
                            var id = $('#'+ target);
                            var offset = id.offset();
                            $('html, body').animate({scrollTop : offset.top - 75}, 300);
                        }
                        /*클릭시 텍스트 변경*/
                        anchorOption.on('click',function() {
                            var select = $(this).find('a').text();
                            $('._anchor-value').find('span').text(select);
                        });
                        fnMousewheel();

                    </script>
                    <p class="font-h4 main-title">myPETGENE</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-en/dist/img/business/img_workflow_level6_row.png" alt="마이펫진검사워크플로우">
                    </div>
                    <hr class="divider">
                    <div class="list-gallery">
                        <div class="list">
                            <p class="title font-h5" id="Degree">Disease Confirmation</p>
                            <div class="content">
                                <!--10.05 이미지 경로 변경-->
                                <div class="img">
                                    <img src="/publishing/mobile-en/dist/img/business/img_diseaseconfirmation.png" alt="질병확인서관련이미지">
                                </div>
                                <div class="cont">
                                    <p class="desc font-body">myPETGENE genetic disease test is performed to diagnose or predict genetic disease in companion animals. If there is a family history of genetic disease or signs of symptoms, testing can help you in early diagnosis, prevention, treatment, and health management, even though there are no symptoms at the moment. The test is designed to extract the DNA of companion animals and analyzes whether there are genetic mutations or structural abnormalities related to specific diseases to confirm the possibility of genetic diseases. As genetic information composed of DNA, a gene has a special command system encoded to make proteins. However, when a gene is mutated due to various causes, the normal protein is not formed, which causes a disease. These mutations are either inherited from parents or acquired, and myPETGENE can obtain genetic disease information by identifying mutation factors inherited from parents.</p>
                                    <div class="btn-wrap">
                                        <a href="https://www.mypetgene.com/sub/sub02_010101.php" target="_blank" class="btn btn-sm btn-light"><span>View Detail</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5" id="Dna">DNA Certificate</p>
                            <div class="content">
                                <!--10.05 이미지 경로 변경-->
                                <div class="img">
                                    <img src="/publishing/mobile-en/dist/img/business/img_dnacertification.png" alt="염기서열이미지">
                                </div>
                                <div class="cont">
                                    <p class="desc font-body">myPETGENE identifies the genotype through STR (Short Tandem Repeat) analysis, which shows a difference in the number of repetitions in the nucleotide sequence of a specific locus. DNA certificate, also known as DNA profiling, is a method of extracting DNA from a companion animal's sample to reveal their unique genetic pattern. It compares and analyzes the genetic locus of two samples to identify whether the DNA is from the same object, and the DNA is stored for future confirmation in case the animal ever goes missing. It is also used as a certificate to verify the genotype of companion animals in case of disputes of ownership for companion animals.</p>
                                    <div class="btn-wrap">
                                        <a href="https://www.mypetgene.com/sub/sub02_02.php" target="_blank" class="btn btn-sm btn-light"><span>View Detail</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5" id="Blood">Paternity Confirmation</p>
                            <div class="content">
                                <!--10.05 이미지 경로 변경-->
                                <div class="img">
                                    <img src="/publishing/mobile-en/dist/img/business/img_kinship.png" alt="혈연확인서이미지">
                                </div>
                                <div class="cont">
                                    <p class="desc font-body">myPETGENE paternity test is designed to compare and analyze the unique genotypes of companion animals' DNA to prove their blood relationship between parents and offspring.
                                        Since DNA is genetic material, offspring inherit the same genotype from each parent and form a pair. The certificate proves the paternity in a scientific way by confirming that the genotypes match each other.</p>
                                    <div class="btn-wrap">
                                        <a href="https://www.mypetgene.com/sub/sub02_03.php" target="_blank" class="btn btn-sm btn-light"><span>View Detail</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5" id="Gender">Gender Confirmation</p>
                            <div class="content">
                                <!--10.05 이미지 경로 변경-->
                                <div class="img">
                                    <img src="/publishing/mobile-en/dist/img/business/img_genderconfirmation.png" alt="성별확인서이미지">
                                </div>
                                <div class="cont">
                                    <p class="desc font-body">More than 50% of birds around the world are similar in appearance to males and females, so it is difficult to determine their gender by identification. Just as human chromosomes identify XX as female and XY as male, the sex chromosomes of birds consist of Z and W. A bird's sperm contains one Z chromosome, and the egg contains either Z or W, so the gender is determined by the egg. Females have ZW with heterozygous chromosomes, and males have ZZ with homozygous chromosomes. Therefore, it is possible to distinguish the gender by checking the sex chromosome differences between males and females through DNA analysis.</p>
                                    <div class="btn-wrap">
                                        <a href="https://www.mypetgene.com/sub/sub02_04.php" target="_blank" class="btn btn-sm btn-light"><span>View Detail</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="youtube-container">
                            <iframe width="100%" src="https://www.youtube.com/embed/kU6SGSdnqTI?rel=0"
                                    title="YouTube video player" frameborder="0"
                                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                    allowfullscreen></iframe>
                        </div>
                        <div class="btn-area">
                            <a href="https://www.mypetgene.com/sub/sub01_01.php" target="_blank" class="btn btn-light"><span>Service Inquiry</span></a>
                            <a href="https://www.mypetgene.com/sub/sub03_01.php" target="_blank" class="btn btn-primary"><i class="icon ico-cart-white"></i><span>Order</span></a>
                        </div>
                    </div>
                </div>

            </div>


        </div>
    </div>

</body>
