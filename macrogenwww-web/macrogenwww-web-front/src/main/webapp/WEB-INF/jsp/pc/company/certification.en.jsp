<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

    <div class="full-bg macrogen" style="background-image: url(/publishing/pc-en/dist/img/macrogen/bg-authorization_v2.png);">
        <!--header 수정시 메인 header 같이 수정해주세요-->
<header class="header" id="header">
	<c:import url="/inc/header-inner-gnb" />
</header>

        <div class="frame">
                <div class="hero-title">Certification & Accreditation</div>
                <div class="slogan">Global standard<br/>for genomics</div> <!-- 번역 변경 -- 2021.11.23 -->
                <div class="slogan-sub">Our technological excellence has been recognized around the world</div>
            <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-white">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">MACROGEN</li>
        <li class="breadcrumb-item">About MACROGEN</li>
        <li class="breadcrumb-item">Certification & Accreditation </li>
    </ol>
</nav>

            <div class="scroll-wrap">
    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
</div>

        </div>
    </div>
    <div class="container">
        <div class="macrogen macrogen-authorization">
            <!-- s tab -->
            <div class="slide-tab-wrap">
                <div class="swiper-container tab-slide-box _swiperTab">
                    <div class="swiper-wrapper _swiperTab">
                        <div class="swiper-slide active"><a href="#qualityManagementSystem">Quality Management</a></div>
                        <div class="swiper-slide"><a href="#clinicalDiagnosisQualityManagementSystem">Clinical Diagnostics</a></div>
                        <div class="swiper-slide"><a href="#internationallyAccreditedTestingInstitute">Internationally Accredited Testing Laboratory</a></div>
                        <div class="swiper-slide"><a href="#CSPCertificationProgram">CSP Program</a></div>
                        <div class="swiper-slide"><a href="#informationSecurityManagementSystem">Information Management</a></div>
                    </div>
                </div>
            </div>
            <script>
                $('._swiperTab .swiper-slide').on('click', function(){
                    $(this).addClass('active').siblings().removeClass('active');
                });
            </script>
            <!-- e tab -->

            <!-- s 품질경영시스템 -->
            <div class="section" id="qualityManagementSystem" data-aos="fade-up" data-aos-duration="2000">
                <div class="title">Quality Management System</div>
                <div class="box">
                    <div class="left">
                        <div class="title-sm">
                            <span>ISO 9001</span>
                            <div class="tooltip-box">
                                <a class="btn-tooltip _btnTooltip" href="#"><i class="icon-tooltip"></i></a>
                                <div class="text-box">
                                    <a class="btn-tooltip-close _btnTooltipClose" href="#"><i class="icon-tooltip-close"></i></a>
                                    <span>ISO 9001 is an international standard
