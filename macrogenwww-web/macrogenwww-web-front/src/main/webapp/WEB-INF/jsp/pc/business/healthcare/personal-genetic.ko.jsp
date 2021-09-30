<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

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
        <li class="breadcrumb-item">헬스케어서비스</li>
        <li class="breadcrumb-item">개인유전체분석</li>
    </ol>
</nav>

            <div class="hero-title">개인유전체분석</div>
            <div class="slogan-sub">마이지놈스토리</div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <!--메인 컨텐츠-->
            <div class="subject-box">
                <p class="title font-h4">마이지놈스토리는 사람마다 다른 유전자 특성에 맞춰<br>
                    건강 관리에 도움을 주는 개인 맞춤형 헬스케어 서비스입니다.
                </p>
                <p class="subject">마이지놈스토리는 질병의 위험도를 확인하는 것에서 나아가, 누구나 자신의 유전자 데이터를 통해 개인 고유의 특성을 이해하고<br>
                    생애 전반의 라이프스타일을 개선하여 건강한 삶을 누릴 수 있도록 도움을 드립니다. </p>
                <div class="img">
                    <img src="/publishing/pc-ko/dist/img/@temp/business/img_health_intro.png" alt="마이지놈스토리인트로">
                </div>
                <!--09.29 header 링크 이슈로 인한 스크립트 추가-->
                <script>
                    function fnMove(seq){
                        var offset = $("#anchor" + seq).offset();
                        $('html, body').animate({scrollTop : offset.top - 95}, 400);
                    }
                </script>
                <div class="btn-wrap">
                    <a onclick="fnMove(1)" class="btn btn-white btn-round btn-round-big"><span>질병예측 & 웰니스 유전자검사</span><i class="icon icon-arrow-bottom-short"></i></a>
                    <a onclick="fnMove(2)" class="btn btn-white btn-round btn-round-big"><span>헬스&뷰티 유전자 검사</span><i class="icon icon-arrow-bottom-short"></i></a>
                    <a onclick="fnMove(3)" class="btn btn-white btn-round btn-round-big"><span>약물 반응성 분석 서비스</span><i class="icon icon-arrow-bottom-short"></i></a>
                </div>
            </div>
            <div class="info-box-wrap">
                <!--질병예측 & 웰니스 유전자검사-->
                <div class="info-box subject-box" id="anchor1">
                    <p class="font-h4 main-title">질병예측 & 웰니스 유전자검사</p>
                    <p class="subject">마이지놈스토리 블루와 그린, 그리고 이들을 모두 아우르는 골드는 질병예측뿐만 아니라 영양, 다이어트에 이르기까지 건강을 유지하고 균형 잡힌 생활습관을 만들어가는데 필요한 다양한 검사 항목을 제공합니다.</p>
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/@temp/business/img_disease.png" alt="질병예측 & 웰니스 유전자검사">
                    </div>
                    <hr class="divider">
                    <div class="list-gallery">
                        <div class="list">
                            <p class="title font-h5">마이지놈스토리 블루 (질병 예측)</p>
                            <div class="content">
                                <div class="picture">
                                    <img src="/publishing/pc-ko/dist/img/@temp/business/img_mygenomeblue.png" alt="마이지놈스토리블루">
                                </div>
                                <div class="cont">
                                    <p class="desc">한국인이 걱정하는 주요 암 및 일반 질환을 포함한 질병 예측 유전자 검사 서비스로 암 및 일반 질환에 대한 유전적 위험을 미리 알고 대비함으로써 막연한 불안감을 해소하고 건강한 생활습관을 가질 수 있도록 돕습니다.</p>
                                    <div class="list-area">
                                        <ul class="list-circle-dot">
                                            <li>암(폐암, 위암, 대장암 등 주요 암 13종)</li>
                                            <li>일반질환(고혈압, 뇌졸중, 제2형 당뇨병 등 주요 일반질환 23종)</li>
                                        </ul>
                                    </div>
                                    <div class="btn-wrap">
                                        <a href="https://www.my-genomestory.com/service_detail?service_code=blue&selectLang=ko" target="_blank" class="btn btn-sm btn-white"><span>자세히 보기</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5">마이지놈스토리 그린 (웰니스)</p>
                            <div class="content">
                                <div class="picture">
                                    <img src="/publishing/pc-ko/dist/img/@temp/business/img_mygenomegreen.png" alt="마이지놈스토리그린">
                                </div>
                                <div class="cont">
                                    <p class="desc">개인의 유전자 정보에 기반하여 건강한 식생활 관리와 효과적인 체중 조절이 이루어질 수 있도록 정보를 제공하는 서비스입니다. 질병을 예방하는 가장 효과적인 방법은 건강한 생활습관입니다.</p>
                                    <div class="list-area">
                                        <ul class="list-circle-dot">
                                            <li>다이어트(비만 위험도, 식탐, 운동에 의한 체중 감량 효과 등 17개 항목)</li>
                                            <li>영양(비타민, 칼슘, 오메가3 등 16개 항목)</li>
                                        </ul>
                                    </div>
                                    <div class="btn-wrap">
                                        <a href="https://www.my-genomestory.com/service_detail?service_code=green&selectLang=ko" target="_blank" class="btn btn-sm btn-white"><span>자세히 보기</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5">마이지놈스토리 골드 (종합형)</p>
                            <div class="content">
                                <div class="picture">
                                    <img src="/publishing/pc-ko/dist/img/@temp/business/img_mygenomegold.png" alt="마이지놈스토리골드">
                                </div>
                                <div class="cont">
                                    <p class="desc">질병(블루)에서부터 웰니스(그린)까지 건강한 삶을 만들기 위해 필요한 검사 항목을 포괄적으로 선택할 수 있는 종합형 유전자 검사 서비스입니다.</p>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5">젠톡 (질병 예측)</p>
                            <div class="content">
                                <div class="picture">
                                    <img src="/publishing/pc-ko/dist/img/@temp/business/img_mygenomegentok.png" alt="젠톡">
                                </div>
                                <div class="cont">
                                    <p class="desc">건강설문과 병원 EMR 데이터를 결합한 최초의 유전자 검사 서비스로 ‘젠톡’ 모바일 앱을 통해  검사 결과를 확인하고 주기적으로 건강 정보를 받아볼 수 있습니다.  특히 Master 검사의 경우, 질병 발생 가능성과 관련 있는 강력한 유전변이인 병원성 변이를 함께 분석하여, 높은 예측도의 검사 결과를 제공합니다.</p>
                                    <div class="list-area">
                                        <ul class="list-circle-dot">
                                            <li>Standard(남성 주요 암 12종, 여성 주요 암 14종, 심뇌혈관질환 6종)</li>
                                            <li>Grand(암 및 주요질환 17(19)종, 심뇌혈관질환 6종)</li>
                                            <li>Master(암 및 주요질환 17(19)종, 심뇌혈관질환 6종)</li>
                                        </ul>
                                    </div>
                                    <div class="btn-wrap">
                                        <a href="mailto:gentok@macrogen.com"  class="btn btn-sm btn-white"><span>서비스 문의</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--헬스&뷰티 유전자 검사-->
                <div class="info-box subject-box">
                    <p class="font-h4 main-title" id="anchor2">헬스&뷰티 유전자 검사</p>
                    <p class="subject">‘마이지놈스토리 더플러스’는 의료기관을 방문하지 않고, 소비자가 직접 개인의 특성이나 건강과 관련된 웰니스 항목을 검사할 수 있는 DTC(Direct-To-Customer) 유전자검사 서비스입니다. 검사 항목은 영양소, 운동, 피부·모발, 식습관, 개인특성(알코올 홍조, 니코틴 의존성 등), 건강관리(비만, 혈당, 혈압 등) 등으로 구성되어 있습니다.
                        <br>마이지놈스토리 더플러스는 개인의 유전적 특성을 분석 후 그에 따른 맞춤 생활 가이드를 제공함으로써, 지금보다 더 건강하고 아름다운 삶을 이끌어갈 수 있도록 돕는 것은 물론 자신이 미처 몰랐던 ‘나’를 발견하는 계기를 만들어 줍니다.</p>
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/@temp/business/img_healthbeauthintro.png" alt="헬스&뷰티 유전자 검사">
                    </div>
                    <hr class="divider">
                    <div class="list-gallery">
                        <div class="list">
                            <p class="title font-h5">마이지놈스토리 더플러스 올인원 69 (세부항목 73종)</p>
                            <div class="content">
                                <div class="picture">
                                    <img src="/publishing/pc-ko/dist/img/@temp/business/img_allinone69.png" alt="마이지놈스토리더플러스올인원69">
                                </div>

                                <div class="cont">
                                    <p class="desc">헬스&뷰티 관리뿐 아니라 평소 궁금했던 개인의 특성 분석을 통해 ‘나’를 알아갈 수 있도록 돕습니다.  국내 최다 항목을 분석하는 올인원은 토탈 헬스케어가 가능한 프리미엄 상품입니다.  검사 항목 수는 지속적으로 업데이트될 예정이며,  ㈜마크로젠은 DTC 항목 확대가 가능한 첫 번째 인증기관입니다.</p>
                                    <p class="caption">※ 미성년자(만 19세 미만)는 검사 서비스가 불가능합니다.</p>
                                    <div class="list-area">
                                        <ul class="list-circle-dot">
                                            <li>영양소 : 비타민 C 농도, 비타민 D 농도, 코엔자임Q10, 마그네슘 농도 등 20개 항목</li>
                                            <li>운동 : 근력 운동 적합성, 지구력 운동 적합성, 운동 후 회복능력 등 총 8개 항목</li>
                                            <li>피부/모발: 색소침착, 피부노화, 남성형 탈모 등 13개 항목</li>
                                            <li>식습관: 식욕, 포만감, 쓴맛 민감도 등 총 5개 항목</li>
                                            <li>개인특성: 알코올 홍조, 니코틴 의존성, 카페인 대사 등 12개 항목</li>
                                            <li>건강관리: 비만, 요요 가능성, 복부비만, 중성지방농도 등 15개 항목</li>
                                        </ul>
                                    </div>
                                    <div class="btn-wrap">
                                        <a href="mailto:mygenomestory@macrogen.com" class="btn btn-sm btn-white"><span>서비스 문의</span></a>
                                        <a href="https://smartstore.naver.com/mygenomestory/products/5372235474" target="_blank" class="btn btn-sm btn-primary"><span>구매하기</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5">마이지놈스토리 더플러스 스킨&케어 44 (세부항목 48종)</p>
                            <div class="content">
                                <div class="picture">
                                    <img src="/publishing/pc-ko/dist/img/@temp/business/img_theplus_care44.png" alt="마이지놈스토리더플러스스킨&케어44">
                                </div>
                                <div class="cont">
                                    <p class="desc">헬스&뷰티 관리뿐 아니라 평소 궁금했던 개인의 특성 분석을 통해 ‘나’를 알아갈 수 있도록 돕습니다.  국내 최다 항목을 분석하는 올인원은 토탈 헬스케어가 가능한 프리미엄 상품입니다.  검사 항목 수는 지속적으로 업데이트될 예정이며,  ㈜마크로젠은 DTC 항목 확대가 가능한 첫 번째 인증기관입니다.</p>
                                    <p class="caption">※ 미성년자(만 19세 미만)는 검사 서비스가 불가능합니다.</p>
                                    <div class="list-area">
                                        <ul class="list-circle-dot">
                                            <li>피부/모발: 색소침착, 피부노화, 남성형 탈모 등 13개 항목</li>
                                            <li>영양소: 비타민 C 농도, 비타민 D 농도, 코엔자임Q10, 마그네슘 농도 등 20개 항목</li>
                                            <li>건강관리: 비만, 요요 가능성, 복부비만, 중성지방농도 등 15개 항목</li>
                                        </ul>
                                    </div>
                                    <div class="btn-wrap">
                                        <a href="mailto:mygenomestory@macrogen.com" class="btn btn-sm btn-white"><span>서비스 문의</span></a>
                                        <a href="https://smartstore.naver.com/mygenomestory/products/4840761209" target="_blank" class="btn btn-sm btn-primary"><span>구매하기</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5">마이지놈스토리 더플러스 피트니스 41(세부항목 43종)</p>
                            <div class="content">
                                <div class="picture">
                                    <img src="/publishing/pc-ko/dist/img/@temp/business/img_theplus_fit41.png" alt="마이지놈스토리더플러스피트니스41">
                                </div>
                                <div class="cont">
                                    <p class="desc">나에게 맞는 영양소와 운동 습관 설계에 필요한 항목을 분석할 수 있어, 건강 관리를 효과적으로 계획할 수 있도록 돕습니다. 검사 항목 수는 지속적으로 업데이트될 예정이며,  ㈜마크로젠은 DTC 항목 확대가 가능한 첫 번째 인증기관입니다.</p>
                                    <p class="caption">※ 미성년자(만 19세 미만)는 검사 서비스가 불가능합니다.</p>
                                    <div class="list-area">
                                        <ul class="list-circle-dot">
                                            <li>운동: 근력 운동 적합성, 지구력 운동 적합성, 운동 후 회복능력 등 8개 항목</li>
                                            <li>영양소: 비타민 C 농도, 비타민 D 농도, 코엔자임Q10, 마그네슘 농도 등 20개 항목</li>
                                            <li>건강관리: 비만, 요요 가능성, 복부비만, 중성지방농도 등 15개 항목</li>
                                        </ul>
                                    </div>
                                    <div class="btn-wrap">
                                        <a href="mailto:mygenomestory@macrogen.com" class="btn btn-sm btn-white"><span>자세히 보기</span></a>
                                        <a href="https://smartstore.naver.com/mygenomestory/products/4840761209" target="_blank" class="btn btn-sm btn-primary"><span>구매하기</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="list">
                            <p class="title font-h5">마이지놈스토리 더플러스 12 (세부항목 13종)</p>
                            <div class="content">
                                <div class="picture">
                                    <img src="/publishing/pc-ko/dist/img/@temp/business/img_theplus12.png" alt="마이지놈스토리더플러스12">
                                </div>
                                <div class="cont">
                                    <p class="desc">성인뿐 아니라  만 19세 미만의 미성년자도 이용 가능한 유일한 검사 서비스로  헬스&뷰티 관리에 꼭 필요한 핵심 항목만으로 구성되어 쉽고 효율적인 관리를 할 수 있도록 돕습니다.</p>
                                    <div class="list-area">
                                        <ul class="list-circle-dot">
                                            <li>헬스: 체질량지수, HDL콜레스테롤, LDL콜레스테롤, 중성지방농도 등 6개 항목</li>
                                            <li>스킨: 색소침착, 피부노화, 카페인 대사 등 4개 항목</li>
                                            <li>헤어: 남성형탈모, 원형탈모 등 3개 항목</li>
                                        </ul>
                                    </div>
                                    <div class="btn-wrap">
                                        <a href="mailto:mygenomestory@macrogen.com" class="btn btn-sm btn-white"><span>서비스 문의</span></a>
                                        <a href="https://smartstore.naver.com/mygenomestory/products/4150226329" target="_blank" class="btn btn-sm btn-primary"><span>구매하기</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--약물 반응성 분석 서비스-->
                <div class="info-box">
                    <p class="font-h4 main-title" id="anchor3">약물 반응성 분석 서비스</p>
                    <p class="subject">개인의 유전형에 따른 약물반응(치료효과, 대사, 부작용)을 예측하여 약물 용량 조절, 대체약물 처방 등 최적의 맞춤 약물 치료 계획을 수립하도록 돕는 유전자검사입니다.</p>
                    <div class="img">
                        <img src="/publishing/pc-ko/dist/img/@temp/business/img_druganalysis.png" alt="약물반응성분석서비스">
                    </div>
                    <p class="caption img-caption">※ 해당 서비스는 현재 준비 중 입니다.</p>
                    <div class="btn-wrap">
                        <a href="#" class="btn btn-sm btn-white"><span>서비스 문의</span></a>
                    </div>
                </div>
            </div>


        </div>
    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->

</body>
