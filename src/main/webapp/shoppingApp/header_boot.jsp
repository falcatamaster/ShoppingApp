<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="user_db" scope="session" class="shoppingApp.LoginUserBean" />

<%-- ヘッダー画面 --%>
<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><jsp:getProperty property="name" name="user_db"/>さんのページ</a>
     <div class="d-flex justify-content-end" id="navbarCollapse">
      <ul class="navbar-nav me-auto mb-2 mb-md-0">
        <li class="nav-item">
        	<a class="nav-link active" href="/LoginServletShopping_ans?submit=history">購入履歴</a>
<!--		  ローカル用  　 -->
<!--           <a class="nav-link active" href="/ShoppingApp/LoginServletShopping_ans?submit=history">購入履歴</a> -->
        </li>
        <li class="nav-item">
        	<a class="nav-link active" href="/LoginServletShopping_ans?submit=logout">ログアウト</a>
<!--         ローカル用 -->
<!--           <a class="nav-link active" href="/ShoppingApp/LoginServletShopping_ans?submit=logout">ログアウト</a> -->
        </li>
      </ul>
    </div>
  </div>
</nav>
