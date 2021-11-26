<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en research-wrap">

    <div class="full-bg research_bg">
        <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

        <div class="frame frameB">
            <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">R&D</li>
        <li class="breadcrumb-item">Bioinformatics Institute</li>
    </ol>
</nav>

            <div class="hero-title">Bioinformatics Institute</div>
        </div>
    </div>

    <div class="container container-fluid">
        <div class="section_lifeInformation">
            <div class="info-box">
                <div class="font-h3">Discovering the secrets of life<br/>based on genome information</div>
                <div class="desc">Conducting extensive research efforts in genome analysis</div>
            </div>
            <div class="img"><img src="/publishing/pc-en/dist/img/RD/img-microscope.png" alt="현미경사진"></div>
        </div>
        <div class="section_info_list">
            <div class="box clearfix">
                <div class="font-h7">Key Technologies for Interpreting Genome Information</div>
                <div class="font-body">
                    <p>Macrogen bioinformatics institute has the key technologies research and development program to process and interpret genome information related
                        to various biological species, and it is currently conducting joint research with major research institutes in Korea and overseas.<br/><br/>

                        The preservation and expression of heredity information is a crucial process that forms the foundation of biological phenomena.
                        The theoretical interpretation of such biological phenomena has been pursued for a long time, and now with the accumulation of genetic information,
                        the field of bioinformatics has been established.<br/><br/>

                        Bioinformatics has been gradually developed with a focus on the analysis of genome information. In particular, with the advent of genome sequencing,
                        which is known as the NGS (Next Generation Sequencing) techniques, a wide range of biological data and technologies have become essential for the
                        efficient analysis of high-throughput data.<br/><br/>

                        The development of NGS technology and bioinformatics has opened up the possibility of personalized medicine that can be used to prevent, diagnose,
                        and treat diseases based on differences in each patient's genetic background and lifestyle.</p>
                </div>
            </div>

            <div class="box clearfix">
                <div class="font-h7">Announcement of Korean Reference Genome Sequence (AK1)</div>
                <div class="font-body">
                    <img src="/publishing/pc-en/dist/img/RD/img-AK1.png" alt="인간 게놈 염기서열">
                    <p>In 2016, we collaborated with the Macrogen Genome Research center and the genomic medicine institute at
                        Seoul National University to publish the Korean Reference Genome Sequence (AK1) in Nature.<br/><br/>
                        Based on our advanced expertise in genomic analysis, bioinformatics technology, and large server capacity, de novo assembly was carried out,
                        and we managed to successfully fill the gaps in the human standard genome sequence. It is also recognized to have broadened our understanding
                        of the human diploid genome since we discovered thousands of Asian-specific genetic mutations and built a phased genome.<br/>
                        Based on the extensive experience in R&D accumulated over the years, the Bioinformatics Institute of Macrogen will conduct a variety of studies
                        in the field of genome analysis, including the development of advanced algorithms and pipelines.</p>
                </div>
            </div>

        </div>

    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->

</body>