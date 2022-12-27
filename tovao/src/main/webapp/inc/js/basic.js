

$(document).ready(function(){

  // 헤더
  $('#header .toggle-btn').click(function(){
    $('#header').toggleClass('open')
  })



  // board
  $('.boardArea .cont-list li .title').click(function(){
    $(this).next('.content').slideToggle(300)
  })














})
