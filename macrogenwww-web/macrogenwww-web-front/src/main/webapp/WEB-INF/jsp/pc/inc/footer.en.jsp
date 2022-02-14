<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<footer class="footer">
    <div class="inner" ${ main_yn eq 'Y' ? 'data-aos="fade-up" data-aos-duration="1000"' : '' }>
        <div class="section_information">
            <div class="title font-bold">
                <p>MACROGEN</p>
            </div>
            <div class="info">
                <ul class="text">
                    <li>
                        <ul class="terms clearfix">
                            <li><span class="font-medium"><a href="https://dna.macrogen.com/" target="_blank">Order site</a></span></li>
                            <li><span class="font-medium"><a href="/${rc.locale.language }/policy/privacy">Privacy Statement</a></span></li>
                            <%-- <li><span class="font-medium"><a href="/${rc.locale.language }/policy/inside">내부정보관리규정</a></span></li> --%>
                            <li><span class="font-medium"><a href="/${rc.locale.language }/policy/image">Image Information Processing Policy</a></span></li>
                            <!-- <li><span class="font-medium"><a href="/${rc.locale.language }/company/contact-us">Contact us</a></span></li> -->
                        </ul>
                    </li>
                        <li><span>238, Teheran-ro, Gangnam-gu, Seoul, Republic of Korea</span><span>TEL +82-2-2180-7000</span></li>
                    <li><span>&#169;Macrogen&#44; Inc&#46; All Rights Reserved&#46;</span></li>
                </ul>
            </div>
        </div>

        <div class="section_familysite">
            <div class="family-box">
                <a href="#" class="select_site _select_site"><span class="text">FAMILY SITE</span></a>
                <div class="popup_box _popup_box">
                    <a href="https://thebiome.life/" target="_blank" class="list"><span class="text">The Biome</span></a>
                    <a href="https://www.my-genomestory.com/" target="_blank" class="list"><span class="text">My Genomestory</span></a>
                    <a href="https://www.mypetgene.com/main/main.php" target="_blank" class="list"><span class="text">myPETGENE</span></a>
                    <a href="https://psomagen.com/" target="_blank" class="list"><span class="text">Psomagen</span></a>
                    <a href="https://www.macrogen-japan.co.jp/" target="_blank" class="list"><span class="text">Macrogen Japan</span></a>
                    <a href="https://www.macrogen-europe.com" target="_blank" class="list"><span class="text">Macrogen Europe</span></a>
                    <a href="https://macrogenclinical.com/macrogen/" target="_blank" class="list"><span class="text">Macrogen Spain</span></a>
                    <a href="https://www.macrogen-apac.com/" target="_blank" class="list"><span class="text">Macrogen APAC</span></a>
                    <a href="http://gmi.ac.kr/index.php" target="_blank" class="list"><span class="text">Genome Medicine Institute</span></a>
                    <a href="http://www.g2if.org/" target="_blank" class="list"><span class="text">Gong-Wu Genome<br/>Information Foundation</span></a>
                    <a href="http://www.genehealth.or.kr/" target="_blank" class="list"><span class="text">Genehealth</span></a>
                </div>
            </div>
        </div>

        <div class="section_sns">
            <ul class="sns clearfix">
                <li class="facebook"><a href="https://www.facebook.com/macrogenkr/" target="_blank"></a></li>
                <li class="youtube"><a href="https://www.youtube.com/channel/UCT1qyaOiPM7syCEC_T8jmTw" target="_blank"></a></li>
                <li class="blog"><a href="https://blog.naver.com/macrogen_official" target="_blank"></a></li>
                <li class="linkedin"><a href="https://www.linkedin.com/company/macrogen" target="_blank"></a></li>
            </ul>
        </div>
    </div>

</footer>
