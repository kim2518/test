<%@ page contentType="text/html; charset=UTF-8" %>

<%
//프로젝트 경로 자동 생성
// /ws_web/notice_v1jq -> /notice_v1jq
// /ws_web/news_v1jq -> /news_v1jq
// /ws_web/url_v1jq -> /url_v1jq
String root = request.getContextPath(); 
%>

<!-- 화면 상단 메뉴 --> 
<DIV style='text-align: left'>
 
  <IMG src='<%=root %>/menu/images/top_image.jpg' width='100%' height='300px'><br>
  <nav id="topMenu">
    <ul>
    <li><a class='menuLink' href='<%=root %>/index.jsp'>HOME</a></li>
      <%
      if (session.getAttribute("id") == null){
      %>
      <li><a class='menuLink' href='<%=root %>/member/login.do'>로그인</a></li>
      <%
      }else{
      %>
      <li><a class='menuLink' href='<%=root %>/member/logout.do'>${id} 로그아웃</a></li>      
      <%  
      }
      %>
      <li><a class='menuLink' href='<%=root %>/noticev3/list.jsp'>공지사항</a></li>
      <li><a class='menuLink' href='<%=root %>/movies/list.jsp'>개봉영화</a></li>
      <li><a class='menuLink' href='<%=root %>/movies1/list.jsp'>시사회</a></li>
      <li><a class='menuLink' href='<%=root %>/movies2/list.jsp'>영화소개</a></li>
      <li><a class='menuLink' href='#'>영화추천</a></li>
      <li><a class='menuLink' href='<%=root %>/admin1/agreement.jsp'>회원가입</a></li>
      <li><a class='menuLink' href='<%=root %>/member/create.do'>JOIN</a></li>
      <li><a class='menuLink' href='<%=root %>/code/list.do'>코드목록</a></li>
      <li><a class='menuLink' href='<%=root %>/blogcategory/list.do'>게시판목록</a></li>
      <li><a class='menuLink' href='<%=root %>/blog/list.do'>게시판</a></li>
      <%
      if (session.getAttribute("act") == null){
      %>
        <li><a class='menuLink' href='<%=root %>/admin1/login_ck_form.jsp'>Admin</a></li>
      <% 
      }else{
      %>
        <li><a class='menuLink' href='<%=root %>/admin1/logout_proc.jsp'>Logout</a></li>
        <li><a class='menuLink' href='<%=root %>/admin1/list.jsp'>관리자</a></li>
      <% 
      }
      %>
      
    </ul>
  </nav>
 
</DIV>