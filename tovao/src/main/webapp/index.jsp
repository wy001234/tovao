<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/layout/header.jsp"/>



<section class="JS mainVisual pc">
  <div class="in">
    <ul class="sliderArea">
      <li class="item"><a href="#"><img src="img/pc-main-01.jpg" alt=""></a></li>
      <li class="item"><a href="#"><img src="img/pc-main-02.jpg" alt=""></a></li>
    </ul>
  </div>
</section>
<section class="JS mainVisual mo">
  <div class="in">
    <ul class="sliderArea">
      <li class="item"><a href="#"><img src="img/mo-main-01.jpg" alt=""></a></li>
      <li class="item"><a href="#"><img src="img/mo-main-02.jpg" alt=""></a></li>
    </ul>
  </div>
</section>
<script>
$('.mainVisual .sliderArea').slick({
  //vertical:true,
  //verticalSwiping:true,
  //zIndex:110,
  //cssEase:'cubic-bezier(0.77, 0, 0.175, 1)',
  prevArrow:'<button type="button" class="slick-prev font"></button>',
  nextArrow:'<button type="button" class="slick-next font"></button>',
  // css + small/medium/big
  // font + up/down
  // image + small/medium/big , up/down, white
  autoplay: true,
  autoplaySpeed: 3500,
  speed: 800,
  fade: false,
  infinite: true,
  dots: true,
  slidesToShow: 1,
  centerMode: true,
  adaptiveHeight: true
}).slick('setPosition');
</script>






<section class="JS main-01">
  <div class="in">

    <a href="#">앱 다운받기</a>

  </div>
</section>






<section class="JS main-02">
  <div class="in">

    <p>
      <b>자전거를 타는 즐거움</b>과 비교할 수 있는 것은<br>
      아무것도 없습니다.
    </p>
    <span>
      -존F 케네디
    </span>

  </div>
</section>




<section class="JS main-03">
  <div class="in">

    <div class="top tablize cellize">
      <div class="box text">
        <h5>B2B</h5>
        <h2>자전거 매장을 위한<br>ERP 프로그램</h2>
        <a href="#">LEARN MORE <i class="xi-angle-right-thin"></i></a>
      </div>
      <div class="box img" style="background-image:url('img/main-03-01.jpg')"></div>
    </div>

    <div class="bottom tablize cellize">
      <div class="box img" style="background-image:url('img/main-03-02.jpg')"></div>
      <div class="box text">
        <h5>B2C</h5>
        <h2>재고확인부터 매장정보까지<br>토탈 APP</h2>
        <a href="#">LEARN MORE <i class="xi-angle-right-thin"></i></a>
      </div>
    </div>

  </div>
</section>


<section class="JS main-04">
  <div class="in tablize">

    <div class="map">
      <img class="mo" src="img/main-04-mo.jpg" alt="">
      <img class="pc" src="img/main-04-pc.jpg" alt="">
    </div>

    <div class="txt">
      <ul class="tablize">
        <li>
          <h2>MVP 출시</h2>
          <h3>TOVAO 1.0 (2021.06 출시)</h3>
          <p>
            TOVAO 1.0 어플연동<br>
            자전거 매장 재고 등록 프로그램<br>
            <b>30개 가맹점 모집 완료</b>
          </p>
        </li>
        <li>
          <h2>본 서비스 런칭 예정</h2>
          <h3>TOVAO 2.0 (2022.10 개발완료)</h3>
          <p>
            <b>100개 가맹점 추가 입점 예정</b><br>
            TOVAO 2.0 출시 시<br>
            130군데 가맹점 확보
          </p>
        </li>
      </ul>
    </div>

  </div>
</section>



<section class="JS main-05">
  <div class="in">

    <div class="top tablize cellize">
      <div class="box img"><img src="img/main-05-01.jpg" alt=""></div>
      <div class="box text">
        <h2><b>내 주변 매장</b>을 통해<br>손쉬운 재고 체크!</h2>
        <p>당신에게 필요한 서비스를 손쉽게 찾아보세요.</p>
      </div>
    </div>

    <div class="bottom tablize cellize">
      <div class="box text">
        <h2><b>부품재고·서비스 매장 찾기를</b><br>한눈에, 한번에!</h2>
        <p>당신에게 필요한 서비스를 손쉽게 찾아보세요.</p>
      </div>
      <div class="box img"><img src="img/main-05-02.jpg" alt=""></div>
    </div>

  </div>
</section>






<section class="JS main-06">
  <div class="in">

    <h2>수기가 아닌 자동화로 관리되는<br><b>나의 점포 관리 프로그램</b></h2>
    <p>
      고객관리도 손쉽게 나의 점포에 고객들을 손쉽게 연락 및 고객제품의 상태를 파악할 수 있어요.
    </p>

    <div class="img"><img src="img/main-06.png" alt=""></div>

  </div>
</section>



