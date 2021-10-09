<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<footer class="footer">
    <div class="inner clearfix">
        <div class="section_copy" ${ main_yn eq 'Y' ? 'data-aos="fade-up" data-aos-duration="1000"' : '' }>
            <div class="text font-bold">
                <p>humanizing<br>genomics</p>
            </div>
            <div class="copyright font-medium">
                <p>ⓒMacrogen, Inc.<br>All Rights Reserved.</p>
            </div>
            <ul class="sns">
                <li><a href="https://www.facebook.com/macrogenkr/" target="_blank"><i class="icon icon-facebook-square"></i></a></li>
                <li><a href="https://www.youtube.com/channel/UCT1qyaOiPM7syCEC_T8jmTw" target="_blank"><i class="icon icon-youtube-square"></i></a></li>
                <li><a href="https://blog.naver.com/macrogen_official" target="_blank"><i class="icon icon-blog-square"></i></a></li>
                <li><a href="https://www.linkedin.com/company/macrogen" target="_blank"><i class="icon icon-linkedin-square"></i></a></li>
            </ul>
        </div>
        <div class="section_information" ${ main_yn eq 'Y' ? 'data-aos="fade-up" data-aos-duration="1000"' : '' }>
            <div class="info">
                <div class="box">
                    <p class="font-bold title">MACROGEN</p>
                    <ul class="text">
                        <li><span><span class="font-bold">본사</span> : 서울특별시 강남구 역삼2동 테헤란로 238 마크로젠빌딩</span></li>
                        <li><span><span class="font-bold">대표이사</span> : 이수강</span><span><span class="font-bold">사업자등록번호</span> : 208-81-24115</span></li>
                        <li><span><span class="font-bold">Tel</span> : 02-2180-7000</span><span><span class="font-bold">Fax</span> : 02-2180-7100</span></li>
                        <li><span><span class="font-bold">E-mail</span> : <a href="mailto:webmaster@macrogen.com">webmaster@macrogen.com</a></span></li>
                    </ul>
                </div>
                <div class="box">
                    <p class="font-bold title">FAMILY SITE</p>
                    <ul class="text">
                        <li><span><a href="https://thebiome.life/" target="_blank">더 바이옴</a></span><span><a href="https://www.my-genomestory.com/" target="_blank">마이지놈스토리</a></span><span><a href="https://www.mypetgene.com/main/main.php" target="_blank">마이펫진</a></span></li>
                        <li><span><a href="https://www.macrogen-japan.co.jp/" target="_blank">마크로젠 일본</a></span><span><a href="https://www.macrogen-apac.com/" target="_blank">마크로젠 싱가포르</a></span><span><a href="https://www.macrogen-europe.com" target="_blank">마크로젠 유럽</a></span></li>
                        <li><span><a href="https://psomagen.com/" target="_blank">소마젠(Psomagen)</a></span><span><a href="http://gmi.ac.kr/index.php" target="_blank">유전체의학연구소</a></span></li>
                        <li><span><a href="http://www.g2if.org/" target="_blank">공우생명정보재단</a></span></li>
                        <li><span><a href="https://dna.macrogen.com/" target="_blank">Order site</a></span></li>
                    </ul>
                </div>
            </div>
            <div class="link">
                <ul class="terms">
                    <li><span class="font-medium"><a href="/${rc.locale.language }/policy/privacy">개인정보취급방침</a></span></li>
                    <li><span class="font-medium"><a href="/${rc.locale.language }/policy/image">영상정보처리기기 운영.관리방침</a></span></li>
                    <li><span class="font-medium"><a href="/${rc.locale.language }/policy/inside">내부정보관리규정</a></span></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
