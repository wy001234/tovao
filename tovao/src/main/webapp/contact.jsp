<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/layout/header.jsp"/>









<script>$('#header .gnb ul li.contact').addClass('on')</script>





<div class="JS contact sub">
  <div class="in">

    <h2 class="title">CONTACT</h2>

    <fieldset>
      <form action="">
        <input type="text" placeholder="성함을 입력해주세요.">
        <input type="text" placeholder="이메일을 입력해주세요.">
        <input type="text" placeholder="전화번호를 입력해주세요.">
        <textarea name="" id="" cols="30" rows="6" placeholder="자세한 내용을 입력해주세요."></textarea>

        <div class="ec-base-button">
          <button class="btnSubmit sizeS">확인</button>
          <button class="btnNormal sizeS">취소</button>
        </div>


      </form>
    </fieldset>



    <div class="cs">
      <ul class="tablize">
        <li>
          <h4>ADDRESS</h4>
          <p>서울특별시 성동구 광나루로 4가길 8</p>
        </li>
        <li>
          <h4>E-MAIL</h4>
          <p>tovao@gmail.com</p>
        </li>
        <li>
          <h4>WORK TIME</h4>
          <p>
            Sun - Thu 07:00 - 23:00<br>
            Fri - Sat 08:00 - 01:00
          </p>
        </li>
        <li>
          <h4>CALL</h4>
          <p>02.1234.5678</p>
        </li>
      </ul>
    </div>




    <div class="mapArea">
      <div id="daumRoughmapContainer1671450158449" class="root_daum_roughmap root_daum_roughmap_landing"></div>
    </div>

    <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
    <script charset="UTF-8">
    	new daum.roughmap.Lander({
    		"timestamp" : "1671450158449",
    		"key" : "2d4z8",
    		"mapWidth" : "100%",
    		"mapHeight" : "360"
    	}).render();
    </script>









  </div>
</div>
















<jsp:include page="/layout/footer.jsp"/>
