<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/layout/header.jsp"/>











<script>$('#header .gnb ul li.board').addClass('on')</script>





<div class="JS boardArea sub">
  <div class="in">

    <div class="tabArea">
      <ul class="tablize">
        <li class="on"><a href="/tovao/board/list.do">문의하기 리스트</a></li>
      </ul>
    </div>

    <ul class="cont-list">
    	<c:forEach var="item" items="${board}">
  		<li>
	        <div class="title">${item.title}</div>
	        <div class="content">
	          ${item.content}
	        </div>
      	</li>
        </c:forEach>
    </ul>
    <div class="paging">
       <c:if test="${pageGroupStart gt 1}">
	    	<span class="prev">
	            <a href="/tovao/board/list.do?pg=${pageGroupStart-1}">
	                <&nbsp;이전</a>
	        </span>
	   </c:if>
       <span class="num">
          <c:forEach var="num" begin="${pageGroupStart}" end="${pageGroupEnd}">
		     <a href="/tovao/board/list.do?&pg=${num}" class="num ${currentPage eq num ? 'on' : 'off' }">${num}</a>
		  </c:forEach>
       </span>
       <c:if test="${pageGroupEnd lt lastPageNum}">
        	<span class="next">
             	<a href="/tovao/board/list.do?&pg=${pageGroupEnd+1}">다음&nbsp;></a>
         	</span>
    	</c:if>
     </div>
  </div>
</div>















<jsp:include page="/layout/footer.jsp"/>
