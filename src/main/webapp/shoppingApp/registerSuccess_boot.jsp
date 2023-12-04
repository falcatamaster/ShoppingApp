<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%-- 新規登録画面 --%>
<!DOCTYPE html>
<html>


  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>新規登録完了</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sign-in/">

    

    <!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

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
    <link href="./shoppingApp/css/signin.css" rel="stylesheet">
  </head>
<!--   <body class="text-center"> -->
    <body>
    
<main class="form-signin">
  <form action="./ShoppingServlet_ans" method="post">
    <h1 class="h3 mb-3 fw-normal text-center">新規登録が完了しました。</h1>
		
	<div class="d-grid gap-2">
  		<input class="btn btn-primary" type="submit" name="submit"  value="ログイン"/>
  	</div>

        <p class="mt-5 mb-3 text-muted">&copy; 2017–2021</p>
  </form>
</main>


    
  </body>
</html>
