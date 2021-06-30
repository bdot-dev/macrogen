* 개발환경
  eGovFrameDev-3.10.0-64bit - 이클립스 Version: 2020-06 (4.16.0)
  jdk1.8.0
  tomcat 8.5

*메이븐 멀티모듈 구성
	- 참고 : 00.메이븐멀티모듈.txt
	- pom.xml 구조, 모듈 의존성

*설정파일 분기 (local/test/real)
	- maven filter / maven profile

*data source 설정
	- server.xml 에 jndi resource 추가
	- META-INF/context.xml

*servlet context/ application context
	- web.xml, egov-com-servlet.xml, context-*.xml

*core 모듈의 구성
	- mapper query/method - (list_where)/count/list/view/seq/insert/update/delete, deleteByFk/updateColumnNm/...
	- service method - count/list/view/view/insert/update/delete, viewByPk/listByFk/updateColumnNm/deleteByFk/...

*CRUD 기본
	- prduct/list.jsp
		. js 분리 및 초기화
		. 초기값 파라미터 설정
		. 페이지로딩
		. 페이지 이동
		. 등록/수정화면 이동

	- prduct/form.jsp 참고
		. 목록의 검색조건 저장
		. 파일업로드 - 단일파일, 멀티파일
		. 레이어팝업 - 트리형
		. 레이어팝업 - 목록형
		. view 메소드 데이터 구조 (일대다)

*채번 (seq)
	- table engine 주의 : MyISAM

*ERD

*interceptors

*개발/운영기 폴더 구조
	- application용 계정 생성 (예: tomcat)
	- /app/ -> m/w, application 용도
	- /appdata/ -> 운영용 첨부파일 용도, (NAS경로)
	- /app/tomcat, /app/apache, /app/{프로젝트명}/front, /app/{프로젝트명}/admin, /app/{프로젝트명}/scheduler
	- /appdata/atch/public_{프로젝트명}, /appdata/atch/private_{프로젝트명}

*tomcat
	- common /bin/, /lib/,
	- /conf/, /logs/, /webapps/, /work/ 등은 개별 사용

*apache
	- httpd.conf, workers.properties, httpd-vhosts.conf

*jenkins
	- 설치/실행
	- 배포 Item 생성
		(svn 연결, maven 설정, 배포스크립트)

*html template
	- server : jstl
	- client : vue.js

*layout
	- sitemesh
