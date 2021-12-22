<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

    <div class="full-bg business_bg bg-type3">
        <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

        <div class="frame frameB">
            <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">Business</li>
        <li class="breadcrumb-item">Healthcare</li>
        <li class="breadcrumb-item">Personal Genome Analysis</li>
    </ol>
</nav>

            <div class="hero-title">Personal Genome Analysis</div>
            <div class="slogan-sub">My Genome Story</div>
        </div>
    </div>

    <div class="container">
        <div class="section_business">
            <!--메인 컨텐츠-->
            <div class="subject-box">
                <p class="title font-h4">My Genomestory is a personalized health care solution that<r> helps people manage their health according to their<br> unique genetic characteristics.
                </p>
                <p class="subject">In addition to predicting the risk of disease, My Genomestory helps anyone to enjoy healthier living by understanding their unique characteristics based on their genetic data and improving their overall lifestyle.</p>
                <!--10.05 이미지 경로 변경-->
                <div class="img">
                    <img src="/publishing/pc-en/dist/img/business/img_health_intro.png" alt="마이지놈스토리인트로">
                </div>

                <!--09.29 header 링크 이슈로 인한 스크립트 추가-->
                <script>
                    function fnMove(seq){
                        var offset = $("#anchor" + seq).offset();
                        $('html, body').animate({scrollTop : offset.top - 95}, 400);
                    }
                </script>

                <!--09.29 header 링크 이슈로 인한 onlink 추가-->
                <div class="btn-wrap">
                    <a onclick="fnMove(1)" class="btn btn-white btn-round btn-round-big"><span>Disease Prediction & Wellness Genetic Test</span><i class="icon icon-arrow-bottom-short"></i></a>
                    <a onclick="fnMove(2)" class="btn btn-white btn-round btn-round-big"><span>Health & Beauty Genetic Testing</span><i class="icon icon-arrow-bottom-short"></i></a>
                    <a onclick="fnMove(3)" class="btn btn-white btn-round btn-round-big"><span>Drug Response Genetic Test</span><i class="icon icon-arrow-bottom-short"></i></a>
                </div>

            </div>
            <div class="info-box-wrap">
                <!--질병예측 & 웰니스 유전자검사-->
                <!--09.29 header 링크 이슈로 인한 id 변경 추가-->
                <div class="info-box subject-box" id="anchor1">
                    <p class="font-h4 main-title">Disease Prediction & Wellness Genetic Test</p>
                    <p class="subject">My Genomestory Blue (Disease Prediction), Green (Wellness), and Gold (Total Care), not only predict disease, but also provide a variety of test items required to maintain health and establish a balanced lifestyle based on nutrition and diet for various benefits, including improved skin and hair.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img_disease.png" alt="질병예측 & 웰니스 유전자검사">
                    </div>
                    <hr class="divider">
                    <div class="list-gallery">
                        <div class="list">
                            <p class="title font-h5">My Genomestory Blue (Disease Prediction)</p>
                            <div class="content">
                                <!--10.05 이미지 경로 변경-->
                                <div class="picture">
                                    <img src="/publishing/pc-en/dist/img/business/img_mygenomeblue.png" alt="마이지놈스토리블루">
                                </div>
                                <div class="cont">
                                    <p class="desc">As a predictive genetic testing service for diseases including major cancers and common diseases, this provides advance knowledge on genetic risks of disease to help relieve the anxiety over any disease and maintain a healthy lifestyle.</p>
                                    <div class="list-area">
                                        <ul class="list-circle-dot">
                                            <li>Cancers (13 major cancers including lung cancer, stomach cancer, and colorectal cancer)</li>
                                            <li>Common diseases (23 major common diseases including hypertension, stroke, and type 2 diabetes)</li>
                                        </ul>
                                    </div>
                                    <div class="btn-wrap">
                                        <a href="https://www.my-genomestory.com/service_detail?service_code=blue&selectLang=ko" target="_blank" class="btn btn-sm btn-white"><span>View Detail</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5">My Genomestory Green (Wellness)</p>
                            <div class="content">
                                <!--10.05 이미지 경로 변경-->
                                <div class="picture">
                                    <img src="/publishing/pc-en/dist/img/business/img_mygenomegreen.png" alt="마이지놈스토리그린">
                                </div>
                                <div class="cont">
                                    <p class="desc">My Genomestory Green provides genetic information for diet and nutrition in order for healthy diet and effective weight management based on the individual’s genetic information. The most effective way to prevent disease is a healthy lifestyle.</p>
                                    <div class="list-area">
                                        <ul class="list-circle-dot">
                                            <li>Diet (17 items including obesity potential, appetite, and weight loss response  to exercise)</li>
                                            <li>Nutrition (16 items including vitamins, calcium, and omega-3)</li>
                                        </ul>
                                    </div>
                                    <div class="btn-wrap">
                                        <a href="https://www.my-genomestory.com/service_detail?service_code=green&selectLang=ko" target="_blank" class="btn btn-sm btn-white"><span>View Detail</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5">My Genomestory Gold (Total Care)</p>
                            <div class="content">
                                <!--10.05 이미지 경로 변경-->
                                <div class="picture">
                                    <img src="/publishing/pc-en/dist/img/business/img_mygenomegold.png" alt="마이지놈스토리골드">
                                </div>
                                <div class="cont">
                                    <p class="desc">This is our comprehensive genetic testing service that enables inclusion of major optional items required to build a healthy life including diseases (Blue) and wellness (Green).</p>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5">GenTok (Disease Prediction)</p>
                            <div class="content">
                                <!--10.05 이미지 경로 변경-->
                                <div class="picture">
                                    <img src="/publishing/pc-en/dist/img/business/img_mygenomegentok.png" alt="젠톡">
                                </div>
                                <div class="cont">
                                    <p class="desc">As the first genetic test service that combines a health survey and EMR data, the “GenTok” mobile app allows clients to check their test results and receive health information on a regular basis. When it comes to the Master test, it provides superior predictive test results by analyzing pathogenic mutations, which are strong genetic mutations related to diseases.</p>
                                    <div class="list-area">
                                        <ul class="list-circle-dot">
                                            <li>Standard (12 types of cancers for men, 14 types of cancer for women, 6 types of cardiovascular disease)</li>
                                            <li>Grand (17 (19) types of cancer and disease, 6 types of cardiovascular disease)</li>
                                            <li>Master (17 (19) types of cancer and disease, 6 types of cardiovascular disease)</li>
                                        </ul>
                                    </div>
                                    <div class="btn-wrap">
                                        <a href="mailto:gentok@macrogen.com"  class="btn btn-sm btn-white"><span>Service Inquiry</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--헬스&뷰티 유전자 검사-->
                <div class="info-box subject-box">
                    <p class="font-h4 main-title" id="anchor2">Health & Beauty Genetic Testing</p>
                    <p class="subject">“My Genomestory The Plus” is a DTC (Direct-To-Customer) genetic testing service that allows clients to check their genetic characteristics or health-related wellness categories without visiting a medical institute. These categories consist of nutrients, exercise, skin/hair, diet, personal characteristics (e.g., alcohol flush reaction, nicotine dependence), and health care (e.g., obesity, blood sugar, blood pressure). Our solution analyzes genetic characteristics, based on which we provide a personalized lifestyle guide, not only helping people to lead healthier and more beautiful lives but also providing opportunity to find their true selves.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img_healthbeauthintro.png" alt="헬스&뷰티 유전자 검사">
                    </div>
                    <hr class="divider">
                    <div class="list-gallery">
                        <div class="list">
                            <p class="title font-h5">My Genomestory The Plus All-in-One 69 (73 subcategories)</p>
                            <div class="content">
                                <!--10.05 이미지 경로 변경-->
                                <div class="picture">
                                    <img src="/publishing/pc-en/dist/img/business/img_allinone69.png" alt="마이지놈스토리더플러스올인원69">
                                </div>

                                <div class="cont">
                                    <p class="desc">In addition to personal health and beauty management solutions, Macrogen helps you to get to know yourself by analyzing the genetic characteristics you want to know. The All-in-One solution covers the most areas in Korea and is a premium service that offers total health care. The number of categories will be continuously updated, and we are the first certification body to be expanding DTC categories. </p>
                                    <p class="caption">※ The service is not available to persons under 19 years of age. </p>
                                    <div class="list-area">
                                        <ul class="list-circle-dot">
                                            <li>Nutrients: 20 subcategories including vitamin C concentration, vitamin D concentration, coenzyme Q10, and magnesium &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;concentration</li>
                                            <li>Exercise: 8 subcategories including fitness for strength exercise, fitness for endurance exercise, and recovery after exercise.</li>
                                            <li>Skin/Hair: 13 subcategories including pigmentation, aging skin, and male pattern hair loss</li>
                                            <li>Diet: 5 subcategories including appetite, satiety, and sensitivity to bitter taste</li>
                                            <li>Personal Characteristics: 12 subcategories including alcohol flush, nicotine dependence, and caffeine metabolism</li>
                                            <li>Health Care: 15 subcategories including obesity, tendency to yo-yo effect, abdominal obesity, and triglyceride concentration</li>
                                        </ul>
                                    </div>
                                    <div class="btn-wrap">
                                        <!--09.29 버튼명 변경 (View Detail -> Service Inquiry)-->
                                        <a href="mailto:mygenomestory@macrogen.com" class="btn btn-sm btn-white"><span>Service Inquiry</span></a>
                                        <a href="https://smartstore.naver.com/mygenomestory/products/5372235474" target="_blank" class="btn btn-sm btn-primary"><span>Purchase</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5">My Genomestory The Plus Skin & Care 44 (48 subcategories)</p>
                            <div class="content">
                                <!--10.05 이미지 경로 변경-->
                                <div class="picture">
                                    <img src="/publishing/pc-en/dist/img/business/img_theplus_care44.png" alt="마이지놈스토리더플러스스킨&케어44">
                                </div>
                                <div class="cont">
                                    <p class="desc">In addition to personal health and beauty management solutions, Macrogen helps you to get to know yourself by analyzing the genetic characteristics you want to know. The All-in-One solution covers the most areas in Korea and is a premium service that offers total health care. The number of categories will be continuously updated, and we are the first certification body to be expanding DTC categories.</p>
                                    <p class="caption">※ The service is not available to persons under 19 years of age. </p>
                                    <div class="list-area">
                                        <ul class="list-circle-dot">
                                            <li>Skin/Hair: 13 subcategories including pigmentation, aging skin, and male pattern hair loss</li>
                                            <li>Nutrients: 20 subcategories including vitamin C concentration, vitamin D concentration, coenzyme Q10, and magnesium &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;concentration</li>
                                            <li>Health Care: 15 subcategories including obesity, tendency to yo-yo effect, abdominal obesity, and triglyceride concentration</li>
                                        </ul>
                                    </div>
                                    <div class="btn-wrap">
                                        <!--09.29 버튼명 변경 (View Detail -> Service Inquiry)-->
                                        <a href="mailto:mygenomestory@macrogen.com" class="btn btn-sm btn-white"><span>Service Inquiry</span></a>
                                        <a href="https://smartstore.naver.com/mygenomestory/products/4840761209" target="_blank" class="btn btn-sm btn-primary"><span>Purchase</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5">My Genomestory The Plus 41 (43 subcategories)</p>
                            <div class="content">
                                <!--10.05 이미지 경로 변경-->
                                <div class="picture">
                                    <img src="/publishing/pc-en/dist/img/business/img_theplus_fit41.png" alt="마이지놈스토리더플러스피트니스41">
                                </div>
                                <div class="cont">
                                    <p class="desc">The analysis for nutrients and exercise patterns allows you to plan your health care. The number of categories will be continuously updated, and we are the first certification body to be expanding DTC categories.</p>
                                    <p class="caption">※ The service is not available to persons under 19 years of age. </p>
                                    <div class="list-area">
                                        <ul class="list-circle-dot">
                                            <li>Exercise: 8 subcategories including fitness for strength exercise, fitness for endurance exercise, and recovery after exercise</li>
                                            <li>Nutrients: 20 subcategories including vitamin C concentration, vitamin D concentration, coenzyme Q10, and magnesium &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;concentration</li>
                                            <li>Health Care: 15 subcategories including obesity, tendency to yo-yo effect, abdominal obesity, and triglyceride concentration</li>
                                        </ul>
                                    </div>
                                    <div class="btn-wrap">
                                        <!--09.29 버튼명 변경 (View Detail -> Service Inquiry)-->
                                        <a href="mailto:mygenomestory@macrogen.com" class="btn btn-sm btn-white"><span>Service Inquiry</span></a>
                                        <a href="https://smartstore.naver.com/mygenomestory/products/4840761209" target="_blank" class="btn btn-sm btn-primary"><span>Purchase</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5">My Genomestory The Plus 12 (13 Subcategories)</p>
                            <div class="content">
                                <!--10.05 이미지 경로 변경-->
                                <div class="picture">
                                    <img src="/publishing/pc-en/dist/img/business/img_theplus12.png" alt="마이지놈스토리더플러스12">
                                </div>
                                <div class="cont">
                                    <p class="desc">This is the only test solution that is available to persons under the age of 19, and consists of only the key services essential for easy and
                                        efficient health and beauty management.</p>
                                    <div class="list-area">
                                        <ul class="list-circle-dot">
                                            <li>Health: 6 subcategories including body mass index, HDL cholesterol, LDL cholesterol, and triglyceride concentration</li>
                                            <li>Skin: 4 subcategories including pigmentation, aging skin, and caffeine metabolism</li>
                                            <li>Hair: 3 subcategories including male pattern hair loss and alopecia areata</li>
                                        </ul>
                                    </div>
                                    <div class="btn-wrap">
                                        <!--09.29 버튼명 변경 (View Detail -> Service Inquiry)-->
                                        <a href="mailto:mygenomestory@macrogen.com" class="btn btn-sm btn-white"><span>Service Inquiry</span></a>
                                        <a href="https://smartstore.naver.com/mygenomestory/products/4150226329" target="_blank" class="btn btn-sm btn-primary"><span>Purchase</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--약물 반응성 분석 서비스-->
                <div class="info-box">
                    <!--09.29 header 링크 이슈로 인한 id 변경 추가-->
                    <p class="font-h4 main-title" id="anchor3">Drug Response Genetic Test</p>
                    <p class="subject">The drug response genetic test helps to establish the optimal personalized drug treatment plan such as drug dose control and prescription of alternative drug therapies by predicting the drug reaction (curative effect, metabolism and adverse effect) according to the individual’s genotype.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/pc-en/dist/img/business/img_druganalysis.png" alt="약물반응성분석서비스">
                    </div>
                    <p class="caption img-caption">※ This service will be available in the future.</p>
                    <div class="btn-wrap">
                        <a href="mailto:mygenomestory@macrogen.com" class="btn btn-sm btn-white"><span>Service Inquiry</span></a>
                    </div>
                </div>
            </div>


        </div>
    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->

</body>
