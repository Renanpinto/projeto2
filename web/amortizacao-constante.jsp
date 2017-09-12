<%-- 
    Document   : amortizacao-constante
    Created on : 11/09/2017, 14:50:57
    Author     : Bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=width-device, inicial-scale=1, shrink-to-fit=no">


        <link rel="stylesheet" type="text/css" href="css/reset.css">
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">


        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Amortização Constante</title>
    </head>
    <body>
        <!--MENU-->
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container">
            <br>
            <br>
            <br>
            <h1 id="amortizacao">Amortização Constante</h1>
        
          <div class="jumbotron">
              <form style="text-align: center">
            Capital:
            <input type="text" name="capital" value="" required/>
            Juros (%a.m):
            <input type="text" name="juros" value="" required/>
            Meses:
            <input type="text" name="mes" value="" required/>
            <input type="submit" name="botao"/>
          </form>
              <br>
            
             <%//if(request.getParameter("capital") != null){
                 double capital=0, juros=0, parcela=0; 
                int periodo = 0; 
                             
                
               try{ 
                capital = Double.parseDouble(request.getParameter("capital"));
                juros = Double.parseDouble(request.getParameter("juros"));
                juros= juros/100;
                periodo = Integer.parseInt(request.getParameter("mes"));
                parcela = capital/periodo;
                
               
                
               }catch(Exception e){
                   
               }
               
                double prestacaoR[] = new double[periodo+1];
                double jurosR[] = new double[periodo+1];
                double saldo[] = new double[periodo+1];
                saldo[0]=capital;
                
                for (int i = 1 ; i <= periodo ; i++){
                    jurosR[i] = saldo[i-1]*juros;
                    prestacaoR[i] = parcela+jurosR[i];
                    saldo[i]=saldo[i-1]-parcela;
}
             
             
        %>
            
        <table class="table table-striped">
            <tr><th>Periodo</th><th>Prestação</th><th>Juros</th><th>Amortização</th><th>Saldo Devedor</th></tr>
            <tr><td>0</td><td>   </td><td>   </td><td>   </td><td><%=capital%></td></tr>
            
            <%for(int i = 1 ; i <= periodo ; i++){
            %>
            <tr><td><%=i%></td><td><%=String.format("%.2f", prestacaoR[i])%></td><td><%=String.format("%.2f", jurosR[i])%></td><td><%=String.format("%.2f", parcela)%></td><td><%=String.format("%.2f", saldo[i])%></td></tr>
            
            
            <%}%>
            
           
           
        </table>
            
        
          </div>
        </div>
            <%@include file="WEB-INF/jspf/footer.jspf" %> 
    </body>
</html>