<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="user_db" scope="session" class="shoppingApp.LoginUserBean" />

<%-- ログイン画面 --%>
<!DOCTYPE html>
<html>


  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>ログイン</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sign-in/">

    

    <!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

    <!-- Favicons -->
<!-- <link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180"> -->
<!-- <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png"> -->
<!-- <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png"> -->
<!-- <link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json"> -->
<!-- <link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3"> -->
<!-- <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico"> -->
<!-- <meta name="theme-color" content="#7952b3"> -->


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="./css/signin.css" rel="stylesheet">
  </head>
  <body class="text-center">
    
<main class="form-signin">
  <form action="../LoginServletShopping_ans" method="post">
    <h1 class="h3 mb-3 fw-normal">ショッピング風サイトです</h1>

    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInput" placeholder="ID" name="id" value="<%=user_db.getId()%>">
      <label for="floatingInput">ID</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="pass">
      <label for="floatingPassword">Password</label>
    </div>

<!--     <div class="checkbox mb-3"> -->
<!--       <label> -->
<!--         <input type="checkbox" value="remember-me"> Remember me -->
<!--       </label> -->
<!--     </div> -->

	<div class="d-grid gap-2">
  		<button class="w-100 btn btn-lg btn-primary" type="submit" name="submit" value="ログイン">ログイン</button>
  		<%-- ログイン済みの場合はログアウトボタンを表示 --%>
		<% if("login".equals(session.getAttribute("login_db"))) { %>
  			<button class="w-100 btn btn-lg btn-primary" type="submit" name="submit" value="logout">ログアウト</button>
  		<% } %>
 		<button class="w-100 btn btn-lg btn-outline-primary" type="button" onclick="location.href='register_boot.jsp'">新規登録はこちら</button>
	</div>

        <p class="mt-5 mb-3 text-muted">&copy; 2017–2021</p>
  </form>
</main>


    
  </body>
</html>
