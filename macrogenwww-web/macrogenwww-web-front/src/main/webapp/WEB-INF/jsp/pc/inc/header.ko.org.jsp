<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<header id="header">
	<div class="inner">
		<h1><a href="/">MACROGEN</a></h1>
		<nav id="gnb">
			<ul>
				<li>
					<a href="/${rc.locale.language}/company/introduction/overview">MACROGEN</a>
					<div class="sub-menu">
						<ul>
							<li>
								<a href="/${rc.locale.language}/company/introduction/overview">회사소개</a>
								<div class="sub-menu">
									<ul>
										<li><a href="/${rc.locale.language}/company/introduction/overview">기업개요</a></li>
										<li><a href="/${rc.locale.language}/company/introduction/ceo">CEO</a></li>
										<li><a href="/${rc.locale.language}/company/introduction/history">연혁</a></li>
										<li><a href="/${rc.locale.language}/company/introduction/vision">비전</a></li>
										<li><a href="/${rc.locale.language}/company/introduction/certification">인증</a></li>
									</ul>
								</div>
							</li>
							<li><a href="/${rc.locale.language}/company/global-network">글로벌 네트워크</a></li>
							<li>
								<a href="/${rc.locale.language}/company/sustainability-management/ethical-management">지속가능경영</a>
								<div class="sub-menu">
									<ul>
										<li><a href="/${rc.locale.language}/company/sustainability-management/ethical-management">윤리경영</a></li>
										<li><a href="/${rc.locale.language}/company/sustainability-management/social-contribution">사회공헌</a></li>
									</ul>
								</div>
							</li>
							<li>
								<a href="/${rc.locale.language}/company/recruit/main">채용</a>
								<div class="sub-menu">
									<ul>
										<li><a href="/${rc.locale.language}/company/recruit/qualified">인재상</a></li>
										<li><a href="/${rc.locale.language}/company/recruit/institution">인사제도</a></li>
										<li><a href="/${rc.locale.language}/company/guide">채용안내</a></li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</li>
				<li>
					<a href="/${rc.locale.language}/business/research/ngs">BUSINESS</a>
					<div class="sub-menu">
						<ul>
							<li>
								<a href="/${rc.locale.language}/business/research/ngs">연구서비스</a>
								<div class="sub-menu">
									<ul>
										<li><a href="/${rc.locale.language}/business/research/ngs">NGS</a></li>
										<li><a href="/${rc.locale.language}/business/research/ces">CES</a></li>
										<li><a href="/${rc.locale.language}/business/research/oligo">Oligo</a></li>
										<li><a href="/${rc.locale.language}/business/research/microarray">Microarray</a></li>
										<li><a href="/${rc.locale.language}/business/research/model">모델동물사업부</a></li>
									</ul>
								</div>
							</li>
							<li>
								<a href="/${rc.locale.language}/business/diagnosis/cancer">임상진단서비스</a>
								<div class="sub-menu">
									<ul>
										<li><a href="/${rc.locale.language}/business/diagnosis/cancer">암 유전체 검사</a></li>
										<li><a href="/${rc.locale.language}/business/diagnosis/newborn">신생아 유전자 검사</a></li>
										<li><a href="/${rc.locale.language}/business/diagnosis/liquid-biopsy">액체생검</a></li>
										<li><a href="/${rc.locale.language}/business/diagnosis/covid">COVID-19</a></li>
									</ul>
								</div>
							</li>
							<li>
								<a href="/${rc.locale.language}/business/healthcare">헬스케어서비스</a>
								<div class="sub-menu">
									<ul>
										<li><a href="/${rc.locale.language}/business/healthcare/personal-genetic">개인유전자분석</a></li>
										<li><a href="/${rc.locale.language}/business/healthcare/intestinal-microbiome">장내미생물분석</a></li>
										<li><a href="/${rc.locale.language}/business/healthcare/pet-genetic">반려동물유전자분석</a></li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</li>
				<li>
					<a href="/${rc.locale.language}/rnd/precision-medicine">R&D</a>
					<div class="sub-menu">
						<ul>
							<li><a href="/${rc.locale.language}/rnd/precision-medicine">정밀의학연구소</a></li>
							<li><a href="/${rc.locale.language}/rnd/bioinformatics">생명정보학연구소</a></li>
							<li><a href="/${rc.locale.language}/rnd/biome">더바이옴연구소</a></li>
							<li><a href="/${rc.locale.language}/rnd/sync-genes">싱크진연구소</a></li>
							<li><a href="/${rc.locale.language}/rnd/bigdata">빅데이터연구소</a></li>
							<li>
								<a href="/${rc.locale.language}/rnd/patent">특허/논문</a>
								<div class="sub-menu">
									<ul>
										<li><a href="/${rc.locale.language}/rnd/patent">특허</a></li>
										<li><a href="/${rc.locale.language}/rnd/thesis">논문</a></li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</li>
				<li>
					<a href="/${rc.locale.language}/newsroom/news">NEWSROOM</a>
					<div class="sub-menu">
						<ul>
							<li><a href="/${rc.locale.language}/newsroom/news">뉴스</a></li>
							<li><a href="/${rc.locale.language}/newsroom/media-library">미디어라이브러리</a></li>
							<li><a href="/${rc.locale.language}/newsroom/notice">공지사항</a></li>
						</ul>
					</div>
				</li>
				<li>
					<a href="/${rc.locale.language}/ir/financial">IR</a>
					<div class="sub-menu">
						<ul>
							<li><a href="/${rc.locale.language}/ir/financial">재무정보</a></li>
							<li>
								<a href="/${rc.locale.language}/ir/disclosure">공시정보</a>
								<div class="sub-menu">
									<ul>
										<li><a href="/${rc.locale.language}/ir/announcement">공고</a></li>
										<li><a href="/${rc.locale.language}/ir/disclosure">공시정보</a></li>
									</ul>
								</div>
							</li>
							<li><a href="/${rc.locale.language}/ir/news">IR소식</a></li>
							<li><a href="/${rc.locale.language}/ir/investor-inquiries">투자자 문의</a></li>
						</ul>
					</div>
				</li>
				<li>
					<a href="/${rc.locale.language}/esg/overview">ESG</a>
					<div class="sub-menu">
						<ul>
							<li><a href="/${rc.locale.language}/esg/management">ESG경영</a></li>
							<li><a href="/${rc.locale.language}/esg/evaluation">ESG평가</a></li>
						</ul>
					</div>
				</li>
			</ul>
		</nav>
		<div class="util">
			<div class="language">
				<%-- current language --%>
				<button type="button" class="language-btn">
					<c:choose>
						<c:when test="${rc.locale.language eq 'en' }">US</c:when>
						<c:otherwise>KR</c:otherwise>
					</c:choose>
				</button>
				<ul>
					<li ${rc.locale.language eq 'ko' ? 'class="current"' : '' }><a href="/ko/locale/change">KR</a></li>
					<li ${rc.locale.language eq 'en' ? 'class="current"' : '' }><a href="/en/locale/change">EN</a></li>
				</ul>
			</div>
		</div>
	</div>

</header>