enacted by the International Organization for Standardization (ISO), certifying quality assurance over the entire production process for goods and services. This certification aims to prevent quality-related issues while furnishing products and services that meet customer requirements. This certification is given to quality management systems in which customers can have confidence.</span>
                                </div>
                            </div>
                        </div>
                        <div class="desc">Macrogen’s headquarters and Psomagen (Macrogen USA) obtained the ISO 9001 certification from the British Standards Institution (BSI) in order to increase customer trust and satisfaction. Through this certification, we have established company-wide quality objectives and policies, as well as detailed regulations for our work processes. This has allowed us not only to improve the efficiency of our management practices, but also to achieve cost savings, improved profits, and enhanced competitiveness.</div>
                        <div class="btn-wrap"><a class="btn btn-sm btn-white" href="/pdf/FM_89418_마크로젠_(2022년).pdf" target="_blank">Download</a></div>
                    </div>
                    <div class="right">
                        <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/img-authorization-1.png" alt="ISO 9001"></div>
                    </div>
                </div>
            </div>
            <!-- e 품질경영시스템 -->

            <!-- s 임상진단 품질경영시스템 -->
            <div class="section" id="clinicalDiagnosisQualityManagementSystem" data-aos="fade-up" data-aos-duration="2000">
                <div class="title">Quality Management System for Clinical Diagnostics</div>
                <div class="box">
                    <div class="left">
                        <div class="title-sm">
                            <span>GMP Accreditation</span>
                            <div class="tooltip-box">
                                <a class="btn-tooltip _btnTooltip" href="#"><i class="icon-tooltip"></i></a>
                                <div class="text-box">
                                    <a class="btn-tooltip-close _btnTooltipClose" href="#"><i class="icon-tooltip-close"></i></a>
                                    <span>GMP (Good Manufacturing Practice, Medical device manufacture and quality control standards) is the system accredited by the Ministry of Food and Drug Safety for consumer safety. It is a quality control standard that ensures the manufacture and supply of high-quality medical products, and it is applied to the entire process of the manufacture, from raw material purchase, manufacture, packaging, storage and shipment, as well as the structure of the facility.</span>
                                </div>
                            </div>
                        </div>
                        <div class="desc">In February 2019, Macrogen received [NGS-based in-vitro diagnostic reagent GMP] from the Ministry of Food and Drug Safety, confirming the stability and effectiveness of our in vitro diagnostic reagent manufacturing technology. With this accreditation, Macrogen can launch and offer its clinical diagnostic product directly to the market.</div>
                        <div class="btn-wrap"><a class="btn btn-sm btn-white" href="/pdf/GMP인정서_마크로젠_2025.08.23만료_(1).pdf" target="_blank">Download</a></div>
                    </div>
                    <div class="right">
                        <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/img-authorization-2.png" alt="GMP Accreditation"></div>
                    </div>
                </div>
                <div class="box box-full">
                    <div class="left">
                        <div class="title-sm">
                            <span>GCLP Accreditation</span>
                            <div class="tooltip-box">
                                <a class="btn-tooltip _btnTooltip" href="#"><i class="icon-tooltip"></i></a>
                                <div class="text-box">
                                    <a class="btn-tooltip-close _btnTooltipClose" href="#"><i class="icon-tooltip-close"></i></a>
                                    <span>The GCLP (Good Clinical Laboratory
Practice) is a quality standard for laboratories that analyze blood and urine samples for clinical trials that was established by the Ministry of Food and Drug Safety in accordance with the Amendment to the Pharmaceutical Affairs Act published in October 2017. It mandates that the analysis of samples required for clinical trials be conducted by an authorized sample analysis institution and aims to ensure that clinical trials of pharmaceuticals are safe and based on science. Clinical trial specimen analysis institutions conduct specimen analysis tests on blood and urine collected from clinical trial subjects and are designated by the Minister of Food and Drug Safety in accordance with the Pharmaceutical Affairs Act and Regulations on the Safety of Drugs, etc.</span>
                                </div>
                            </div>
                        </div>
                        <div class="desc">Macrogen was accredited as a clinical sample analysis institution by the Ministry of Food and Drug Safety in May 2019. As the first institution in Korea that can analyze samples through NGS technology, we are committed to strengthening the competitiveness of domestic clinical trials by providing reliable analysis services.</div>
                        <div class="btn-wrap"><a class="btn btn-sm btn-white" href="/pdf/임상시험검체분석기관지정서.pdf" target="_blank">Download</a></div>
                    </div>
                </div>
                <div class="box">
                    <div class="left">
                        <div class="title-sm">
                            <span>CAP Accreditation</span>
                            <div class="tooltip-box">
                                <a class="btn-tooltip _btnTooltip" href="#"><i class="icon-tooltip"></i></a>
                                <div class="text-box">
                                    <a class="btn-tooltip-close _btnTooltipClose" href="#"><i class="icon-tooltip-close"></i></a>
                                    <span>The CAP (College of American Pathologists) Laboratory Accreditation Program begun in 1961, and it internationally recognized and known to be the largest of its kind. The U.S. federal government recognizes the CAP accreditation as being equal to or more stringent than the government’s inspection program. In order to receive CAP accreditation, a laboratory must demonstrate that it operates with the highest standards of quality, accuracy, and consistency. </span>
                                </div>
                            </div>
                        </div>
                        <div class="desc">Macrogen’s headquarters, Bundang Precision Medicine Center, Psomagen (Macrogen USA) and Macrogen APAC have been awarded the CAP accreditation for clinical diagnostic sequencing using NGS technology.</div>
                        <div class="btn-wrap"><a class="btn btn-sm btn-white" href="/pdf/Macrogen HQ-CAP Certificate of Accreditation 2022-2024.pdf" target="_blank">Download</a></div>
                    </div>
                    <div class="right">
                        <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/img-authorization-3.png" alt="CAP Accreditation"></div>
                    </div>
                </div>
                <div class="box">
                    <div class="left">
                        <div class="title-sm">
                            <span>CLIA Certification</span>
                            <div class="tooltip-box">
                                <a class="btn-tooltip _btnTooltip" href="#"><i class="icon-tooltip"></i></a>
                                <div class="text-box">
                                    <a class="btn-tooltip-close _btnTooltipClose" href="#"><i class="icon-tooltip-close"></i></a>
                                    <span>The CLIA (Clinical Laboratory Improvement Amendments) is a US certification standard that verifies the accuracy, reliability, and propriety of tests performed on specimens from humans for the purpose of the diagnostics, as well as the prevention and treatment of diseases.</span>
                                </div>
                            </div>
                        </div>
                        <div class="desc">Macrogen received CLIA certification for its headquarters, Bundang Precision Medicine Center and Psomagen (Macrogen USA) to enter the domestic and overseas clinical diagnostics market. Backed by this CLIA certification, Macrogen provides various clinical diagnostics services as well as inspections of patients specimens.</div>
                        <div class="btn-wrap"><a class="btn btn-sm btn-white" href="/pdf/CLIA_인증.pdf" target="_blank">Download</a></div>
                    </div>
                    <div class="right">
                        <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/img-authorization-4.png" alt="CLIA Certification"></div>
                    </div>
                </div>
                <div class="box">
                    <div class="left">
                        <div class="title-sm">
                            <span>Genetic Testing Accuracy Evaluation Certification</span>
                            <div class="tooltip-box">
                                <a class="btn-tooltip _btnTooltip" href="#"><i class="icon-tooltip"></i></a>
                                <div class="text-box">
                                    <a class="btn-tooltip-close _btnTooltipClose" href="#"><i class="icon-tooltip-close"></i></a>
                                    <span>As genetic testing for medical and research purposes became more commonplace, the Genetic Testing Accuracy Evaluation Certification was created to assess the accuracy of testing institutions and to encourage improvements in service quality and growth of the industry. The Korean Institute of Genetic Testing Evaluation, responsible for managing and supervising the certification, assesses the accuracy of test results, propriety of testing processes, conformity of testing facilities and equipment to standards, and qualifications of testing personnel. This is to prevent any confusion that may arise due to inaccurate genetic testing.</span>
                                </div>
                            </div>
                        </div>
                        <div class="desc">The molecular genetic testing services provided by Macrogen Headquarters maintain A-grade certification (P-grade when including items not covered by health insurance). By providing customers with reliable results, Macrogen contributes to national health and progress in the national bioscience fields.</div>
                        <div class="btn-wrap"><a class="btn btn-sm btn-white" href="/pdf/유전자검사 정확도평가 인증_2022.pdf" target="_blank">Download</a></div>
                    </div>
                    <div class="right">
                        <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/img-authorization-5.png" alt="Genetic Testing Accuracy Evaluation Certification"></div>
                    </div>
                </div>
                <div class="box box-full">
                    <div class="left">
                        <div class="title-sm">
                            <span>NGS Clinical Laboratory Certification</span>
                            <div class="tooltip-box">
                                <a class="btn-tooltip _btnTooltip" href="#"><i class="icon-tooltip"></i></a>
                                <div class="text-box">
                                    <a class="btn-tooltip-close _btnTooltipClose" href="#"><i class="icon-tooltip-close"></i></a>
                                    <span>The NGS Clinical Laboratory Certification system, enforced by the Ministry of Food and Drug Safety since August 2016, is a system designed for the prompt availability of NGS-certified technologies in disease diagnostics and testing, including cancer genomic analyses and rare disease screening. Certifications are awarded based on a general evaluation of equipment, facilities, manpower, testing competencies, and quality control systems, and the reliability of test results.</span>
                                </div>
                            </div>
                        </div>
                        <div class="desc">Macrogen obtained NGS Clinical Laboratory Certification from the Ministry of Food and Drug Safety in April of 2017. Backed by this certification, Macrogen develops and provides various NGS-based clinical diagnostic testing services utilizing the latest technologies such as cancer panels and liquid biopsies.</div>
                    </div>
                </div>
            </div>
            <!-- e 임상진단 품질경영시스템 -->

            <!-- s 국제공인시험기관 -->
            <div class="section" id="internationallyAccreditedTestingInstitute" data-aos="fade-up" data-aos-duration="2000">
                <div class="title">Internationally Accredited Testing Laboratory</div>
                <div class="box box-full">
                    <div class="left">
                        <div class="title-sm">
                            <span>DAkkS and KOLAS Accreditation (ISO/IEC 17025)</span>
                        </div>
                        <div class="desc">Macrogen received international testing laboratory accreditation for “forensic genetics” from the German national accreditation body DAkkS in December 2016. In March 2017, Macrogen acquired international testing laboratory accreditation for “forensic DNA type analysis testing” from KOLAS (Korea Laboratory Accreditation Scheme), Korea’s accreditation body operating under the Korean Agency for Technology and Standards. DAkkS and KOLAS accreditation certifies that Macrogen’s DNA type analysis testing (relationship genetic testing) is recognized for its world-class reliability and advanced technology. Thanks to this accreditation, Macrogen is able to provide internationally certified test reports in accordance with the ISO/IEC 17025 international standard. Based on the cross-accreditation procedures among the 94 member states of the International Laboratory Accreditation Cooperation (ILAC), test reports issued by Macrogen are equivalent to test reports issued locally in each member state.</div>
                        <div class="img-wrap">
                            <div class="img">
                                <img src="/publishing/pc-en/dist/img/macrogen/img-authorization-6.png" alt="DAkkS and KOLAS Accreditation (ISO/IEC 17025)">
                                <a class="btn btn-sm btn-white" href="/pdf/공평성선언문_ISOIEC.pdf" target="_blank">Download</a>
                            </div>
                            <div class="img">
                                <img src="/publishing/pc-en/dist/img/macrogen/img-authorization-7.png" alt="DAkkS and KOLAS Accreditation (ISO/IEC 17025)">
                                <a class="btn btn-sm btn-white" href="/pdf/KOLAS_인증서.pdf" target="_blank">Download</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- e 국제공인시험기관 -->

            <!-- s CSP 인증 프로그램  -->
            <div class="section" id="CSPCertificationProgram" data-aos="fade-up" data-aos-duration="2000">
                <div class="title">CSP Program
                    <div class="tooltip-box">
                        <a class="btn-tooltip _btnTooltip" href="#"><i class="icon-tooltip"></i></a>
                        <div class="text-box">
                            <a class="btn-tooltip-close _btnTooltipClose" href="#"><i class="icon-tooltip-close"></i></a>
                            <span>The CSP program is a mutual service cooperation program among suppliers of genetic analysis platforms such as genetic analysis equipment, microarrays, and testing kits, and companies furnishing services using these platforms. The program ensures that only the highest quality services are provided to customers.</span>
                        </div>
                    </div>
                </div>
                <div class="box box-full box-full-sm">
                    <div class="left">
                        <div class="desc">To provide quality services that inspire customer confidence, Macrogen is a member of the CSP (Certified Service Provider) program alongside Illumina, Pacific Biosciences, Life Technologies, Thermo Fisher Scientific, Agilent Technology, and 10x Genomics. Through its in-house service quality management system and participation in the CSP program, Macrogen complies with the service quality standards established by genetic analysis platform suppliers. This allows Macrogen to not only supply high-quality services, but also to work with genetic analysis platform suppliers in joint marketing and support programs to provide customers with added benefits.</div>
                        <div class="img-wrap">
                            <div class="img">
                                <span class="tit">Illumina</span>
                                <img src="/publishing/pc-en/dist/img/macrogen/img-authorization-8.png" alt="Illumina">
                                <a class="btn btn-sm btn-white" href="/pdf/CSP_Illumina Propel+CSpro.pdf" target="_blank">Download</a>
                            </div>
                            <div class="img">
                                <span class="tit">Pacific Biosciences</span>
                                <img src="/publishing/pc-en/dist/img/macrogen/img-authorization-9.png" alt="Pacific Biosciences">
                                <a class="btn btn-sm btn-white" href="/pdf/CSP_Certificate_PacBio.pdf" target="_blank">Download</a>
                            </div>
                            <div class="img">
                                <span class="tit">Agilent Technologies</span>
                                <img src="/publishing/pc-en/dist/img/macrogen/img-authorization-10.png" alt="Agilent Technologies">
                                <a class="btn btn-sm btn-white" href="/pdf/CSP_Certificate_Agilent_2019.pdf" target="_blank">Download</a>
                            </div>
                            <div class="img">
                                <span class="tit">Life Technologies</span>
                                <img src="/publishing/pc-en/dist/img/macrogen/img-authorization-11.png" alt="Life Technologies">
                                <a class="btn btn-sm btn-white" href="/pdf/CSP_Certificate_LifeTech.pdf" target="_blank">Download</a>
                            </div>
                            <div class="img">
                                <span class="tit">Thermo Fisher Scientific</span>
                                <img src="/publishing/pc-en/dist/img/macrogen/img-authorization-12.png" alt="Thermo Fisher Scientific">
                                <a class="btn btn-sm btn-white" href="/pdf/CSP_Certificate_ThermoFisher.pdf" target="_blank">Download</a>
                            </div>
                            <div class="img">
                                <span class="tit">10x Genomics</span>
                                <img src="/publishing/pc-en/dist/img/macrogen/img-authorization-16.png" alt="10x Genomics">
                                <a class="btn btn-sm btn-white" href="/pdf/CSP_Certificate_10xGenomics.pdf" target="_blank">Download</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- e CSP 인증 프로그램  -->

            <!-- s 정보보호 관리체계  -->
            <div class="section" id="informationSecurityManagementSystem" data-aos="fade-up" data-aos-duration="2000">
                <div class="title">Information Management System</div>
                <div class="box">
                    <div class="left">
                        <div class="title-sm">
                            <span>ISO27701 Certification</span>
                            <div class="tooltip-box">
                                <a class="btn-tooltip _btnTooltip" href="#"><i class="icon-tooltip"></i></a>
                                <div class="text-box">
                                    <a class="btn-tooltip-close _btnTooltipClose" href="#"><i class="icon-tooltip-close"></i></a>
                                    <span>To acquire ISO27701 certification, applicants must pass the management standards for 49 items such as personal information protection management procedures, non-identification, and encryption, and can only be obtained by holding ISO27001, an international standard certification, in advance. </span>
                                </div>
                            </div>
                        </div>
                        <div class="desc with-date">ISO27701 is the most prestigious international standard privacy certification established by the International Organization for Standardization (ISO) in August 2019. Macrogen is the only company in the industry that has acquired all three of the best information protection certificates in Korea and internationally.</div>
                        <div class="date">※ Period of validity : 2021.06.22 ~ 2024.06.21</div>
                        <div class="btn-wrap"><a class="btn btn-sm btn-white" href="/pdf/ISO27701.pdf" target="_blank">Download</a></div>
                    </div>
                    <div class="right">
                        <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/img-authorization-13.png" alt="ISO27701 Certification"></div>
                    </div>
                </div>
                <div class="box">
                    <div class="left">
                        <div class="title-sm">
                            <span>ISMS-P Certification</span>
                        </div>
                        <div class="desc with-date">Macrogen acquired the ISMS-P certification to establish a thorough management system of all information needed in precision medicine, an objective indicator that proves that customer information and genomic data can be secured. ISMS-P, which Macrogen acquired for the first time in the industry, is the best security management system in Korea jointly announced by the Ministry of Science and ICT and the Privacy Commission. </div>
                        <div class="date">※ Period of validity : 2021.03.03 ~ 2024.03.02</div>
                        <div class="btn-wrap"><a class="btn btn-sm btn-white" href="/pdf/ISMS-P 인증서.pdf" target="_blank">Download</a></div>
                    </div>
                    <div class="right">
                        <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/img-authorization-14.png" alt="ISMS-P Certification"></div>
                    </div>
                </div>
                <div class="box">
                    <div class="left">
                        <div class="title-sm">
                            <span>ISO/IEC 27001:2013 Certification</span>
                            <div class="tooltip-box">
                                <a class="btn-tooltip _btnTooltip" href="#"><i class="icon-tooltip"></i></a>
                                <div class="text-box">
                                    <a class="btn-tooltip-close _btnTooltipClose" href="#" ><i class="icon-tooltip-close"></i></a>
                                    <span>ISO/IEC 27001 is the international security standard from the International Organization for Standardization (ISO) and the International Electrotechnical Commission (IEC) and is regarded as the top-grade international standard certification. To receive the latest ISO/IEC 27001 certification, organizations must demonstrate compliance with 114 information security controls in 14 areas including information security policies, physical and environmental security and access control, etc.</span>
                                </div>
                            </div>
                        </div>
                        <div class="desc with-date">Macrogen has become the first biotechnology company to successfully achieve both Korea Personal Information Management System (PIMS) and International Information Security (ISO/IEC 27001) certification.</div>
                        <div class="date">※ Period of validity : 2021.03.03 ~ 2024.03.02</div>
                        <div class="btn-wrap"><a class="btn btn-sm btn-white" href="/pdf/ISO_IEC 27001-2013 인증서.pdf" target="_blank">Download</a></div>
                    </div>
                    <div class="right">
                        <div class="img"><img src="/publishing/pc-en/dist/img/macrogen/img-authorization-15.png" alt="ISO/IEC 27001:2013 Certification"></div>
                    </div>
                </div>
            </div>
            <!-- e 정보보호 관리체계  -->
        </div>
    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->


</body>
