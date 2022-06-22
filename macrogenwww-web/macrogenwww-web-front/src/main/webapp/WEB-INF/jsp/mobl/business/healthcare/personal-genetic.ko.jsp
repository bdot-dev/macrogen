<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body>

    <div class="top-bg" style="background-image: url(/publishing/mobile-ko/dist/img/business/bg_banner_pet.png);">
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
            <div class="font-h1">개인유전체분석</div>
            <div class="font-body-h">마이지놈스토리</div>
        </div>
    </div>
    <div class="container">
        <div class="section_business">
            <!--개인유전체분석 공통 s-->
            <div class="subject-box">
                <p class="title font-h4">마이지놈스토리는 사람마다 다른 유전자 특성에 맞춰<br>
                    건강 관리에 도움을 주는 개인 맞춤형 헬스케어 서비스입니다.
                </p>
                <p class="subject font-body-h img_bottom">마이지놈스토리는 질병의 위험도를 확인하는 것에서 나아가, 누구나 자신의 유전자 데이터를 통해 개인 고유의 특성을 이해하고<br>
                    생애 전반의 라이프스타일을 개선하여 건강한 삶을 누릴 수 있도록 도움을 드립니다. </p>
                <!--10.05 이미지 경로 변경-->
                <div class="img">
                    <img src="/publishing/mobile-ko/dist/img/business/img_health_intro.png" alt="마이지놈스토리인트로">
                </div>
            </div>
            <!--개인유전체분석 공통 e-->

            <!--네비게이션 s-->
            <div class="select-nav-box _content-anchor">
                <p class="title font-h4">SERVICE</p>
                <div class="select-box">
                    <div class="selected-value _selected-value">
                        <span class="text">질병예측 & 웰니스 유전자검사</span>
                    </div>
                    <ul class="select-option _select-option">
                        <li class="option-value active"><a href="#">질병예측 & 웰니스 유전자검사</a></li>
                        <li class="option-value"><a href="#">헬스&뷰티 유전자 검사</a></li>
                        <li class="option-value"><a href="#">약물 반응성 분석 서비스</a></li>
                    </ul>
                </div>

            </div>
            <!--네비게이션 e-->
            <div class="info-box-wrap">
                <!--질병예측 & 웰니스 유전자검사-->
                <div class="info-box show">
                    <p class="font-h4 main-title">질병예측 &#38; 웰니스 유전자검사</p>
                    <p class="subject font-body-h">마이지놈스토리 블루와 그린, 그리고 이들을 모두 아우르는 골드는 질병예측뿐만 아니라 영양, 다이어트에 이르기까지 건강을 유지하고 균형 잡힌 생활습관을 만들어가는데 필요한 다양한 검사 항목을 제공합니다.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img_disease.png" alt="질병예측 & 웰니스 유전자검사">
                    </div>
                    <!--content-anchor s-->
                    <div class="content-anchor">
                        <div class="selected-value _anchor-value">
                            <span class="text">마이지놈스토리 블루 (질병 예측)</span>
                        </div>
                        <ul class="anchor-option">
                            <li class="anchor-value" onclick="TitleMove('target1')"><a href="#">마이지놈스토리 블루 (질병 예측)</a></li>
                            <li class="anchor-value" onclick="TitleMove('target2')"><a href="#">마이지놈스토리 그린 (웰니스)</a></li>
                            <li class="anchor-value" onclick="TitleMove('target3')"><a href="#">마이지놈스토리 골드 (종합형)</a></li>
                            <li class="anchor-value" onclick="TitleMove('target4')"><a href="#">젠톡 (질병 예측)</a></li>
                        </ul>
                    </div>
                    <!--content-anchor e-->
                    <hr class="divider">
                    <div class="list-gallery">
                        <div class="section-anchor">
                            <div class="list">
                                <p class="sub-title font-h5" id="target1">마이지놈스토리 블루 (질병 예측)</p>
                                <div class="content">
                                    <!--10.05 이미지 경로 변경-->
                                    <div class="img">
                                        <img src="/publishing/mobile-ko/dist/img/business/img_mygenomeblue.png" alt="마이지놈스토리블루">
                                    </div>
                                    <div class="cont">
                                        <p class="desc font-body">한국인이 걱정하는 주요 암 및 일반 질환을 포함한 질병 예측 유전자 검사 서비스로 암 및 일반
                                            질환에 대한 유전적 위험을 미리 알고 대비함으로써 막연한 불안감을 해소하고 건강한 생활습관을 가질 수 있도록 돕습니다.</p>
                                        <div class="list-area">
                                            <ul class="list-circle-dot">
                                                <li><p>암(폐암, 위암, 대장암 등 주요 암 13종)</p></li>
                                                <li><p>일반질환(고혈압, 뇌졸중, 제2형 당뇨병 등 주요 일반질환 23종)</p></li>
                                            </ul>
                                        </div>
                                        <div class="btn-wrap">
                                            <a href="https://www.my-genomestory.com/service_detail?service_code=blue&selectLang=ko"
                                               target="_blank" class="btn btn-sm btn-light"><span>자세히 보기</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="section-anchor">
                            <div class="list">
                                <p class="sub-title font-h5" id="target2">마이지놈스토리 그린 (웰니스)</p>
                                <div class="content">
                                    <!--10.05 이미지 경로 변경-->
                                    <div class="img">
                                        <img src="/publishing/mobile-ko/dist/img/business/img_mygenomegreen.png" alt="마이지놈스토리그린">
                                    </div>
                                    <div class="cont">
                                        <p class="desc font-body">개인의 유전자 정보에 기반하여 건강한 식생활 관리와 효과적인 체중 조절이 이루어질 수 있도록
                                            정보를 제공하는 서비스입니다. 질병을 예방하는 가장 효과적인 방법은 건강한 생활습관입니다.</p>
                                        <div class="list-area">
                                            <ul class="list-circle-dot">
                                                <li><p>다이어트(비만 위험도, 식탐, 운동에 의한 체중 감량 효과 등 17개 항목)</p></li>
                                                <li><p>영양(비타민, 칼슘, 오메가3 등 16개 항목)</p></li>
                                            </ul>
                                        </div>
                                        <div class="btn-wrap">
                                            <a href="https://www.my-genomestory.com/service_detail?service_code=green&selectLang=ko"
                                               target="_blank" class="btn btn-sm btn-light"><span>자세히 보기</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="section-anchor">
                            <div class="list">
                                <p class="sub-title font-h5" id="target3">마이지놈스토리 골드 (종합형)</p>
                                <div class="content">
                                    <!--10.05 이미지 경로 변경-->
                                    <div class="img">
                                        <img src="/publishing/mobile-ko/dist/img/business/img_mygenomegold.png" alt="마이지놈스토리골드">
                                    </div>
                                    <div class="cont">
                                        <p class="desc font-body">질병(블루)에서부터 웰니스(그린)까지 건강한 삶을 만들기 위해 필요한 검사 항목을 포괄적으로
                                            선택할 수 있는 종합형 유전자 검사 서비스입니다.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="section-anchor">
                            <div class="list">
                                <p class="sub-title font-h5" id="target4">젠톡 (질병 예측)</p>
                                <div class="content">
                                    <!--10.05 이미지 경로 변경-->
                                    <div class="img">
                                        <img src="/publishing/mobile-ko/dist/img/business/img_mygenomegentok.png" alt="젠톡">
                                    </div>
                                    <div class="cont">
                                        <p class="desc font-body">건강설문과 병원 EMR 데이터를 결합한 최초의 유전자 검사 서비스로 ‘젠톡’ 모바일 앱을 통해  검사 결과를 확인하고 주기적으로 건강 정보를 받아볼 수 있습니다.  질병 발생 가능성과 관련 있는 강력한 유전변이인 병원성 변이를 함께 분석하여, 높은 예측도의 검사 결과를 제공합니다.</p>
                                        <div class="list-area">
                                        	<p class="font-body">Master  (남성 23 / 여성 25)</p>
                                            <ul class="list-circle-dot" style="color:#707070;">
                                                <li><p>남성: 주요 암 12종, 주요 질환 5종, 심뇌혈관질환 6종</p></li>
                                                <li><p>여성: 주요 암 14종, 주요 질환 5종, 심뇌혈관질환 6종</p></li>
                                            </ul>
                                        </div>
                                        <div class="btn-wrap">
                                            <a href="mailto:gentok@macrogen.com" class="btn btn-sm btn-light"><span>서비스 문의</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--헬스&뷰티 유전자 검사-->
                <div class="info-box">
                    <p class="font-h4 main-title" id="anchor2">헬스&#38;뷰티 유전자 검사</p>
                    <p class="subject font-body-h">‘마이지놈스토리 더플러스’는 의료기관을 방문하지 않고, 소비자가 직접 개인의 특성이나 건강과 관련된 웰니스 항목을 검사할 수 있는 DTC(Direct-To-Customer) 유전자검사 서비스입니다. 검사 항목은 영양소, 운동, 피부·모발, 식습관, 개인특성(알코올 홍조, 니코틴 의존성 등), 건강관리(비만, 혈당, 혈압 등) 등으로 구성되어 있습니다.
                        <br>마이지놈스토리 더플러스는 개인의 유전적 특성을 분석 후 그에 따른 맞춤 생활 가이드를 제공함으로써, 지금보다 더 건강하고 아름다운 삶을 이끌어갈 수 있도록 돕는 것은 물론 자신이 미처 몰랐던 ‘나’를 발견하는 계기를 만들어 줍니다.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img">
                        <img src="/publishing/mobile-ko/dist/img/business/img_healthbeauthintro.png" alt="헬스&뷰티 유전자 검사">
                    </div>
                    <hr class="divider">
                    <!--content-anchor s-->
                    <div class="content-anchor">
                        <div class="selected-value _anchor-value">
                            <span class="text">마이지놈스토리 더플러스 올인원 69 (세부항목 73종)</span>
                        </div>
                        <ul class="anchor-option">
                            <li class="anchor-value" onclick="TitleMove('target5')"><a href="#">마이지놈스토리 더플러스 올인원 69 (세부항목 73종)</a></li>
                            <li class="anchor-value" onclick="TitleMove('target6')"><a href="#">마이지놈스토리 더플러스 스킨&케어 44 (세부항목 48종)</a></li>
                            <li class="anchor-value" onclick="TitleMove('target7')"><a href="#">마이지놈스토리 더플러스 피트니스 41(세부항목 43종)</a></li>
                            <li class="anchor-value" onclick="TitleMove('target8')"><a href="#">마이지놈스토리 더플러스 12 (세부항목 13종)</a></li>
                        </ul>
                    </div>
                    <!--content-anchor e-->
                    <div class="list-gallery">
                        <div class="section-anchor">
                            <div class="list">
                                <p class="sub-title font-h5" id="target5">마이지놈스토리 더플러스 올인원 69 (세부항목 73종)</p>
                                <div class="content">
                                    <!--10.05 이미지 경로 변경-->
                                    <div class="img">
                                        <img src="/publishing/mobile-ko/dist/img/business/img_allinone69.png" alt="마이지놈스토리더플러스올인원69">
                                    </div>

                                    <div class="cont">
                                        <p class="desc font-body caption_bottom">헬스&#38;뷰티 관리뿐 아니라 평소 궁금했던 개인의 특성 분석을 통해
                                            ‘나’를 알아갈 수 있도록 돕습니다. 국내 최다 항목을 분석하는 올인원은 토탈 헬스케어가 가능한 프리미엄 상품입니다. 검사 항목 수는
                                            지속적으로 업데이트될 예정이며, ㈜마크로젠은 DTC 항목 확대가 가능한 첫 번째 인증기관입니다.</p>
                                        <p class="caption">※ 미성년자(만 19세 미만)는 검사 서비스가 불가능합니다.</p>
                                        <div class="list-area">
                                            <ul class="list-circle-dot">
                                                <li><p>영양소 : 비타민 C 농도, 비타민 D 농도, 코엔자임Q10, 마그네슘 농도 등 20개 항목</p></li>
                                                <li><p>운동 : 근력 운동 적합성, 지구력 운동 적합성, 운동 후 회복능력 등 총 8개 항목</p></li>
                                                <li><p>피부/모발: 색소침착, 피부노화, 남성형 탈모 등 13개 항목</p></li>
                                                <li><p>식습관: 식욕, 포만감, 쓴맛 민감도 등 총 5개 항목</p></li>
                                                <li><p>개인특성: 알코올 홍조, 니코틴 의존성, 카페인 대사 등 12개 항목</p></li>
                                                <li><p>건강관리: 비만, 요요 가능성, 복부비만, 중성지방농도 등 15개 항목</p></li>
                                            </ul>
                                        </div>
                                        <div class="btn-wrap">
                                            <div class="btn-wrapper"><a href="mailto:mygenomestory@macrogen.com"
                                                                        class="btn btn-sm btn-light"><span>서비스 문의</span></a>
                                                <a href="https://smartstore.naver.com/mygenomestory/products/5372235474"
                                                   target="_blank" class="btn btn-sm btn-primary"><span>구매하기</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="section-anchor">
                            <div class="list">
                                <p class="sub-title font-h5" id="target6">마이지놈스토리 더플러스 스킨&#38;케어 44 (세부항목 48종)</p>
                                <div class="content">
                                    <!--10.05 이미지 경로 변경-->
                                    <div class="img">
                                        <img src="/publishing/mobile-ko/dist/img/business/img_theplus_care44.png" alt="마이지놈스토리더플러스스킨&케어44">
                                    </div>
                                    <div class="cont">
                                        <p class="desc font-body">헬스&#38;뷰티 관리뿐 아니라 평소 궁금했던 개인의 특성 분석을 통해 ‘나’를 알아갈 수 있도록
                                            돕습니다. 국내 최다 항목을 분석하는 올인원은 토탈 헬스케어가 가능한 프리미엄 상품입니다. 검사 항목 수는 지속적으로 업데이트될
                                            예정이며, ㈜마크로젠은 DTC 항목 확대가 가능한 첫 번째 인증기관입니다.</p>
                                        <p class="caption">※ 미성년자(만 19세 미만)는 검사 서비스가 불가능합니다.</p>
                                        <div class="list-area">
                                            <ul class="list-circle-dot">
                                                <li><p>피부/모발: 색소침착, 피부노화, 남성형 탈모 등 13개 항목</p></li>
                                                <li><p>영양소: 비타민 C 농도, 비타민 D 농도, 코엔자임Q10, 마그네슘 농도 등 20개 항목</p></li>
                                                <li><p>건강관리: 비만, 요요 가능성, 복부비만, 중성지방농도 등 15개 항목</p></li>
                                            </ul>
                                        </div>
                                        <div class="btn-wrap">
                                            <div class="btn-wrapper"><a href="mailto:mygenomestory@macrogen.com"
                                                                        class="btn btn-sm btn-light"><span>서비스 문의</span></a>
                                                <a href="https://smartstore.naver.com/mygenomestory/products/4840761209"
                                                   target="_blank" class="btn btn-sm btn-primary"><span>구매하기</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="section-anchor">
                            <div class="list">
                                <p class="sub-title font-h5" id="target7">마이지놈스토리 더플러스 피트니스 41(세부항목 43종)</p>
                                <div class="content">
                                    <!--10.05 이미지 경로 변경-->
                                    <div class="img">
                                        <img src="/publishing/mobile-ko/dist/img/business/img_theplus_fit41.png" alt="마이지놈스토리더플러스피트니스41">
                                    </div>
                                    <div class="cont">
                                        <p class="desc font-body">나에게 맞는 영양소와 운동 습관 설계에 필요한 항목을 분석할 수 있어, 건강 관리를 효과적으로
                                            계획할 수 있도록 돕습니다. 검사 항목 수는 지속적으로 업데이트될 예정이며, ㈜마크로젠은 DTC 항목 확대가 가능한 첫 번째
                                            인증기관입니다.</p>
                                        <p class="caption">※ 미성년자(만 19세 미만)는 검사 서비스가 불가능합니다.</p>
                                        <div class="list-area">
                                            <ul class="list-circle-dot">
                                                <li><p>운동: 근력 운동 적합성, 지구력 운동 적합성, 운동 후 회복능력 등 8개 항목</p></li>
                                                <li><p>영양소: 비타민 C 농도, 비타민 D 농도, 코엔자임Q10, 마그네슘 농도 등 20개 항목</p></li>
                                                <li><p>건강관리: 비만, 요요 가능성, 복부비만, 중성지방농도 등 15개 항목</p></li>
                                            </ul>
                                        </div>
                                        <div class="btn-wrap">
                                            <!--09.29 버튼명 변경 (자세히 보기 -> 서비스 문의)-->
                                            <div class="btn-wrapper"><a href="mailto:mygenomestory@macrogen.com"
                                                                        class="btn btn-sm btn-light"><span>서비스 문의</span></a>
                                                <a href="https://smartstore.naver.com/mygenomestory/products/4840761209"
                                                   target="_blank" class="btn btn-sm btn-primary"><span>구매하기</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider">
                        <div class="section-anchor">
                            <div class="list">
                                <p class="sub-title font-h5" id="target8">마이지놈스토리 더플러스 12 (세부항목 13종)</p>
                                <div class="content">
                                    <!--10.05 이미지 경로 변경-->
                                    <div class="img">
                                        <img src="/publishing/mobile-ko/dist/img/business/img_theplus12.png" alt="마이지놈스토리더플러스12">
                                    </div>
                                    <div class="cont">
                                        <p class="desc font-body">성인뿐 아니라 만 19세 미만의 미성년자도 이용 가능한 유일한 검사 서비스로 헬스&#38;뷰티
                                            관리에 꼭 필요한 핵심 항목만으로 구성되어 쉽고 효율적인 관리를 할 수 있도록 돕습니다.</p>
                                        <div class="list-area">
                                            <ul class="list-circle-dot">
                                                <li><p>헬스: 체질량지수, HDL콜레스테롤, LDL콜레스테롤, 중성지방농도 등 6개 항목</p></li>
                                                <li><p>스킨: 색소침착, 피부노화, 카페인 대사 등 4개 항목</p></li>
                                                <li><p>헤어: 남성형탈모, 원형탈모 등 3개 항목</p></li>
                                            </ul>
                                        </div>
                                        <div class="btn-wrap">
                                            <div class="btn-wrapper"><a href="mailto:mygenomestory@macrogen.com"
                                                                        class="btn btn-sm btn-light"><span>서비스 문의</span></a>
                                                <a href="https://smartstore.naver.com/mygenomestory/products/4150226329"
                                                   target="_blank" class="btn btn-sm btn-primary"><span>구매하기</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--약물 반응성 분석 서비스-->
                <div class="info-box">
                    <p class="font-h4 main-title" id="anchor3">약물 반응성 분석 서비스</p>
                    <p class="subject font-body-h">개인의 유전형에 따른 약물반응(치료효과, 대사, 부작용)을 예측하여 약물 용량 조절, 대체약물 처방 등 최적의 맞춤 약물 치료 계획을 수립하도록 돕는 유전자검사입니다.</p>
                    <!--10.05 이미지 경로 변경-->
                    <div class="img caption_bottom">
                        <img src="/publishing/mobile-ko/dist/img/business/img_druganalysis.png" alt="약물반응성분석서비스">
                    </div>
                    <p class="caption btn-wrap_bottom">※ 해당 서비스는 현재 준비 중 입니다.</p>
                    <div class="btn-wrap">
                        <a href="mailto:mygenomestory@macrogen.com" class="btn btn-sm btn-light"><span>서비스 문의</span></a>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <!--contentanchor s-->

