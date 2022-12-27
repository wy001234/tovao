<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/layout/header.jsp"/>
<script type="text/javascript">
//스마트에디터
var oEditors = [];
$(function(){
      nhn.husky.EZCreator.createInIFrame({
          oAppRef: oEditors,
          elPlaceHolder: "content", //textarea에서 지정한 id와 일치해야 합니다. 
          //SmartEditor2Skin.html 파일이 존재하는 경로
          sSkinURI: "/tovao/smarteditor/SmartEditor2Skin.html",  
          htParams : {
              // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
              bUseToolbar : true,             
              // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
              bUseVerticalResizer : true,     
              // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
              bUseModeChanger : true,         
              fOnBeforeUnload : function(){               
              }
          }, 
      });
      
      //저장버튼 클릭시 form 전송
      $("input[name=submit_board]").click(function(){
          oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
          $("input[name=submit_board]").submit();
      }); 
});
 
 
</script>

            <section id="admin-index">
                <div id="admin_cs_write">
                    <div class="admin_cs_write_div">
                       <form id="form" action="/tovao/board/write.do" method="post" enctype="multipart/form-data">   
	                        <table>
	                            <tbody>
	                                <tr>
	                                    <td>유형</td>
	                                    <input type="hidden" name="hit" value= "0">
	                                    <input type="file" name="thumb">
	                                    <td>
	                                        <select name="cate" id="">
	                                            <option value="고객 서비스">이벤트</option>
	                                            <option value="안전거래">카드뉴스</option>
	                                        </select>
	                                    </td>
	                                </tr>
	                                <tr>
	                                    <td>제목</td>
	                                    <td><input type="text" name="title"></td>
	                                </tr>
	                                <tr>
	                                    <td>내용</td>
	                                    <td><input type="text" name="content" id="content" rows="22"></td>
	                                </tr>
	                            </tbody>
	                        </table>
	                        <div class="btn_right">
	                            <button  class="btn_gray" onclick = "location.href = '/Kmarket/admin/cs/notice/list.do' ">목록</button>
	                            <input name="submit_board"  class="btn_blue" type="submit" value="작성하기">                  
                        	</div>
                        </form> 
                    </div>
                </div>
            </section>
        </main>
        
        
<jsp:include page="/layout/footer.jsp"/>
