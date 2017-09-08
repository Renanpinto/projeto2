<%-- 
    Document   : home
    Created on : 08/09/2017, 15:36:54
    Author     : Renan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=width-device, inicial-scale=1, shrink-to-fit=no">

  <title>POO - Projeto 2</title>

  <link rel="stylesheet" type="text/css" href="reset.css">
  <link rel="stylesheet" type="text/css" href="estilo.css">
 <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">


   <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

   
  

   
</head>
<body id="home">

    <%@include file="WEB-INF/jspf/menu.jspf" %>
<!--CABEÇALHO-->
<header >
      <div class="container">
        
          <div class="titulo2">ADS Praia Grande</div>
          <div class="titulo">SISTEMAS DE AMORTIZAÇÃO</div>
          
        </div>
      </div>
    </header>


<!--SISTEMAS-->

    <section class="bg-light" id="portfolio">
    <br/>
    <br/>
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">Sistemas</h2>
            <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
          </div>
        </div>
        <br/>
        <br/>
        <div class="row">
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#">
              <img class="img-fluid" src="img/header.jpg" alt="">
            </a>
            <div class="sistema">
              <h4>Amortização Constante</h4>
              <p class="text-muted">Amortização Contante</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#">
              
              <img class="img-fluid" src="img/header.jpg" alt="">
            </a>
            <div class="sistema">
              <h4>Amortização Americana</h4>
              <p class="text-muted">Amortização Americana</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#">
              <img class="img-fluid" src="img/header.jpg" alt="">
            </a>
            <div class="sistema">
              <h4>Tabela Price</h4>
              <p class="text-muted">Tabela Price</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- GRUPO -->
    <section class="bg-light" id="team">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">Grupo</h2>
            <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
          </div>
        </div>
        <br/>
        <br/>
        <div class="row">
          <div class="col-md-3">
            <div class="team-member">
              <img class="img-fluid rounded-circle" src="img/header.jpg" alt="">
              <h4>Denis Olmedo</h4>
              <ul class="list-inline social-buttons">
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-github"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-facebook"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-linkedin"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="team-member">
              <img class="img-fluid mx-auto rounded-circle" src="img/header.jpg" alt="">
              <h4>Diogo </h4>
              <ul class="list-inline social-buttons">
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-github"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-facebook"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-linkedin"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="team-member">
              <img class="img-fluid mx-auto rounded-circle" src="img/header.jpg" alt="">
              <h4>Jeff</h4>
              <ul class="list-inline social-buttons">
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-github"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-facebook"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-linkedin"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="team-member">
              <img class="img-fluid mx-auto rounded-circle" src="img/renan.JPG" alt="">
              <h4>Renan Pinto</h4>
              <ul class="list-inline social-buttons">
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-github"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-facebook"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fa fa-linkedin"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        
      </div>
    </section><br/>
    <%@include file="WEB-INF/jspf/footer.jspf" %>

</body>
</html>
