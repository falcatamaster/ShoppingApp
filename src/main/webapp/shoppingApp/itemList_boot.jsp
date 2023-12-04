<%@ page import="java.util.ArrayList"%>
<%@ page import="shoppingApp.ItemBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>

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

<h1>商品一覧</h1>
<%-- リクエストスコープからBeanクラスの配列を取得 --%>
<% ArrayList<ItemBean> itemList = (ArrayList<ItemBean>)request.getAttribute("itemList"); %>
<form action="./BuyItemServlet_ans">

 <table class="table">
  <thead>
    <tr>
      <th scope="col">商品ID</th>
      <th scope="col">商品名</th>
      <th scope="col">価格</th>
      <th scope="col">在庫数</th>
      <th scope="col">数量</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
  <%-- Beanの要素数分（商品の種類分）テーブルを作成 --%>
					<% for(ItemBean bean : itemList) { %>
					<tr>
						<%-- 商品ID --%>
						<td><%= bean.getItemId() %></td>
						<%-- 商品名 --%>
						<td><%= bean.getItemName() %></td>
						<%-- 価格 --%>
						<td class="int"><%= bean.getPrice() %></td>
						<%-- 数量（在庫） --%>
						<td class="int"><%= bean.getQuantity() %></td>
						
						<% if(bean.getQuantity() != 0) { %>
						<%-- 数量（在庫）がある場合はリストボックスをと購入ボタンを表示 --%>
						<td>
							<select class="form-select" aria-label="Default select example" name="<%= bean.getItemId() %>list">
							  	<% for(int i = 0; i <= bean.getQuantity(); i++) { %>
									<option value=<%=i%>><%=i%></option>
								<% } %>
							</select>
						</td>
						<td class="button">
							<input class="btn btn-primary" type="submit" value="購入" name="<%= bean.getItemId() %>">
						</td>
						
						<%-- 数量（在庫）がない場合は「売り切れ！」と表示 --%>
						<% } else { %>
						<td></td>
						<td class="button">売り切れです。。。</td>
						<% } %>
					</tr>
				<% } %>

  </tbody>
</table>

<input class="btn btn-link" type="button" onclick="location.href='./shoppingApp/login_boot.jsp'" value="戻る">
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