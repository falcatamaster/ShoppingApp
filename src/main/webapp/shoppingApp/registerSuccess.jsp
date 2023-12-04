<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="user_db" scope="session" class="shoppingApp.LoginUserBean" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>登録完了</title>
	</head>
	<body>
	新規登録が完了しました!
		<form action="./ShoppingServlet_ans" method="post">
<%-- 			<input type="hidden" name="id" value="<%=user_db.getId()%>"/> --%>
<%-- 			<input type="hidden" name="pass" value="<%=user_db.getPass()%>"/> --%>
			<input class="common_button" type="submit" name="submit"  value="ログイン"/>
		</form>
	</body>
</html>