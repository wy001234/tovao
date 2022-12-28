<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/layout/header.jsp"/>
            <section id="admin-index">
                <div id="admin_cs_view">
                    <div class="admin_cs_view_div">
                       <table border="0">
								<tr>
					                <th>글 번호</th>
					                <td>${board.no}</td>
					            </tr>
					            <tr>
					                <th>제목</th>
					                <td>${board.title}</td>
					            </tr>
					            <tr>
					                <th>이미지</th>
					                <td>
					                    <img src="/tovao/file/${board.thumb}" alt="thumb">
					                </td>
					            </tr>
					            <tr>
					                <th>내용</th>
					                <td>
					                    ${board.content}
					                </td>
					            </tr>               
				        </table>
                        <div class="btn_right">
                            <button class="btn_red" onclick = "location.href = '/Kmarket/admin/cs/notice/delete.do?no=${notice.no}' ">삭제</button>
                            <button class="btn_blue" onclick = "location.href = '/Kmarket/admin/cs/notice/modify.do?no=${notice.no}' ">수정</button>
                            <button class="btn_gray" onclick = "location.href = '/Kmarket/admin/cs/notice/list.do' ">목록</button>
                        </div>
                    </div>
                </div>
            </section>
        </main>
<jsp:include page="/layout/footer.jsp"/>