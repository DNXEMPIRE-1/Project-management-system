
<?php
include "db.php";

?>
<head>
	<title>Register</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
	<meta name="csrf-token" content="GNeuxUG2wUzt8MBP8iAVYcs7lI6d8NekX5G7l3tF">
	<link rel="shortcut icon" href="data:image/png;base64,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" type="image/x-icon">
	<link rel="icon" href="data:image/png;base64,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" type="image/x-icon">

	<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="assets/css/fonts.css">
	<link rel="stylesheet" type="text/css" href="assets/css/animate.css">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/1.0.12/vue.js"></script>
	<script src="assets/js/ui.js"></script>
</head>
<body>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', '', 'auto');
  ga('send', 'pageview');

</script><script>
	window.baseurl = 'alian.com'
</script>

<div id="sheet" class="animated"></div>
<div id="pop-up-prompt" class="animated">
	<header><h3 class="color-badge"></h3></header>
	<div>
		<p></p>
        <section>
            <span id="cancel-btn" class="btn"></span>
            <span id="confirm-btn" class="btn"></span>
        </section>
	</div>
</div>


<style>
    body{
        background: url("assets/img/galactic_star_background.png") no-repeat;
        background-size: cover;
    }
</style>

<div class="container">
    <div class="row">
        <div class="col-xs-12">
            
    <div class="special-form">
        <a href="index.php"><img src="assets/img/logo.png" alt=""></a>
        <h3 class="text-center">REGISTER</h3>
                <hr>
        <form method="POST" action="make.php" accept-charset="UTF-8"><input name="_token" type="hidden" value="GNeuxUG2wUzt8MBP8iAVYcs7lI6d8NekX5G7l3tF">
        <div class="form-group">
            <label for="Username" class="color-primary">Username:</label>
            <input class="form-control" placeholder="Username" autofocus="true" name="Username" type="text">
        </div>
        <div class="form-group">
            <label for="email" class="color-primary">Email:</label>
            <input class="form-control" placeholder="Email" name="email" type="text">
        </div>
        <div class="form-group">
            <label for="password" class="color-primary">Password:</label>
            <input class="form-control" placeholder="Password" name="password" type="password" value="">
        </div>
       
        <div class="form-group">
            <input class="btn btn-primary btn-wide" type="submit" value="Register">
        </div>
        </form>
        <p>Have an account? <a href="/projo/dnx/portal">login</a></p>
    </div>

        </div>
    </div>
</div>



