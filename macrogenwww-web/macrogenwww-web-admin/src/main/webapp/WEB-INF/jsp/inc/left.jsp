<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<div class="lnb">
	<ul>
		<c:forEach var="result" items="${leftmenuList }" varStatus="status">
		<li ${result.menuSn eq selected_menu_vo.menuSn ? 'class="active"' : '' }>
			<a href="/mngrmenu/forward/${result.menuSn }">${result.menuNm }</a>
			
			<c:if test="${fn:length(result.children) gt 0 }">
			<ul>
				<c:forEach var="subResult" items="${result.children }" varStatus="subStatus">
				<li>
					<a href="/mngrmenu/forward/${subResult.menuSn }" 
						${subResult.menuSn eq selected_menu_vo.menuSn ? 'class="active"' : '' }>
						${subResult.menuNm }
					</a>
				</li>
				</c:forEach>
			</ul>
			</c:if>
			
		</li>
		</c:forEach>
		
		<!-- <li class="active"> active로 활성화
			<a href="#none">제품관리</a>
			<ul>
				<li><a href="#" class="active">전체지점</a></li>
				<li><a href="#">서울지점</a></li>
				<li><a href="#">중앙지점</a></li>
				<li><a href="#">동서울지점</a></li>
				<li><a href="#">북부지점</a></li>
				<li><a href="#">대전지점</a></li>
				<li><a href="#">대구지점</a></li>
				<li><a href="#">광주지점</a></li>
				<li><a href="#">부산지점</a></li>
				<li><a href="#">원주지점</a></li>
            </ul>
		</li>
		<li><a href="#">옵션제품관리</a></li>
		<li><a href="#">카테고리관리</a></li>
		<li><a href="#">브랜드관리</a></li>
		<li><a href="#">사은품관리</a></li>
		<li><a href="#">사은품설정</a></li>
		<li><a href="#">제품전시관리</a></li> -->
	</ul>
</div>