<!--비즈니스 스크립트 리펙토링 s-->
<script>
    /*변수*/
    var selectBox = $(".select-box");
    var option = $(".option-value");

    var contentAnchor = $(".content-anchor");
    var anchorOption = $(".anchor-value");
    var anchor = $("._anchor");
    var offset = anchor.offset();
    var infoSectionList = [];


    function onClickSelectBox() {
        // console.log('onClickSelectBox');
        /*드롭다운 클릭시 이벤트*/
        selectBox.on('click', function () {
            var select = $(this);
            if (select.hasClass('open')) {
                select.removeClass("open").children('.select-option').slideUp(200).removeClass("open");
            } else {
                select.addClass("open").children('.select-option').slideDown(200).addClass("open");

            }
        });
    }

    function onClickSelectOption() {
        // console.log('onClickSelectOption');
        /*클릭시 탭메뉴 변경*/
        option.on('click', function () {
            $(this).addClass('active').siblings().removeClass('active')
            var idx = $(this).index();
            var $info = $(".info-box-wrap > div");
            $info.addClass('show').siblings().removeClass('show');
            $info.eq(idx).addClass('show').siblings().removeClass('show');
            textChange($(this));
            setInfoSectionList($(this).text())
        })
    }

    function onClickBody() {
        $('body').on('click', function (e) {
            if (selectBox.hasClass('open')) {
                if (!selectBox.has(e.target).length) {
                    selectBox.removeClass("open").next('._dropdown').slideUp(200).removeClass("open");
                }
            }
            if (!selectBox.has(e.target).length) {
                selectBox.removeClass("open").children('.select-option').slideUp(200);
            }
        })
    }

    /*클릭시 텍스트 변경*/
    function textChange(target) {
        var select = target.find('a').text();
        $('._selected-value').find('span').text(select);
    }

    /*이전 다음 이동*/
    function setTabContent(idx) {
        var $Select = $('._select-option li');
        var $Selected = $('._selected-value');
        var $info = $(".info-box-wrap > div");
        var change = $(".option-value");

        console.log(change);
        <!--탭메뉴 클릭시 페이지 변경-->
        $Selected.text($Select.eq(idx).text());
        $info.addClass('show').siblings().removeClass('show');
        $info.eq(idx).addClass('show').siblings().removeClass('show');

        change.eq(idx).addClass('active').siblings().removeClass('active');

        setInfoSectionList($Select.eq(idx).text())
        /*페이지 변경후 상단 이동*/
        fnMove();

    }

    /*탭메뉴 상단으로 이동*/
    function fnMove() {
        var offset = $("._content-anchor").offset();
        $('html, body').animate({scrollTop: offset.top - 95}, 100);
    }

    /*특정위치 show & hide*/
    function fnMousewheel() {
        var lastScroll = 0;
        var listPos = $('.info-box').offset().top;
        $(window).on('scroll', function (e) {
            let offset = $(this).scrollTop();

            if (offset > lastScroll){
                // console.log('down')
                if (offset > listPos) {
                    contentAnchor.show().css({'position': 'fixed','top':'0px'});
                }
                else {
                    contentAnchor.hide();
                }
            } else {
                // console.log('up')
                if (offset > listPos) {
                    contentAnchor.show().css({'position': 'fixed','top':'70px'});
                }
                else {
                    contentAnchor.hide();
                }
            }
            lastScroll = offset;


            /*스크롤 변경시 텍스트 변경 및 칼러값 추가 */
            var title;
            for (
                let i = 0; i < infoSectionList.list.length; i++) {
                var item = infoSectionList.list[i]
                var title = item.title
                writeText(title)
                ChangeColor(title)

                if (offset > item.offset) {
                    // console.log(i);
                    title = item.title

                    break
                }
            }
            writeText(title)
            ChangeColor(title)
        });
    }


    /**
     * Anchor 글씨 쓰기
     * @param text
     */
    function writeText(text) {
        $('._anchor-value .text').text(text)

    }

    function ChangeColor(title){
        console.log(title);
        $(".anchor-value a").css({
            'color' : '#454545',
            'font-weight' : 'normal'
        });
        $(".anchor-value a:contains(" + title + ")").css({
            'color' : '#2E87EF',
            'font-weight' : 'bold'
        });
    }

    function setInfoSectionList(tit) {

        writeText(tit);

        infoSectionList = {
            title: tit,
            list: [],
        }
        $('.info-box.show').find('.section-anchor').each(function (index) {

            // console.log(i)
            let top = $(this).offset().top - 75;
            // console.log(top);
            let title = $(this).find('.sub-title').text();
            infoSectionList.list.unshift({
                index: index,
                offset: top,
                title: title
            })
        })
        console.log(infoSectionList);
    }

    /*드롭다운 클릭시 이벤트*/
    function onClickFixedAnchor() {
        contentAnchor.on('click', function () {
            var select = $(this);
            if (select.hasClass('open')) {
                select.removeClass("open").children('.anchor-option').slideUp(200).removeClass("open");
            } else {
                select.addClass("open").children('.anchor-option').slideDown(200).addClass("open");

            }
        });
        $('body').on('click', function (e) {
            if (contentAnchor.hasClass('open')) {
                if (!contentAnchor.has(e.target).length) {
                    contentAnchor.removeClass("open").children('.anchor-option').slideUp(200).removeClass("open");
                }
            }
        })
        /*클릭시 텍스트 변경*/
        anchorOption.on('click', function () {
            var select = $(this).find('a').text();
            writeText(select)
        });
    }

    /*클릭시 페이지 이동 이동*/
    function TitleMove(target) {
        var id = $('#' + target);
        var offset = id.offset();
        $('html, body').animate({scrollTop: offset.top - 60}, 300);
    }


    function init() {
        onClickSelectBox();
        onClickSelectOption();
        onClickBody();
        onClickFixedAnchor();
        fnMousewheel();
        setInfoSectionList($('._selected-value span').text())
    }

    init()


