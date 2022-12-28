<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/layout/header.jsp"/>











<script>$('#header .gnb ul li.board').addClass('on')</script>





<div class="JS boardArea sub">
  <div class="in">

    <div class="tabArea">
      <ul class="tablize">
        <li class="on"><a href="/tovao/board/list.do">투바오 소식</a></li>
        <li><a href="/tovao/board/gallery.do">카드뉴스</a></li>
      </ul>
    </div>

    <ul class="cont-gallery tablize">
    	<c:forEach var="item" items="${boards}">
  		<li>
	       <div class="img"><a href="/tovao/board/view.do?no=${item.no}"><img src="/tovao/file/${item.thumb}" alt="thumb"></a></div>
	        <div class="title"><a href="#">${item.title}</a></div>
	        <div class="date">${item.rdate}</div>
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
		     <a href="/tovao/board/gallery.do?&pg=${num}" class="num ${currentPage eq num ? 'on' : 'off' }">${num}</a>
		  </c:forEach>
       </span>
       <c:if test="${pageGroupEnd lt lastPageNum}">
        	<span class="next">
             	<a href="/tovao/board/gallery.do?&pg=${pageGroupEnd+1}">다음&nbsp;></a>
         	</span>
    	</c:if>
     </div>

  </div>
</div>







<jsp:include page="/layout/footer.jsp"/>

