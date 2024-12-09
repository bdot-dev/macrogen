<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<body class="en">

    <div class="full-bg macrogen">
        <!--header 수정시 메인 header 같이 수정해주세요-->
		<header class="header header-bg-white" id="header">
			<c:import url="/inc/header-inner-gnb" />
		</header>

        <div class="frame">
            <h2 class="hero-title">Ethical Management</h2>
            <div class="slogan">We promote transparent and<br/> fair business practices</div>
            <!-- <div class= "slogan-sub">We are committed to fulfilling our corporate social responsibility as a global leader</div> -->
            <nav aria-label="breadcrumb">
			    <ol class="breadcrumb breadcrumb-white">
			        <li class="breadcrumb-item">Home</li>
			        <li class="breadcrumb-item">ESG</li>
			        <li class="breadcrumb-item">Ethical Management</li>
			    </ol>
			</nav>

            <div class="scroll-wrap">
			    <div class="scroll"><span class="bar" style="bottom: 0"></span></div>
			</div>

        </div>
    </div>

    <div class="container container-fluid">
        <div class="macrogen ethical-management">
            <!-- s  문구 -->
            <div class="section-description">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="text-lg">We are dedicated to transparent<br/> and fair operation</div>
                    <div class="desc">We will continue to build trust based on the principles of ethical management</div>
                </div>
            </div>
            <!-- e  문구 -->

            <!-- s  윤리경영 원칙 -->
            <div class="section-bg">
                <div class="inner" data-aos="fade-up" data-aos-duration="2000">
                    <div class="text-lg color-white">Ethical Management Principles</div>
                    <div class="desc color-white">We recognize our ethical responsibilities toward customers, employees, shareholders, suppliers, government, and local communities,
                        and ensure full compliance with them in our corporate activities.</div>
                    <div class="content">
                        <ul class="clearfix">
                            <li>
                                <div class="tit">Customer First</div>
                                <div class="desc">We protect our customers' rights<br/>
                                    and make their privacy our top priority.</div>
                            </li>
                            <li>
                                <div class="tit">Protection of Shareholders</div>
                                <div class="desc">We protect shareholders' assets and profits by improving our financial structure and ethical practice.</div> <!-- 번역 변경 -- 2021.11.23 -->
                            </li>
                            <li>
                                <div class="tit">Shared Growth</div>
                                <div class="desc">We maintain a fair relationship with our business partners to promote mutual growth and sustainable partnership while preventing unfair practices. </div>
                            </li>
                            <li>
                                <div class="tit">Respect for Employees</div>
                                <div class="desc">We create an ethical workplace culture based on mutual understanding and trust and respect and prevent sexual harassment.</div>
                            </li>
                            <li>
                                <div class="tit">Social Contribution</div>
                                <div class="desc">We establish an ethical corporate culture and build trust by contributing to our society based on compliance, transparency, and fairness.</div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- e  윤리경영 원칙 -->

            <!-- s  제보 -->
            <div class="section-tip">
                <div class="inner">
                    <div data-aos="fade-up" data-aos-duration="2000">
                        <div class="text-md">We encourage you to report any violations of our ethical management principles through the helpline</div>
                        <div class="desc">If you are aware of any unethical practice of our employees or have suggestions,
                            please contact our helpline.</div>
                    </div>
                    <div class="subject-to-report" data-aos="fade-up" data-aos-duration="2000">
                        <div class="tit">Violations</div>
                        <div class="row">
                            <div class="col col-3"><div class="item">Violation of customers’ rights<br/>by a Macrogen employee</div></div>
                            <div class="col col-3"><div class="item">Unfair transactions and<br/> contract awards, unauthorized <br/>disclosure of trade secrets, and <br/>other unfair and unethical<br/> practices</div></div>
                            <div class="col col-3"><div class="item">Unfair stake participation in<br/> partners, holding of more than<br/> one position in the company at<br/> a time while working at <br/>Macrogen, and other<br/> usurpation of corporate<br/> opportunities</div></div>
                            <div class="col col-3"><div class="item">Illegal acts such as the misuse of corporate funds and/or the receipt of illicit monies or benefits</div></div>
                        </div>
                        <div class="row">
                            <div class="col col-3"><div class="item">Falsified reports, doctoring of documents, and leakage of company information</div></div>
                            <div class="col col-3"><div class="item">Sexual harassment and discrimination/coercion among employees</div></div>
                            <div class="col col-3"><div class="item">Other types of legal violations</div></div>
                        </div>
                    </div>
                    <div class="subject-to-report-step" data-aos="fade-up" data-aos-duration="2000">
                        <ul>
                            <li class="item">
                                <div class="img">
                                    <img src="/publishing/pc-en/dist/img/macrogen/ethical-thumb-1.png" alt="Filing of report">
                                    <span class="label">01</span>
                                    <span class="tit">Filing of report</span>
                                </div>
                                <div class="info">
                                    <span class="desc">Please submit a detailed account of potential violations of the ethical management principles.</span>
                                    <a href="mailto:report@mghelpline.com" class="link">report&#64;mghelpline&#46;com</a>
                                    <span class="tip">The e-mail account for receiving reports is operated and managed separately from our internal accounts and it can be accessed by security administrators only. </span>
                                </div>
                            </li>
                            <li class="item">
                                <div class="img">
                                    <img src="/publishing/pc-en/dist/img/macrogen/ethical-thumb-2.png" alt="Review of report">
                                    <span class="label">02</span>
                                    <span class="tit">Review of report</span>
                                </div>
                                <div class="info">
                                    <span class="desc">The contents of the report will be reviewed by the person in charge. In order to protect the identity of the person filing the report, only authorized personnel will be granted access to the report.</span>
                                    <span class="desc-sm">We protect whistleblowers.</span>
                                    <span class="desc-xs">Macrogen is committed to maintaining the confidentiality and protection of helpline users and their personal information. We ensure that any person filing a report is not subject to unfair disadvantages or retaliation.</span>
                                </div>
                            </li>
                            <li class="item">
                                <div class="img">
                                    <img src="/publishing/pc-en/dist/img/macrogen/ethical-thumb-3.png" alt="Investigation">
                                    <span class="label">03</span>
                                    <span class="tit">Investigation</span>
                                </div>
                                <div class="info">
                                    <span class="desc">An investigation will be conducted in the order in which the reports are received and the priority assigned to each report. The investigation period may vary, depending on the investigation scope and persons to be investigated.</span>
                                </div>
                            </li>
                            <li class="item">
                                <div class="img">
                                    <img src="/publishing/pc-en/dist/img/macrogen/ethical-thumb-4.png" alt="조사 완료">
                                    <span class="label">04</span>
                                    <span class="tit">Completion</span>
                                </div>
                                <div class="info">
                                    <span class="desc">After the facts are checked, those filing a report will be promptly notified of the investigation results.</span>
                                    <ul>
                                        <li><span>Suggestions and Requests</span><span>After consultation with a related department, we will inform you of the results and actions taken.</span></li>
                                        <li><span>Serious Violations</span><span>The person filing the report will be promptly notified of the results of the internal investigation. <br/> Follow-up measures,
                                        such as special audits and/or legal procedures, will be taken as needed.</span></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- e  제보 -->
        </div>
    </div>
    <!--footer 수정시 메인 footer 같이 수정해주세요-->

</body>