</script>

<!--비즈니스 스크립트 리펙토링 e-->
    <!--contentanchor e-->

<!--1번이미지 모달 s-->
<div class="modal modal-image-viewer" tabindex="-1" id="modalImageViewer1" data-bs-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <a href="#" class="btn-close"><span class="sr-only">닫기</span></a>
            <div class="parent">
                <div class="panzoom"><img src="/publishing/mobile-ko/dist/img/business/img_data_graph1.png" alt="게시물 제목"></div>
            </div>
        </div>
    </div>
</div>
<div class="toast-popup">
    <p>이미지를 확대할 수 있습니다</p>
</div>
<script>
    // modal show
    var modal = new bootstrap.Modal(document.getElementById('modalImageViewer1'));
    // zoom
    var el = document.querySelector('.panzoom');
    new PinchZoom.default(el, {});

    // modal close
    $('.btn-close').on('click', function () {
        modal.hide();
        hideToastPopup();
    })

    // modal open
    $('._btnZoom-1').on('click', function () {
        modal.show();
        showToastPopup();
    })



    // toast popup
    function showToastPopup() {
        $('.toast-popup').addClass('active');
        setTimeout(hideToastPopup, 2000);
    }
    function hideToastPopup() {
        $('.toast-popup').removeClass('active');
    }
</script>
<!--1번이미지 모달 e-->

</body>
