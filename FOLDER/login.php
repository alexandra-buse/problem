<?php include('server.php') ?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>Panda Meets</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/sign-in/">
    <!-- Bootstrap core CSS -->
	<link href="./assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }
      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
	</head>
	<body class="text-center">
		<form class="form-signin" method="post" action="login.php">
			<img class="mb-4" src="./assets/brand/panda.jpg" alt="" width="72" height="72">
			<h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
			<?php include('errors.php'); ?>
			<div class="input-group">
				<label for="inputEmail" class="sr-only">Email address</label>
				<input type="text"  name="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
			</div>
			<div class="input-group">
				 <label for="inputPassword" class="sr-only">Password</label>
				 <input type="password" name = "password" id="inputPassword" class="form-control" placeholder="Password" required>
			</div>
			<div class="checkbox mb-3">
				<label>
					<input type="checkbox" value="remember-me"> Remember me
				</label>
			</div>
			<div class="input-group">
				<button class="btn btn-lg btn-primary btn-block" type="submit" class="btn" name="login_user">Login</button>
			</div>
			<p>
				Not yet a member? <a href="register.php">Sign up</a>
			</p>
			<p class="mt-5 mb-3 text-muted">&copy; PANDA 2020</p>
		</form>
	</body>
</html>