<section class="JS main-07">
  <div class="in">

    <h2>생생한 투바오 후기 <b>1850개</b></h2>

    <ul class="sliderArea">
      <li class="item">
        <div class="img"></div>
        <div class="name">김**님</div>
        <div class="date">2022.11.01</div>
        <div class="rate"><img src="img/rate_04.png" alt=""></div>
        <p>
          자전거 사는데 너무 오래 걸렸던 시간이 투바오를 사용하면서 너무 편리 해졌습니다<br>
          첫 자전거 살때 재고 찾아 전화 통화만 10군데 넘게 했던 기억이 있는데
          <b>투바오 쓰면서 매장 찾기도 자전거 찾기도 좋습니다.</b>
        </p>
      </li>
      <li class="item">
        <div class="img"></div>
        <div class="name">김**님</div>
        <div class="date">2022.11.01</div>
        <div class="rate"><img src="img/rate_05.png" alt=""></div>
        <p>
          캄파놀로를 사용중인데요, 변속세팅 받을려고 해도 수리하는 매장이 없어
          자전거 기변까지 생각했는데요.
          여기서 카팜놀로 <b>수리매장 검색하고 좋은 서비스 받았습니다.</b>
          <br>우리 동네에 이렇게 많은 자전거 매장이 있는지 몰랐어요.
        </p>
      </li>
      <li class="item">
        <div class="img"></div>
        <div class="name">김**님</div>
        <div class="date">2022.11.01</div>
        <div class="rate"><img src="img/rate_04.png" alt=""></div>
        <p>
          혼자 매장을 운영하면서 할일이 너무 많았는데 투바오 솔루션을 사용하면서
          업무 부담은 줄고 매출은 늘었어요.<br>
          <b>자전거 전용 솔루션이라.. 왜 이제야 나왔을까요.</b>
        </p>
      </li>
      <li class="item">
        <div class="img"></div>
        <div class="name">김**님</div>
        <div class="date">2022.11.01</div>
        <div class="rate"><img src="img/rate_05.png" alt=""></div>
        <p>
          캄파놀로를 사용중인데요, 변속세팅 받을려고 해도 수리하는 매장이 없어
          자전거 기변까지 생각했는데요.
          여기서 카팜놀로 <b>수리매장 검색하고 좋은 서비스 받았습니다.</b>
          <br>우리 동네에 이렇게 많은 자전거 매장이 있는지 몰랐어요.
        </p>
      </li>
    </ul>

  </div>
</section>

<script>
$('.main-07 .sliderArea').slick({
  //vertical:true,
  //verticalSwiping:true,
  //zIndex:110,
  //cssEase:'cubic-bezier(0.77, 0, 0.175, 1)',
  prevArrow:'<button type="button" class="slick-prev font"></button>',
  nextArrow:'<button type="button" class="slick-next font"></button>',
  // css + small/medium/big
  // font + up/down
  // image + small/medium/big , up/down, white
  autoplay: true,
  autoplaySpeed: 3500,
  speed: 800,
  fade: false,
  infinite: true,
  dots: false,
  slidesToShow: 3,
  adaptiveHeight: true,
  responsive: [
    {
      breakpoint: 768,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
        centerMode: true,
      }
    },
    // You can unslick at a given breakpoint now by adding:
    // settings: "unslick"
    // instead of a settings object
  ]
}).slick('setPosition');
</script>









<section class="JS main-08">
  <div class="in tablize">

    <div class="box txt">
      <h2>
        TOVAO<br>
        <span>Please get in touch</span>
      </h2>
      <table>
        <tr>
          <td>TEL</td>
          <td>02.1234.5678</td>
        </tr>
        <tr>
          <td>E-MAIL</td>
          <td>tovao@gmail.com</td>
        </tr>
        <tr>
          <td>ADDRESS</td>
          <td>서울특별시 성동구 광나루로 4가길 8</td>
        </tr>
      </table>
    </div>

    <div class="box map">
      <div id="daumRoughmapContainer1671450158449" class="root_daum_roughmap root_daum_roughmap_landing"></div>
    </div>


  </div>
</section>
<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1671450158449",
		"key" : "2d4z8",
		"mapWidth" : "100%",
		"mapHeight" : "360"
	}).render();
</script>




<section class="JS main-09">
  <div class="in">

    <h2>TOVAO 카드뉴스</h2>

    <ul class="tablize">
      <li><a href="#"><img src="img/main-09-01.jpg" alt=""></a></li>
      <li><a href="#"><img src="img/main-09-02.jpg" alt=""></a></li>
      <li><a href="#"><img src="img/main-09-03.jpg" alt=""></a></li>
      <li><a href="#"><img src="img/main-09-04.jpg" alt=""></a></li>
      <li><a href="#"><img src="img/main-09-05.jpg" alt=""></a></li>
      <li><a href="#"><img src="img/main-09-06.jpg" alt=""></a></li>
    </ul>




  </div>
</section>



<jsp:include page="/layout/footer.jsp"/>
