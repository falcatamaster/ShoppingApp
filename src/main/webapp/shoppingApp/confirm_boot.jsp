<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="item" scope="request" class="shoppingApp.ItemBean"/>

<%-- 商品一覧画面 --%>
<!DOCTYPE html>
<html>
  <head>
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

<h1>購入確認</h1>
<p>つぎの商品を購入しますか？</p>
		<form action="./ResultServlet_ans" method="post">
			
 <table class="table">
  <thead>
    <tr>
      <th scope="col">商品ID</th>
      <th scope="col">商品名</th>
      <th scope="col">価格</th>
      <th scope="col">在庫数</th>
      <th scope="col">購入数</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
  	<tr>
		<%-- リクエストスコープから表示する値を取得 --%>
		<td><jsp:getProperty property="itemId" name="item"/></td>
		<td><jsp:getProperty property="itemName" name="item"/></td>
		<td class="int"><jsp:getProperty property="price" name="item"/></td>
		<td class="int"><jsp:getProperty property="quantity" name="item"/></td>
		<td class="int"><%=request.getAttribute("quantity")%></td>
		<td class="button">
			<input class="btn btn-primary" type="submit" value="購入する">
			<%-- 購入処理を行うため、hidden（画面には表示されない情報）に商品IDと購入数を設定しておく --%>
			<input type="hidden" name="item_id" value="<%=item.getItemId()%>" />
			<input type="hidden" name="item_quantity" value="<%=request.getAttribute("quantity")%>" />
		</td>
	</tr>
  </tbody>
</table>

</form>

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