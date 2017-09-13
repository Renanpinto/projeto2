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

        <link rel="stylesheet" type="text/css" href="css/reset.css">
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">


        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    </head>
    <body id="home">
        <!--MENU-->
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
                    <h2 class="section-heading">Sistemas de Armotização</h2>
                    <!--<h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>-->
                </div>
            </div>
            <br/>
            <br/>
            <div class="row">
                <div class="col-md-4 col-sm-6 ">
                    <a class="icone"  href="amortizacao-constante.jsp">
                        <img class="img-fluid" src="img/icon1.jpg" alt="">
                    </a>
                    <div class="sistema">
                        <h4>Amortização Constante</h4>
                        <a class="text-muted" data-toggle="collapse" href="#amortizacao-constante" >Saiba mais <i class="fa fa-chevron-down"></i><br/></a>
                        <div class="collapse" id="amortizacao-constante">
                            <div class="card card-body">
                                <p>Sistema de Amortização Constante (SAC) é uma forma de amortização de um empréstimo por prestações 
                                    que incluem os juros, amortizando assim partes iguais do valor total do empréstimo.</p>
                                <p>Neste sistema o saldo devedor é reembolsado em valores de amortização iguais. 
                                    Desta forma, no sistema SAC o valor das prestações é decrescente, já que os juros diminuem a cada 
                                    prestação. O valor da amortização é calculada dividindo-se o valor do principal pelo número 
                                    de períodos de pagamento, ou seja, de parcelas.</p>
                                <p>O SAC é um dos tipos de sistema de amortização utilizados em financiamentos imobiliários. 
                                    A principal característica do SAC é que ele amortiza um percentual fixo do valor principal 
                                    (emissão), desde o início do financiamento. Esse percentual de amortização é sempre o mesmo, 
                                    o que faz com que a parcela de amortização da dívida seja maior no início do financiamento, 
                                    fazendo com que o saldo devedor caia mais rapidamente do que em outros mecanismos de amortização</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <a class="icone"  href="amortizacao-americana.jsp">
                        <img class="img-fluid" src="img/icon2.jpg" alt="">
                    </a>
                    <div class="sistema">
                        <h4>Amortização Americana</h4>
                        <a class="text-muted" data-toggle="collapse" href="#amortizacao-americana" >Saiba mais <i class="fa fa-chevron-down"></i> <br/></a>
                        <div class="collapse" id="amortizacao-americana">
                            <div class="card card-body">
                                <p>O Sistema de Amortização Americano é uma forma de pagamento de empréstimos que se caracteriza 
                                    pelo pagamento apenas dos juros da dívida,deixando o valor da dívida constante, 
                                    que pode ser paga em apenas um único pagamento.</p>
                                <p>Esse sistema de amortização tem a vantagem em relação ao sistema de pagamento único, 
                                    pois nele não há incidência de juros sobre juros. Os juros sempre incidem sobre o valor 
                                    original da dívida. Com isso o devedor pode quitar sua dívida quando quiser.</p>
                                <p>Tem como desvantagem que o pagamento de juros pode, em tese, ser perpétuo mesmo quando já 
                                    se pagou o equivalente à dívida em si. Para isso, basta que o número de prestações 
                                    exceda 100% quando da soma dos juros simples.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <a class="icone" href="price.jsp">
                        <img class="img-fluid" src="img/icon3.jpg" alt="">
                    </a>
                    <div class="sistema">
                        <h4>Tabela Price</h4>
                        <a class="text-muted" data-toggle="collapse" href="#tabela-price" >Saiba mais <i class="fa fa-chevron-down"></i><br/></a>
                        <div class="collapse" id="tabela-price">
                            <div class="card card-body">
                                <p>Tabela Price, também chamado de sistema francês de amortização, 
                                    é um método usado em amortização de empréstimo cuja principal característica 
                                    é apresentar prestações (ou parcelas) iguais. O método foi apresentado em 1771 por Richard 
                                    Price em sua obra "Observações sobre Pagamentos Remissivos" 
                                    (em inglês: Observations on Reversionary Payments[1]).</p>
                                <p>O método foi idealizado pelo seu autor para pensões e aposentadorias. 
                                    No entanto, foi a partir da 2ª revolução industrial que sua metodologia de cálculo 
                                    foi aproveitada para cálculos de amortização de empréstimo.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- GRUPO -->
    <section  id="team">
        <div class="container">
            <br>
            <br>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Grupo</h2>

                </div>
            </div>
            <br/>
            <br/>
            <div class="row">
                <div class="col-md-3">
                    <div class="team-member">
                        <img class="img-fluid rounded-circle" src="img/denis.jpg" alt="">
                        <h4>Denis Olmedo</h4>
                        <p class="text-muted">RA: 12904816113009</p>
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
                        <img class="img-fluid mx-auto rounded-circle" src="img/diogo.jpg" alt="">
                        <h4>Diogo Pacheco</h4>
                        <p class="text-muted">RA: 12904816113012</p>
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
                        <img class="img-fluid mx-auto rounded-circle" src="img/jeff.jpg" alt="">
                        <h4>Jefferson Costa</h4>
                        <p class="text-muted">RA: 12904816113019</p>
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
                        <p class="text-muted">RA: 12904816113036</p>
                        <ul class="list-inline social-buttons">
                            <li class="list-inline-item">
                                <a href="http://github.com/renanpinto">
                                    <i class="fa fa-github"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="http://linkedin.com/renan-pinto">
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

