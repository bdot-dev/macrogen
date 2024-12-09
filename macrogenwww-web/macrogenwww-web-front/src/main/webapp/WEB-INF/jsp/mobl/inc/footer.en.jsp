<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<head>
	<script src="/resources/script/mobile_common.js"></script>
</head>

<footer class="footer">
	<div class="footer__inner">
		<div class="footer__top">
			<div class="footer__title">
				<h2>
					Humanizing genomics<br />
					macrogen
				</h2>
			</div>
			<div class="footer__list">
				<div class="footer__menu">
					<button type="button"><strong>Macrogen</strong></button>
					<div class="toggle__menu">
						<ul>
							<li><a href="/${rc.locale.language }/company/overview">Company</a></li>
							<li><a href="/${rc.locale.language }/company/global-network">Global Network</a></li>
							<li><a href="/${rc.locale.language }/rnd/patent">Resource</a></li>
							<li><a href="/${rc.locale.language }/rnd/institute/precision-medicine">R&amp;D</a></li>
						</ul>
					</div>
				</div>
				<div class="footer__menu">
					<button type="button"><strong>Service</strong></button>
					<div class="toggle__menu">
						<ul>
							<li><a href="/${rc.locale.language }/business/healthcare/dtc-genetic">Personal Healthcare</a></li>
							<li><a href="/${rc.locale.language }/business/healthcare/pet-genetic">Pet Healthcare</a></li>
									<li><a href="/${rc.locale.language }/business/research/ngs#genome">Research Services</a></li>
									<li><a href="/${rc.locale.language }/business/diagnosis/cancer">Clinical Services</a></li>
									<li><a href="/${rc.locale.language }/business/singlecell-multi">Single Cell Expert Services</a></li>
						</ul>
					</div>
				</div>
				<div class="footer__menu">
					<button type="button"><strong>Newsroom</strong></button>
					<div class="toggle__menu">
						<ul>
							<li><a href="/${rc.locale.language }/newsroom/news">News</a></li>
							<li><a href="/${rc.locale.language }/newsroom/notice">Notice</a></li>
						</ul>
					</div>
				</div>
				<div class="footer__menu">
					<button type="button"><strong>IR</strong></button>
					<div class="toggle__menu">
						<ul>
							<li><a href="/${rc.locale.language }/ir/financial">Financial Information</a></li>
							<li><a href="/${rc.locale.language }/ir/investor-inquiries">Investment Inquiries</a></li>
						</ul>
					</div>
				</div>
				<div class="footer__menu">
					<button type="button"><strong>ESG</strong></button>
					<div class="toggle__menu">
						<ul>
							<li><a href="/${rc.locale.language }/company/esg-management">ESG Management</a></li>
							<li><a href="/${rc.locale.language }/company/ethical-management">Ethical Management</a></li>
							<li><a href="/${rc.locale.language }/company/social-contribution">Social Responsibility</a></li>
							<li><a href="/${rc.locale.language }/company/greenhouse-gas">Greenhouse gas emissions</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="footer__bottom">
			<div class="footer__etc">
				<div class="footer__site">
					<ul>
						<li>
							<a href="https://dna.macrogen.com/" target="_blank">Order Site</a>
						</li>
						<li class="policy">
							<a href="/${rc.locale.language }/policy/privacy">Privacy Statement</a>
						</li>
						<li>
							<a href="/${rc.locale.language }/policy/image">Image Information Processing Policy</a>
						</li>
						<li>
							<a href="/${rc.locale.language }/company/sitemap">Sitemap</a>
						</li>
						<li>
							<a href="/${rc.locale.language }/contact-us">Contact us</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="footer__info">
				<p>238, Teheran-ro, Gangnam-gu, Seoul, Republic of Korea</p>
				<p class="info info--tel">
					<span>TEL </span>
					<span>+82-2-2180-7000</span>
				</p>
				<p class="">
					<span>CEO</span>
					<span>Changhoon Kim</span>
				</p>
			</div>
			<div class="footer__copyright">
				<p>©Macrogen, Inc. All Rights Reserved.</p>
				<div class="footer__select">
					<button type="button" class="footer__button">Family site</button>
					<div class="footer__toggle">
						<div class="footer__container">
							<ul>
								<li><a href="https://www.my-genomestory.com/" target="_blank">My Genomestory</a></li>
								<li><a href="https://blog.naver.com/macrogen123" target="_blank">myPETGENE</a></li>
								<li><a href="https://psomagen.com/" target="_blank">Psomagen</a></li>
								<li><a href="https://www.macrogen-japan.co.jp/" target="_blank">Macrogen Japan</a></li>
								<li><a href="https://www.macrogen-europe.com" target="_blank">Macrogen Europe</a></li>
								<li><a href="https://macrogenclinical.com/macrogen/" target="_blank">Macrogen Spain</a></li>
								<!-- <li><a href="https://www.macrogen-apac.com/" target="_blank">Macrogen APAC</a></li> -->
								<li><a href="https://snumrc.snu.ac.kr/gmi/en" target="_blank">Genome Medicine Institute</a></li>
								<li><a href="http://www.g2if.org/" target="_blank">Gong-Wu Genome <br />Information Foundation</a></li>
								<li><a href="http://www.genehealth.or.kr/" target="_blank">Genehealth</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="top-btn">
		<button type="button"><span>TOP</span></button>
	</div>
</footer>
<script>
	function openWindowInFooter(select) {
		var url = select.value;
		if (!url) return;

		if (url.startsWith('http')) {
			location.href = url;
			select.value = '';
		} else {
			location.href = url;
		}

	}
</script>
