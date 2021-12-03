<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<div class="inner">
	<div class="section_gnb">
	    <h1 class="logo"><a href="/">마크로젠 로고</a></h1>
	    <nav>
	        <ul id="gnb">
                <li><span class="font-bold">macrogen</span></li>
                <li><span class="font-bold">business</span></li>
                <li><span class="font-bold">r&#38;d</span></li>
                <li><span class="font-bold">newsroom</span></li>
                <li><span class="font-bold">ir</span></li>
                <li><span class="font-bold">esg</span></li>
	        </ul>
	    </nav>
	</div>
	<c:choose>
		<c:when test="${ layout_type eq 'company' or layout_type eq 'business' or layout_type eq 'main' or layout_type eq 'rnd_institute' }">
			<c:set var="snsIconColor" value="" />
		</c:when>
	</c:choose>
	<div class="section_btn" data-layout-type="${layout_type }">
	    <ul class="sns">
	        <li><a href="https://www.facebook.com/macrogenkr/" target="_blank"><i class="icon icon-facebook-circle${snsIconColor }"></i></a></li>
	        <li><a href="https://www.youtube.com/channel/UCT1qyaOiPM7syCEC_T8jmTw" target="_blank"><i class="icon icon-youtube-circle${snsIconColor }"></i></a></li>
	        <li><a href="https://blog.naver.com/macrogen_official" target="_blank"><i class="icon icon-blog-circle${snsIconColor }"></i></a></li>
	        <li><a href="https://www.linkedin.com/company/macrogen" target="_blank"><i class="icon icon-linkedin-circle${snsIconColor }"></i></a></li>
	    </ul>
	    <div class="btn_eng">
	        <!-- <a href="/en/main" class="btn btn-round"><i class="icon icon-earth-black"></i><span>ENG</span></a> -->
	        <a href="https://glo.macrogen.com/en/main/index.php" target="_blank" class="btn btn-round"><i class="icon icon-earth-black"></i><span>ENG</span></a>
	    </div>
	</div>
</div>
<div class="gnb-2depth" id="gnb2Depth">
    <!--Macrogen-->
    <div class="box clearfix">
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/overview">회사소개</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/company/overview">기업개요</a></li>
                <li><a href="/${rc.locale.language }/company/bod">경영진</a></li>
                <li><a href="/${rc.locale.language }/company/history">연혁</a></li>
                <li><a href="/${rc.locale.language }/company/vision">비전</a></li>
                <li><a href="/${rc.locale.language }/company/certification">인증</a></li>
                <!-- <li><a href="/${rc.locale.language }/company/contact-us">Contact us</a></li> -->
            </ul>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/global-network">글로벌 네트워크</a></div>
        </div>

        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/qualified-image">채용</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/company/qualified-image">인재상</a></li>
                <li><a href="/${rc.locale.language }/company/hrm">인사제도</a></li>
                <li><a href="/${rc.locale.language }/company/recruit">채용안내</a></li>
            </ul>
        </div>
    </div>
    <!--Business-->
    <div class="box clearfix">
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/business/research/ngs">연구서비스</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/business/research/ngs">NGS</a></li>
                <li><a href="/${rc.locale.language }/business/research/ces">CES</a></li>
                <li><a href="/${rc.locale.language }/business/research/gene-sythesis">Gene Sythesis</a></li>
                <li><a href="/${rc.locale.language }/business/research/oligo">Oligo</a></li>
                <li><a href="/${rc.locale.language }/business/research/microarray">Microarray</a></li>
                <li><a href="/${rc.locale.language }/business/research/model">모델동물사업부</a></li>
            </ul>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/business/diagnosis/cancer">임상진단서비스</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/business/diagnosis/cancer">암 유전체 검사</a></li>
                <li><a href="/${rc.locale.language }/business/diagnosis/newborn">태아 및 희귀질환 검사</a></li>
                <li><a href="/${rc.locale.language }/business/diagnosis/covid">COVID&#45;19</a></li>
            </ul>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/business/healthcare/personal-genetic">헬스케어서비스</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/business/healthcare/personal-genetic">개인유전체분석</a></li>
                <li><a href="/${rc.locale.language }/business/healthcare/intestinal-microbiome">마이크로바이옴분석</a></li>
                <li><a href="/${rc.locale.language }/business/healthcare/pet-genetic">반려동물유전자분석</a></li>
            </ul>
        </div>
    </div>
    <!--R&D-->
    <div class="box clearfix">
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/rnd/institute/precision-medicine">정밀의학연구소</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/rnd/institute/bioinformatics">생명정보학연구소</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/rnd/institute/biome">더바이옴연구소</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/rnd/institute/sync-genes">싱크진연구소</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/rnd/institute/bigdata">빅데이터연구소</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/rnd/patent">특허&#47;논문</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/rnd/patent">특허</a></li>
                <li><a href="/${rc.locale.language }/rnd/thesis">논문</a></li>
            </ul>
        </div>
    </div>
    <!--Newsroom-->
    <div class="box clearfix">
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/newsroom/news">뉴스</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/newsroom/media-library">미디어라이브러리</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/newsroom/notice">공지사항</a></div>
        </div>
    </div>
    <!--IR-->
    <div class="box clearfix">
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/ir/financial">재무정보</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/ir/announcement">공시정보</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/ir/announcement">공고</a></li>
                <li><a href="/${rc.locale.language }/ir/disclosure">공시정보</a></li>
            </ul>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/ir/news">IR소식</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/ir/investor-inquiries">투자자 문의</a></div>
        </div>
    </div>
    <!--ESG-->
    <div class="box clearfix">
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/esg-management">ESG경영</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/ethical-management">윤리경영</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/social-contribution">사회공헌</a></div>
        </div>
        <!-- <div class="item">
            <div class="title"><a href="#">ESG평가</a></div>
        </div> -->
    </div>
</div>
