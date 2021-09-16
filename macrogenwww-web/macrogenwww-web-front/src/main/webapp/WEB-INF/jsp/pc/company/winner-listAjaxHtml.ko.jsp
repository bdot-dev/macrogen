<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglib.jsp"%>
<div class="modal-dialog modal-dialog-centered modal-lg">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title">마크로젠 과학자상</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <div class="list-of-winners">
                <div class="title">역대 수상자</div>
                <ul class="clearfix">
                    <li>
                        <div class="img"><img src="/publishing/dist/img/@temp/macrogen/profile-circle-1.png" alt="김형범"></div>
                        <div class="name">김형범</div>
                        <div class="desc">제 17회 수상자</div>
                    </li>
                    <li>
                        <div class="img"><img src="/publishing/dist/img/@temp/macrogen/profile-circle-2.png" alt="류제황"></div>
                        <div class="name">류제황</div>
                        <div class="desc">제 16회 수상자</div>
                    </li>
                    <li>
                        <div class="img"><img src="/publishing/dist/img/@temp/macrogen/profile-circle-3.png" alt="황철상"></div>
                        <div class="name">황철상</div>
                        <div class="desc">제 14회 수상자</div>
                    </li>
                    <li>
                        <div class="img"><img src="/publishing/dist/img/@temp/macrogen/profile-circle-4.png" alt="김진우"></div>
                        <div class="name">김진우</div>
                        <div class="desc">제 13회 수상자</div>
                    </li>
                    <li>
                        <div class="img"><img src="/publishing/dist/img/@temp/macrogen/profile-circle-1.png" alt="김형범"></div>
                        <div class="name">김형범</div>
                        <div class="desc">제 17회 수상자</div>
                    </li>
                    <li>
                        <div class="img"><img src="/publishing/dist/img/@temp/macrogen/profile-circle-2.png" alt="류제황"></div>
                        <div class="name">류제황</div>
                        <div class="desc">제 16회 수상자</div>
                    </li>
                    <li>
                        <div class="img"><img src="/publishing/dist/img/@temp/macrogen/profile-circle-3.png" alt="황철상"></div>
                        <div class="name">황철상</div>
                        <div class="desc">제 14회 수상자</div>
                    </li>
                    <li>
                        <div class="img"><img src="/publishing/dist/img/@temp/macrogen/profile-circle-4.png" alt="김진우"></div>
                        <div class="name">김진우</div>
                        <div class="desc">제 13회 수상자</div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="modal-footer">
            <div class="pagination-wrap">
                <ul class="navigation">
                    <li class="page-item first">
                        <a class="page-link" href="#">
                            <span class="sr-only">맨 앞</span>
                        </a>
                    </li>
                    <li class="page-item prev">
                        <a class="page-link" href="#">
                            <span class="sr-only">이전</span>
                        </a>
                    </li>
                    <li class="page-item next">
                        <a class="page-link" href="#">
                            <span class="sr-only">다음</span>
                        </a>
                    </li>
                    <li class="page-item last">
                        <a class="page-link" href="#">
                            <span class="sr-only">맨 뒤</span>
                        </a>
                    </li>
                </ul>
                <ul class="pagination">
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                </ul>
            </div>
        </div>
        <!--                    <div class="modal-footer">-->
        <!--                        <button type="button" class="btn btn-sm btn-white" data-bs-dismiss="modal">Close</button>-->
        <!--                        <button type="button" class="btn btn-sm btn-primary">Save changes</button>-->
        <!--                    </div>-->
    </div>
</div>
<script>
	$(function() {
		$('#modalListOfWinners .btn-close').on('click', function() {
			window.history.replaceState({}, document.title, ' ');
		});
	});
</script>
