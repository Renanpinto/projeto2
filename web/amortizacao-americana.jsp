<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/reset.css">
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
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
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <%
            int devedor = 0;
            int juros = 0;
            int meses = 0;
        %>
        <div class="container">
            <br>
            <br>
            <br>
            <h1 id="amortizacao">Amortização Americana</h1>
            <div class="jumbotron">
        <form>
            Valor do empréstimo:<input type="number" name="devedor" value="<%=devedor%>"/>
            Juros (%a.m.):<input type="number" name="juros" value="<%=juros%>"/>
            Prazo total em meses:<input type="number" name="meses" value="<%=meses%>"/> 
            <input type="submit" name="btEnviar" value="Enviar"/>
            <br>
        </form>
        <%if (devedor > 0 || juros > 0 || meses > 0){
            devedor = Integer.parseInt(request.getParameter("devedor"));
            juros = Integer.parseInt(request.getParameter("juros"));
            meses = Integer.parseInt(request.getParameter("meses"));
        %>
        <hr/>
        <table>
            <tr><td>Meses</td><td>Saldo Devedor</td><td>Amortização</td><td>Juros</td><td>Prestação</td></tr>
            <%for (int i=0;i<=meses;i++){%>
                <tr><td><%=i%></td><td><%=devedor%></td><td><%=devedor%></td><td><%=(devedor*juros)/100%></td><td><%=(devedor*juros)/100%></td></tr>
            <%}%>
        </table>
        <%}else {%>
            <script>alert('Dados inválidos. Digite apenas números positivos!');</script>
        <%}%>
        </div>
        </div>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
