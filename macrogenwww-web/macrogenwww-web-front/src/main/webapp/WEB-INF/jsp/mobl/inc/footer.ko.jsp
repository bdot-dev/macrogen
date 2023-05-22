<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<footer class="footer main" ${ main_yn eq 'Y' ? 'data-aos="fade-up" data-aos-duration="2000"' : '' }>
    <div class="font-h5">Macrogen</div>
    <div class="info">
        <p>서울특별시 강남구 역삼2동 테헤란로 238 마크로젠 빌딩</p>
        <p>대표번호 : <a href="tel:02-2180-7000">02-2180-7000</a></p>
        <p>ⓒMacrogen, Inc. All Rights Reserved.</p>
    </div>
    <div class="link-list">
        <ul>
            <li>
                <select class="select" title="serviceSite" onchange="openWindowInFooter(this)">
                	<option value="">서비스 신청/약관</option>
                    <option value="https://dna.macrogen.com/">서비스 신청</option>
                    <option value="/${rc.locale.language }/policy/privacy">개인정보처리방침</option>
                    <option value="/${rc.locale.language }/policy/inside">내부정보관리규정</option>
                    <option value="/${rc.locale.language }/policy/image/">영상정보처리기기 운영.관리방침</option>
                    <option value="/${rc.locale.language }/company/sitemap">사이트맵</option>
                    <option value="/${rc.locale.language }/contact-us">Contact us</option>
                </select>
            </li>
            <li>
                <select class="select" title="familySite" onchange="openWindowInFooter(this)">
                    <option value="">Family Site</option>
                   <!-- <option value="https://thebiome.life/">더바이옴</option> -->
                    <option value="https://www.my-genomestory.com/">마이지놈스토리</option>
                    <option value="https://www.mypetgene.com/main/main.php">마이펫진</option>
                    <option value="https://psomagen.com/">소마젠(Psomagen)</option>
                    <option value="https://www.macrogen-japan.co.jp/">마크로젠 일본</option>
                    <option value="https://www.macrogen-europe.com">마크로젠 유럽</option>
                    <option value="https://macrogenclinical.com/macrogen/">마크로젠 스페인</option>
                    <option value="https://www.macrogen-apac.com/">마크로젠 싱가포르</option>
                    <option value="http://gmi.ac.kr/index.php">유전체의학연구소</option>
                    <option value="http://www.g2if.org/">공우생명정보재단</option>
                    <option value="http://www.genehealth.or.kr/">진헬스 건강검진센터</option>
                </select>
            </li>
        </ul>
    </div>
    
    <ul class="sns">
        <li><a href="https://www.facebook.com/macrogenkr/" target="_blank"><i class="icon icon-facebook"></i></a></li>
        <li><a href="https://www.youtube.com/channel/UCT1qyaOiPM7syCEC_T8jmTw" target="_blank"><i class="icon icon-youtube"></i></a></li>
        <li><a href="https://www.linkedin.com/company/macrogen" target="_blank"><i class="icon icon-blog"></i></a></li>
        <li><a href="https://blog.naver.com/macrogen_official" target="_blank"><i class="icon icon-linkedin"></i></a></li>
    </ul>
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
