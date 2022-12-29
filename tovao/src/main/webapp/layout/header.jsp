<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>투바오</title>

  <!-- css -->
  <link rel="stylesheet" href="/tovao/inc/css/common.css">
  <link rel="stylesheet" href="/tovao/inc/css/button.css">
  <link rel="stylesheet" href="/tovao/inc/css/layout.css">
  <link rel="stylesheet" href="/tovao/inc/css/popup.css">
  <link rel="stylesheet" href="/tovao/inc/css/header.css">
  <link rel="stylesheet" href="/tovao/inc/css/footer.css">
  <link rel="stylesheet" href="/tovao/inc/css/contents.css">
  
  <!-- 임시css -->
  <link rel="stylesheet" href="/tovao/inc/css/board.css">
  
  <!-- 스마크에디터 -->
  <script type="text/javascript" src="/tovao/se2/js/HuskyEZCreator.js" charset="utf-8"></script>

  	 <!-- 제이쿼리 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	
  <!-- plugin -->
  <link rel="stylesheet" href="https://unpkg.com/@icon/icofont/icofont.css">
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

  <!-- js -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js" integrity="sha512-jGsMH83oKe9asCpkOVkBnUrDDTp8wl+adkB2D+//JtlxO4SrLoJdhbOysIFQJloQFD+C4Fl1rMsQZF76JjV0eQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="/tovao/inc/plugin/slick/slick/slick.minJS181.js"></script>
  <link rel="stylesheet" href="/tovao/inc/plugin/slick/slick/slick.css">
  <script src="/tovao/inc/js/basic.js"></script>
	 
    



</head>
<body>
  <div id="wrap">




    <header class="JS" id="header">
      <div class="in">

        <h1><a href="/tovao/index.do"><img src="img/h1.png" alt=""></a></h1>

        <div class="toggle-btn">
          <i class="bar xi-bars"></i>
          <i class="close xi-close-thin"></i>
        </div>

        <nav class="gnb">
          <ul class="depth01">
          	<c:choose>
               <c:when test="${not empty sessUser.uid}">
           		<li style="font-weight:bold;">${sessUser.name}님, 환영합니다.</li>
                <li class="d1 about"><a href="/tovao/board/write.do">글쓰기</a></li>
                <li class="d1 about"><a href="/tovao/board/contactList.do">문의 리스트</a></li>
                </c:when>
                <c:otherwise>
                	<li class="d1 about"><a href="/tovao/login.do">관리자 로그인</a></li>
               	</c:otherwise>
            </c:choose>      
            <li class="d1 about"><a href="/tovao/about.jsp">ABOUT</a></li>
            <li class="d1 service"><a href="/tovao/service.jsp">SERVICE</a></li>
            <li class="d1 board"><a href="/tovao/board/list.do">BOARD</a></li>
            <li class="d1 contact"><a href="/tovao/board/contact.do">CONTACT</a></li>
            <li class="d1 last"><a href="#">앱 다운받기</a></li>
          </ul>
        </nav>


      </div>
    </header>









    <div id="container">
      <div id="contents">













<!-- -->
