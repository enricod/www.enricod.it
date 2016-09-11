<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <!-- <link href='https://fonts.googleapis.com/css?family=Cutive+Mono' rel='stylesheet' type='text/css'> -->
    <!--
    <link href="https://fonts.googleapis.com/css?family=Bitter" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Rokkitt" rel="stylesheet">
    -->
    <link href="https://fonts.googleapis.com/css?family=Special+Elite" rel="stylesheet">

    <title>{$title}</title>

    <!-- Bootstrap core CSS -->
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="bower_components/bootstrap/dist/css/bootstrap-theme.min.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="css/main.css" rel="stylesheet">
    <link href="css/full-slider.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script src="bower_components/jquery/dist/jquery.min.js"></script>
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="bower_components/blueimp-gallery/js/blueimp-gallery.min.js"></script>
    <link rel="stylesheet" href="bower_components/blueimp-gallery/css/blueimp-gallery.min.css">

  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">Enrico Donelli Photographer &nbsp; &nbsp;</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse"  >
          <ul class="nav navbar-nav">
            <li {if $page eq 'index'}class="active"{/if}><a href="index.php">Home</a></li>
            <li {if $page eq 'galleries'}class="active"{/if}><a href="galleries.php">Galleries</a></li>
            <li {if $page eq 'about'}class="active"{/if}><a href="about.php">About</a></li>
            <!-- <li><a href="contact.php">Contact</a></li> -->
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
