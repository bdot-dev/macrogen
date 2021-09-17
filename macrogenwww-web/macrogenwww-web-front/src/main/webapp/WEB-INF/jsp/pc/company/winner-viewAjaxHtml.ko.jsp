<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<div class="modal-dialog modal-dialog-centered modal-lg">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title">마크로젠 과학자상</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <div class="list-of-winners-detail">
                <div class="btn-wrap">
                    <a href="#" class="btn btn-text"><i class="icon icon-arrow-left-long"></i><span>목록으로</span></a>
                </div>
                <div class="list-header">
                    <div class="img"><img src="/publishing/dist/img/@temp/macrogen/profile.png" alt="김형범"></div>
                    <div class="info">
                        <div class="sub">제 17회 수상자</div>
                        <div class="name">김형범</div>
                        <div class="job">연세대 의과대학 약리학교수실 교수</div>
                        <div class="career">
                            <div class="tit">주요 연구 업적</div>
                            <ul>
                                <li>한국인 암 발병률 1위, 위암 관련 전이 조절 인자 발견</li>
                                <li>암 및 대사질환 기전 규명을 위한 동물모델 제작</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="list-body">
                    <div class="title">수상자 및 연구업적 소개</div>
                    <div class="desc">
                        김형범 교수는 유전자가위 연구 분야에서 국제적으로 주목받는 과학자로, 인공지능을 기반으로 유전자가위의 효율성을 예측하고, 유전질환의 치료 기반을 마련하기 위한 유전자가위 기술 개발을 연구하고 있습니다.  특히, 세계 최초로 AI 딥러닝 기법을 이용해 유전자가위 기술 기반의 빅데이터를 수집, 분석하여 유전자가위의 효율과 교정 결과를 정밀하게 예측하는 ‘교정 결과 예측 프로그램’을 만드는 데 성공했습니다.  이러한 연구 성과를 바탕으로 김 교수는 2010년부터 현재까지 유전자가위와 관련된 50여 편의 논문을 국제적 학술지에 발표했습니다.<br/><br/>
                        특히 네이처 바이오 테크놀로지(Nature Biotechnology, 2018, 2020)에 3편의 논문을 게재했으며, 네이처 바이오메디컬 엔지니어링(Nature Biomedical Engineering, 2020), 네이처 메소드(Nature Methods, 2017), 네이처 커뮤니케이션즈(Nature Communications, 2015), 사이언스 어드밴스(Science Advances, 2019) 등 세계적인 저널에 교신저자로서 논문을 발표해 국내 유전자 교정 분야의 수준을 높이는 데 공헌했습니다.
                    </div>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <div class="board">
                <div class="navigation">
                    <div class="content clearfix">
                        <a href="#" class="item prev">
                            <div class="title">제 18회 수상자</div>
                        </a>
                        <a href="#" class="item next">
                            <div class="title">제 16회 수상자</div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
	$(function() {
		$('#modalListOfWinners .btn-close').on('click', function() {
			window.history.replaceState({}, document.title, ' ');
		});
	});
</script>
