<%@ page contentType="text/html; charset=UTF-8" %>

<%
//프로젝트 경로 자동 생성
// /ws_web/notice_v1jq -> /notice_v1jq
// /ws_web/news_v1jq -> /news_v1jq
// /ws_web/url_v1jq -> /url_v1jq
String root = request.getContextPath(); 
%>
<link type="text/css" href="menu.css" rel="stylesheet" />
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="menu.js"></script>

<!-- 화면 상단 메뉴 --> 
<DIV style='text-align: left'>
 
  <IMG src='<%=root %>/menu/images/top_image.jpg' width='100%' height='300px'><br>
  <nav id="topMenu">
    <ul>
      <li><a class='menuLink' href='<%=root %>/index.jsp'>Home</a></li>
      <li><a class='menuLink' href='<%=root %>/noticev3/list.jsp'>공지사항</a></li>
      <li><a class='menuLink' href='<%=root %>/movies/list.jsp'>개봉영화</a></li>
      <li><a class='menuLink' href='<%=root %>/movies1/list.jsp'>시사회</a></li>
      <li><a class='menuLink' href='<%=root %>/movies2/list.jsp'>영화소개</a></li>
      <li><a class='menuLink' href='#'>영화추천</a></li>
      <li><a class='menuLink' href='<%=root %>/admin1/agreement.jsp'>회원가입</a></li>
     
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