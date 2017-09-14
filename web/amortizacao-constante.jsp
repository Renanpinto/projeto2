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
        
        <title>Amortização Constante</title>


         <%@include file="WEB-INF/jspf/import.jspf" %>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Amortização Constante</title>
    </head>
    <body>
        <%double capital = 0, juros=0, parcela=2, j=0, p=0, k=0; 
                int periodo = 1;  %>
        <!--MENU-->
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container conteudo">
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
            
             <%
                                
if (request.getParameter("capital")!= null && request.getParameter("juros")!=null && request.getParameter("mes") !=null){
                               try{ 
                capital = Double.parseDouble(request.getParameter("capital"));
                juros = Double.parseDouble(request.getParameter("juros"));
                juros= juros/100;
                periodo = Integer.parseInt(request.getParameter("mes"));
                parcela = capital/periodo;
                
               
                
              
               
                double prestacaoR[] = new double[periodo];
                double jurosR[] = new double[periodo];
                double saldo[] = new double[periodo];
                double prestacaoTotal=0, jurosTotal=0;
                saldo[0]=capital;

                for (int i = 0 ; i < periodo ; i++){
                    if(i==0){
                        jurosR[i] = saldo[i]*juros;
                        prestacaoR[i] = parcela+jurosR[i];
                        saldo[i]=saldo[i]-parcela;
                    }else{
                        jurosR[i] = saldo[i-1]*juros;
                        prestacaoR[i] = parcela+jurosR[i];
                        saldo[i]=saldo[i-1]-parcela;
                    }
                    prestacaoTotal = prestacaoTotal + prestacaoR[i];
                    jurosTotal = jurosTotal + jurosR[i];
                }  
        %>
           
        <table class="table table-striped">
            <tr><th>Periodo</th><th>Prestação</th><th>Juros</th><th>Amortização</th><th>Saldo Devedor</th></tr>
            <tr><td>0</td><td>   </td><td>   </td><td>   </td><td><%=capital%></td></tr>
            
            <% for(int i = 0; i < periodo; i++){
            %>
            <tr><td><%=i+1%></td><td><%=String.format("%.2f", prestacaoR[i])%></td><td><%=String.format("%.2f", jurosR[i])%></td><td><%=String.format("%.2f", parcela)%></td><td><%=String.format("%.2f", saldo[i])%></td></tr>
                       
            <% p = p + prestacaoR[i];
               j = j + jurosR[i]; 
               k = k+parcela;}%>
            
             
            <tr><td>Total</td><td><%=String.format("%.2f",p)%></td><td><%=String.format("%.2f",j)%></td><td><%=String.format("%.2f",k)%></td><td><%=0%></td></tr>  

                    <% }catch(Exception e){
                      out.println("<h2 style=\"text-align:center\">Parâmetros Inválidos</h2>");   
               }}%>
        </table>
              
          </div>
        </div>
        <br>
        <br>
        <br>
        
        <footer class="footer">
            <%@include file="WEB-INF/jspf/footer.jspf" %> 
            </footer>
    </body>
</html>

