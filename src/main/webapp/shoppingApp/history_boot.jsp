<%@ page import="java.util.ArrayList"%>
<%@ page import="shoppingApp.HistoryBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="user_db" scope="session" class="shoppingApp.LoginUserBean"/>

<%-- 購入履歴画面 --%>
<!DOCTYPE html>
<html>
  <head>
  	<title>購入履歴</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

    <link href="css/navbar-top.css" rel="stylesheet">
  </head>
  <body>
    
<jsp:include page="header_boot.jsp"/>

<main class="container">
  
<h1><jsp:getProperty property="name" name="user_db"/>さんの購入履歴</h1>
<%-- リクエストスコープからBeanクラスの配列を取得 --%>
<% ArrayList<HistoryBean> historyList = (ArrayList<HistoryBean>)request.getAttribute("history"); %>
 <table class="table">
  <thead>
    <tr>
      <th scope="col">商品ID</th>
      <th scope="col">商品名</th>
      <th scope="col">購入数</th>
    </tr>
  </thead>
  <tbody>
  <%-- リクエストスコープから表示する値を取得 --%>
	<% for(HistoryBean bean : historyList) { %>
		<tr>
			<%-- 商品ID --%>
			<td><%= bean.getItemId() %></td>
			<%-- 商品名 --%>
			<td><%= bean.getItemName() %></td>
			<%-- 数量（在庫） --%>
			<td class="int"><%= bean.getQuantity() %></td>
		</tr>
	<% } %>
  </tbody>
</table>

<form action="./ShoppingServlet_ans" method="post">
	<input class="btn btn-link" type="submit" value="一覧に戻る">
</form>

</main>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
    -->
  </body>
</html>