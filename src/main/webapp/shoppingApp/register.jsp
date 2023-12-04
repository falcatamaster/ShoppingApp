<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規登録</title>
</head>
<body>
<form action="../AccountRegister" method="post">
<p>入力してください</p>
　　　名前：<input type="text" name="name" required><br>
　　　年齢：<input type="number" name="age" required><br>
ログインID：<input type="text" name="id" required><br>
パスワード：<input type="password" name="pass" required><br>
<input type="submit" value="登録"><br>
</form>
</body>
</html>