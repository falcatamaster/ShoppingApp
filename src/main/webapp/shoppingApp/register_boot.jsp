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
    <title>新規登録</title>

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
    <link href="./css/signin.css" rel="stylesheet">
  </head>
<!--   <body class="text-center"> -->
    <body>
    
<main class="form-signin">
  <form action="../AccountRegister" method="post">
<!--     <img class="mb-4" src="/docs/5.1/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57"> -->
    <h1 class="h3 mb-3 fw-normal text-center">新規登録</h1>

		<div class="mb-3">
		  <label for="exampleFormControlInput1" class="form-label">アカウント名</label>
		  <input class="form-control" type="text" placeholder="アカウント名" aria-label="default input example" name="name">
		</div>
		<div class="mb-3">
		  <label for="exampleFormControlInput1" class="form-label">年齢</label>
		  <input class="form-control" type="number" placeholder="年齢" aria-label="default input example" name="age">
		</div>
		<div class="mb-3">
		  <label for="exampleFormControlInput1" class="form-label">ログインID</label>
		  <input class="form-control" type="text" placeholder="ID" aria-label="default input example" name="id">
		</div>
		<div class="mb-3">
		  <label for="exampleFormControlInput1" class="form-label">パスワード</label>
		  <input class="form-control" type="password" placeholder="Password" aria-label="default input example" name="pass">
		</div>
		
	<div class="d-grid gap-2">
  		<button class="w-100 btn btn-lg btn-primary" type="submit">新規登録</button>
  	</div>

        <p class="mt-5 mb-3 text-muted">&copy; 2017–2021</p>
  </form>
</main>


    
  </body>
</html>
