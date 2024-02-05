<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

    <div class="full-bg business_bg bg-type4">
        <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

        <div class="frame frameB" >
            <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">Service</li>
        <li class="breadcrumb-item">Pet Healthcare</li>
    </ol>
</nav>

            <div class="hero-title">Pet DNA Test</div>
            <div class="slogan-sub">myPETGENE</div>
        </div>
    </div>

    <div class="container">
        <div class="section_business">
            <!--메인 컨텐츠-->
            <div class="subject-box">
                <p class="title font-h4">myPETGENE is a genetic testing service<br>
                    that helps keep your pets healthy and happy.
                </p>
                <p class="subject">MyPETGENE is a genetic testing service for companion animals that you can order, and then check the results at home. It is able to predict the genetic diseases of your companion animals at an early stage, so you can prevent diseases through customized care solutions such as improvement of eating habits and exercise. It is also possible to prevent loss and abandonment of companion animals by proving individual identification and blood ties with the corresponding DNA.</p>
                </p>
                <div class="img-wrap">
                    <div class="content">
                        <!--10.05 이미지 경로 변경-->
                        <div class="img">
                            <img src="/publishing/pc-en/dist/img/business/img_preventivecare.png" alt="유전질환 조기예측 및 예방관리">
                        </div>
                        <p class="desc">Early prediction<br>
                            prevention and control of<br>
                            genetic diseases</p>
                    </div>
                    <div class="content">
                        <!--10.05 이미지 경로 변경-->
                        <div class="img">
                            <img src="/publishing/pc-en/dist/img/business/img_breeding.png" alt="건강한 반려동물 번식">
                        </div>
                        <p class="desc">Breeding of healthy<br>
                            companion animals</p>
                    </div>
                    <div class="content">
                        <!--10.05 이미지 경로 변경-->
                        <div class="img">
                            <img src="/publishing/pc-en/dist/img/business/img_identification.png" alt="개체식별 통한 분실방지">
                        </div>
                        <p class="desc">Prevention of loss with the<br>
                            identification of an individual animal.</p>
                    </div>
                </div>
            </div>
            <div class="info-box-wrap">
                <!--마이펫진 검사-->
                <div class="info-box">
                    <p class="font-h4 main-title no-desc">myPETGENE</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img_workflow_level6_row.png" alt="마이펫진검사워크플로우">
                    </div>
                    <hr class="divider">
                    <div class="list-gallery">
                        <div class="list">
                            <p class="title font-h5">Disease Confirmation</p>
                            <div class="content">
                                <!--10.05 이미지 경로 변경-->
                                <div class="picture">
                                    <img src="/publishing/pc-en/dist/img/business/img_diseaseconfirmation.png" alt="질병확인서관련이미지">
                                </div>
                                <div class="cont">
                                    <p class="desc">myPETGENE genetic disease test is performed to diagnose or predict genetic disease in companion animals. If there is a family history of genetic disease or signs of symptoms, testing can help you in early diagnosis, prevention, treatment, and health management, even though there are no symptoms at the moment. The test is designed to extract the DNA of companion animals and analyzes whether there are genetic mutations or structural abnormalities related to specific diseases to confirm the possibility of genetic diseases. As genetic information composed of DNA, a gene has a special command system encoded to make proteins. However, when a gene is mutated due to various causes, the normal protein is not formed, which causes a disease. These mutations are either inherited from parents or acquired, and myPETGENE can obtain genetic disease information by identifying mutation factors inherited from parents.</p>
                                    <div class="btn-wrap">
                                        <a href="https://blog.naver.com/macrogen123" target="_blank" class="btn btn-sm btn-white"><span>View Detail</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5">DNA Certificate</p>
                            <div class="content">
                                <!--10.05 이미지 경로 변경-->
                                <div class="picture">
                                    <img src="/publishing/pc-en/dist/img/business/img_dnacertification.png" alt="염기서열이미지">
                                </div>
                                <div class="cont">
                                    <p class="desc">myPETGENE identifies the genotype through STR (Short Tandem Repeat) analysis, which shows a difference in the number of repetitions in the nucleotide sequence of a specific locus. DNA certificate, also known as DNA profiling, is a method of extracting DNA from a companion animal's sample to reveal their unique genetic pattern. It compares and analyzes the genetic locus of two samples to identify whether the DNA is from the same object, and the DNA is stored for future confirmation in case the animal ever goes missing. It is also used as a certificate to verify the genotype of companion animals in case of disputes of ownership for companion animals.</p>
                                   <div class="btn-wrap">
                                        <a href="https://blog.naver.com/macrogen123" target="_blank" class="btn btn-sm btn-white"><span>View Detail</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5">Paternity Confirmation </p>
                            <div class="content">
                                <!--10.05 이미지 경로 변경-->
                                <div class="picture">
                                    <img src="/publishing/pc-en/dist/img/business/img_kinship.png" alt="혈연확인서이미지">
                                </div>
                                <div class="cont">
                                    <p class="desc">myPETGENE paternity test is designed to compare and analyze the unique genotypes of companion animals' DNA to prove their blood relationship between parents and offspring.<br>
                                        Since DNA is genetic material, offspring inherit the same genotype from each parent and form a pair. The certificate proves the paternity in a scientific way by confirming that the genotypes match each other.</p>
                                   <div class="btn-wrap">
                                        <a href="https://blog.naver.com/macrogen123" target="_blank" class="btn btn-sm btn-white"><span>View Detail</span></a>
                                    </div> 
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5">Gender Confirmation</p>
                            <div class="content">
                                <!--10.05 이미지 경로 변경-->
                                <div class="picture">
                                    <img src="/publishing/pc-en/dist/img/business/img_genderconfirmation.png" alt="성별확인서이미지">
                                </div>
                                <div class="cont">
                                    <p class="desc">More than 50% of birds around the world are similar in appearance to males and females, so it is difficult to determine their gender by identification. Just as human chromosomes identify XX as female and XY as male, the sex chromosomes of birds consist of Z and W. A bird's sperm contains one Z chromosome, and the egg contains either Z or W, so the gender is determined by the egg. Females have ZW with heterozygous chromosomes, and males have ZZ with homozygous chromosomes. Therefore, it is possible to distinguish the gender by checking the sex chromosome differences between males and females through DNA analysis.</p>
                                    <div class="btn-wrap">
                                        <a href="https://blog.naver.com/macrogen123" target="_blank" class="btn btn-sm btn-white"><span>View Detail</span></a>
                                    </div> 
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <iframe width="1180" height="664" src="https://www.youtube.com/embed/kU6SGSdnqTI?rel=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        <div class="btn-area">
                            <a href="https://blog.naver.com/macrogen123" target="_blank" class="btn btn-white"><span>Service Inquiry</span></a>
                            <a href="https://blog.naver.com/macrogen123" target="_blank" class="btn btn-primary"><i class="icon icon-basket-white"></i><span>Order</span></a>
                        </div>
                    </div>
                </div>

            </div>


        </div>
    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->

</body>
