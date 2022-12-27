<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/layout/header.jsp"/>
<script>
	$(function(){
		$('form').submit(function(){
		
			let uid = $('input[name=uid]').val();
			let pass = $('input[name=pass]').val();
			$('.err').hide();
			
			if(uid == ""){
				$('.err').show();
				$('.err').text("아이디를 입력해 주세요.");
				return false;
			}
			if(pass == ""){
				$('.err').show();
				$('.err').text("비밀번호를 입력해 주세요.");
				return false;
			}
			
		});
	});
</script>
        <main>
             <section class="login">
           <form action="/tovao/login.do" method="post">
               <table border="0">
                   <tr>
                       <td><input type="text" name="uid" placeholder="아이디 입력"/></td>
                   </tr>
                   <tr>
                       <td><input type="password" name="pass" placeholder="비밀번호 입력"/></td>
                   </tr>
               </table>
               <input type="submit" value="로그인" class="btnLogin"/>
               <label><input type="checkbox" name="auto_login">자동 로그인</label>
           </form>
           <div>
               <h3>회원 로그인 안내</h3>
               <p>
                   아직 회원이 아니시면 회원으로 가입하세요.
               </p>
               <div style="text-align: right;">
                   <a href="/JBoard2/user/findId.do">아이디 |</a>
                   <a href="/JBoard2/user/findPw.do">비밀번호찾기 |</a>
                   <a href="/JBoard2/user/terms.do">회원가입</a>
               </div>                    
           </div>
       </section>
        </main>
<jsp:include page="/layout/footer.jsp"/>