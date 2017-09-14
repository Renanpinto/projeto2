

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=width-device, inicial-scale=1, shrink-to-fit=no">
        
        <title>Price</title>


        <%@include file="WEB-INF/jspf/import.jspf" %>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Price</title>
    </head>
    <body>
        
        <!--MENU-->
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container conteudo">
            <br>
            <br>
            <br>
            <br>
            <h1 id="amortizacao">Sistema Price</h1>
        
          <div class="jumbotron">
        
        <!-- Declaração de parametros -->
        <% double capital = 0, j=0, p=0 , a =0 ; double juros = 0; int mes = 2; 
           double parcela = 0 ;
           String parametroC,parametroJ ;%>
           <!-- Criação do Form -->
        <form>
            <div style="text-align: center">
            Capital:
            <input type="text" name="capital" value="" required="">
            Juros (%a.m):
            <input type="text" name="juros" value="" required=""/>
            Meses:
            <input type="text" name="mes" value="" required=""/>
            <input type="submit" name="botao"/>
            </div>
            <br>
        </form>
        
            <%
                //Verificação se os campos estão preenchidos, para poder exibir a tabela 
                if (request.getParameter("capital")!= null && request.getParameter("juros")!=null && request.getParameter("mes") !=null){
               try{ 
                //Iniciar parametro , e fazer a verificação de ponto e virgula 
            parametroC = request.getParameter("capital");
            parametroC = parametroC.replace(',', '.'); 
            capital = Double.parseDouble(parametroC);
            
            parametroJ = request.getParameter("juros");
            parametroJ = parametroJ.replace(',', '.'); 
            juros = Double.parseDouble(parametroJ);
            
            mes = Integer.parseInt(request.getParameter("mes"));
            
            //Calculo da parcela mensal
            parcela = capital/((1-(Math.pow((1 + (juros/100)),-mes)))/(juros/100));
               
            //Declaração dos vetores para o calculo da tabela 
           double capitalR [] = new double[mes+1];
           double jurosR [] = new double[mes+1];
           double amortizacao[] = new double[mes+1];
           capitalR[0] = capital ;
           
           //Criação de um for para iniciar vetores
           for (int z = 1 ; z <= mes ;z++){
               capitalR[z]=0;
               jurosR[z]=0;
               amortizacao[z]=0;
           }
           
           //Criação de um for para calculo da tabela price
           for (int i = 1 ; i <= mes ; i++){
               jurosR[i] = (capitalR[i-1]/100)*juros;
               amortizacao[i] = parcela - jurosR[i];
               capitalR[i] = capitalR[i-1] - amortizacao[i]; 
           }
        %>
           
           <!--Criação da tabela-->
        <table class="table table-striped">
            
            <tr><th>Periodo</th><th>Saldo Devedor</th><th>Amortização</th><th>Juros</th><th>Prestação</th></tr>
            <tr><td>0</td><td><%=String.format("%.2f",capital)%></td></tr>
            
            <% //Criação de um for para apresentação da tabela
                for(int x = 1 ; x <= mes ; x++){
            %>
            <tr><td><%=x%></td><td><%=String.format("%.2f", capitalR[x])%></td><td><%=String.format("%.2f", amortizacao[x])%></td><td><%=String.format("%.2f", jurosR[x])%></td><td><%=String.format("%.2f", parcela)%></td></tr>
            <%// Soma dos totais  
            p = p + capitalR[x];
            j = j + jurosR[x]; 
            a = a + amortizacao[x];
                    }%>
            
            <tr><td>Total</td><td><%=0%></td><td><%=String.format("%.2f",a)%></td><td><%=String.format("%.2f",j)%></td><td><%=String.format("%.2f",parcela*mes)%></td></tr>  
           
            
            <%}catch(Exception ex){
                 out.println("<h2 style=\"text-align:center\">Parâmetros Inválidos</h2>");    
               }}%>
        </table>
          </div>
        </div>
        <br>
        <br>
        
        
        <footer class="footer">
             <%@include file="WEB-INF/jspf/footer.jspf" %>
             </footer>
    </body>
</html>
