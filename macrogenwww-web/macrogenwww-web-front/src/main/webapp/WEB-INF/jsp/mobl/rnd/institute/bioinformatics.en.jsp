<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="research-wrap">

    <div class="top-bg" style="background-image: url(/publishing/mobile-en/dist/img/RD/bg-visual.png);">
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
            <div class="font-h1">Bioinformatics Institute</div>
        </div>
    </div>
    <div class="container">
        <div class="section_intro">
            <div class="info-box">
                <div class="font-h3">Discovering the secrets of life
                    based on genome information</div>
                <div class="desc">Conducting extensive research efforts in genome analysis</div>
            </div>
            <div class="img img-microscope"></div>
        </div>
        <div class="section_info_list">
            <div class="box">
                <div class="font-h7">Key Technologies for Interpreting Genome Information</div>
                <div class="font-body">
                    <p>Macrogen bioinformatics institute has the key technologies research and development program to process and interpret genome information related to various biological species, and it is currently conducting joint research with major research institutes in Korea and overseas.<br><br>
                        The preservation and expression of heredity information is a crucial process that forms the foundation of biological phenomena. The theoretical interpretation of such biological phenomena has been pursued for a long time, and now with the accumulation of genetic information, the field of bioinformatics has been established.<br><br>
                        Bioinformatics has been gradually developed with a focus on the analysis of genome information. In particular, with the advent of genome sequencing, which is known as the NGS (Next Generation Sequencing) techniques, a wide range of biological data and technologies have become essential for the efficient analysis of high-throughput data.<br><br>
                        The development of NGS technology and bioinformatics has opened up the possibility of personalized medicine that can be used to prevent, diagnose, and treat diseases based on differences in each patient's genetic background and lifestyle.</p>
                </div>
            </div>

            <hr class="M-divider"/>

            <div class="box mb-0">
                <div class="font-h7">Announcement of Korean Reference Genome Sequence (AK1)</div>
                <div class="font-body">
                    <div class="img img-AK1"></div>
                    <p>In 2016, we collaborated with the Macrogen Genome Research center and the genomic medicine institute at Seoul National University to publish the Korean Reference Genome Sequence (AK1) in Nature.<br><br>
                        Based on our advanced expertise in genomic analysis, bioinformatics technology, and large server capacity, de novo assembly was carried out, and we managed to successfully fill the gaps in the human standard genome sequence. It is also recognized to have broadened our understanding of the human diploid genome since we discovered thousands of Asian-specific genetic mutations and built a phased genome.
                        Based on the extensive experience in R&D accumulated over the years, the Bioinformatics Institute of Macrogen will conduct a variety of studies in the field of genome analysis, including the development of advanced algorithms and pipelines.</p>
                </div>
            </div>
        </div>
    </div>

</body>
