

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <h1>Amortização Price</h1>
        <form>
            Capital:
            <input type="text" name="capital" value=""/>
            Juros:
            <input type="text" name="juros" value=""/>
            Meses:
            <input type="text" name="mes" value=""/>
            <input type="submit" name="botao"/>
        </form>
        
        <% double capital = 0 ; double juros = 0; int mes = 2; 
           double parcela = 0 ;
               try{ 
            capital = Double.parseDouble(request.getParameter("capital"));
            juros = Double.parseDouble(request.getParameter("juros"));
            mes = Integer.parseInt(request.getParameter("mes"));
            
            parcela = capital/((1-(Math.pow((1 + (juros/100)),-mes)))/(juros/100));
               }catch(Exception e){
                       
               }
               
           
           double capitalR [] = new double[mes+1];
           double jurosR [] = new double[mes+1];
           double amortizacao[] = new double[mes+1];
           capitalR[0] = capital ;
           
           for (int z = 1 ; z <= mes ;z++){
               capitalR[z]=0;
               jurosR[z]=0;
               amortizacao[z]=0;
           }
           
           for (int i = 1 ; i <= mes ; i++){
               jurosR[i] = (capitalR[i-1]/100)*juros;
               amortizacao[i] = parcela - jurosR[i];
               capitalR[i] = capitalR[i-1] - amortizacao[i]; 
           }
        %>
        
        <table>
            <tr><th>Periodo</th><th>Saldo Devedor</th><th>Amortização</th><th>Juros</th><th>Prestação</th></tr>
            <tr><td>0</td><td><%=capital%></td></tr>
            
            <%for(int x = 1 ; x <= mes ; x++){
            %>
            <tr><td><%=x%></td><td><%=String.format("%.2f", capitalR[x])%></td><td><%=String.format("%.2f", amortizacao[x])%></td><td><%=String.format("%.2f", jurosR[x])%></td><td><%=String.format("%.2f", parcela)%></td></tr>
            
            
            <%}%>
        </table>
    </body>
</html>
