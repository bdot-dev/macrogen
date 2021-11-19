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
	        <%-- <a href="/en/locale/change" class="btn btn-round"><i class="icon icon-earth-black"></i><span>ENG</span></a> --%>
	        <a href="https://glo.macrogen.com/en/main/index.php" target="_blank" class="btn btn-round"><i class="icon icon-earth-black"></i><span>ENG</span></a>
	        <%-- <a href="javascript:alert('We are preparing an English version of the site.\nPlease check it again later.')" class="btn btn-round"><i class="icon icon-earth-black"></i><span>ENG</span></a> --%>
	    </div>
	</div>
</div>
<div class="gnb-2depth" id="gnb2Depth">
    <!--Macrogen-->
    <div class="box clearfix">
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/overview">Company</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/company/overview">About MACROGEN</a></li>
                <li><a href="/${rc.locale.language }/company/bod">Executive Leadership</a></li>
                <li><a href="/${rc.locale.language }/company/history">History</a></li>
                <li><a href="/${rc.locale.language }/company/vision">Vision</a></li>
                <li><a href="/${rc.locale.language }/company/certification">Certification & Accreditation</a></li>
                <!-- <li><a href="/${rc.locale.language }/company/contact-us">Contact us</a></li> -->
            </ul>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/global-network">Global Network</a></div>
        </div>

        <%--
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/qualified-image">채용</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/company/qualified-image">인재상</a></li>
                <li><a href="/${rc.locale.language }/company/hrm">인사제도</a></li>
                <li><a href="/${rc.locale.language }/company/recruit">채용안내</a></li>
            </ul>
        </div>
        --%>
    </div>
    <!--Business-->
    <div class="box clearfix">
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/business/research/ngs">Research</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/business/research/ngs">NGS</a></li>
                <li><a href="/${rc.locale.language }/business/research/ces">CES</a></li>
                <li><a href="/${rc.locale.language }/business/research/gene-sythesis">Gene Sythesis</a></li>
                <li><a href="/${rc.locale.language }/business/research/oligo">Oligo</a></li>
                <li><a href="/${rc.locale.language }/business/research/microarray">Microarray</a></li>
                <li><a href="/${rc.locale.language }/business/research/model">GEM</a></li>
            </ul>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/business/diagnosis/cancer">Clinical Diagnostics</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/business/diagnosis/cancer">Cancer Genome Testing</a></li>
                <li><a href="/${rc.locale.language }/business/diagnosis/newborn">Genetic Disorder</a></li>
                <li><a href="/${rc.locale.language }/business/diagnosis/covid">COVID&#45;19</a></li>
            </ul>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/business/healthcare/personal-genetic">Heathcare</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/business/healthcare/personal-genetic">Personal Genome Analysis</a></li>
                <li><a href="/${rc.locale.language }/business/healthcare/intestinal-microbiome">Microbiome Analysis</a></li>
                <li><a href="/${rc.locale.language }/business/healthcare/pet-genetic">Companion animal gene analysis</a></li>
            </ul>
        </div>
    </div>
    <!--R&D-->
    <div class="box clearfix">
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/rnd/institute/precision-medicine">Precision Medicine<br/>Institute</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/rnd/institute/bioinformatics">Bioinformatics<br/>Institute</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/rnd/institute/biome">The Biome<br/>Institute</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/rnd/institute/sync-genes">Sync Genes<br/>Institute</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/rnd/institute/bigdata">Big Data Institute<br/>for Health</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/rnd/patent">Patents&#47;Papers</a></div>
            <ul>
                <li><a href="/${rc.locale.language }/rnd/patent">Patents</a></li>
                <li><a href="/${rc.locale.language }/rnd/thesis">Papers</a></li>
            </ul>
        </div>
    </div>
    <!--Newsroom-->
    <div class="box clearfix">
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/newsroom/news">News</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/newsroom/media-library">Media library</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/newsroom/notice">Notice</a></div>
        </div>
    </div>
    <!--IR-->
    <div class="box clearfix">
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/ir/financial">Financial Information</a></div>
        </div>
        <%--
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
         --%>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/ir/investor-inquiries">Investment Inquiries</a></div>
        </div>
    </div>
    <!--ESG-->
    <div class="box clearfix">
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/esg-management">ESG Management</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/ethical-management">Ethical Management</a></div>
        </div>
        <div class="item">
            <div class="title"><a href="/${rc.locale.language }/company/social-contribution">Social Responsibility</a></div>
        </div>
        <!-- <div class="item">
            <div class="title"><a href="#">ESG평가</a></div>
        </div> -->
    </div>
</div>
