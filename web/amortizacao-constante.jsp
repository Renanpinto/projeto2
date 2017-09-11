<%-- 
    Document   : amortizacao-constante
    Created on : 11/09/2017, 14:50:57
    Author     : Bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <h1>Amortização Constante</h1>
        <form>
            Capital:
            <input type="text" name="capital" value="" required/>
            Juros (%a.m):
            <input type="text" name="juros" value="" required/>
            Meses:
            <input type="text" name="mes" value="" required/>
            <input type="submit" name="botao"/>
            
             <% double capital = 0, juros=0, parcela=2; 
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
            
        <table>
            <tr><th>Periodo</th><th>Prestação</th><th>Juros</th><th>Amortização</th><th>Saldo Devedor</th></tr>
            <tr><td>0</td><td>   </td><td>   </td><td>   </td><td><%=capital%></td></tr>
            
            <%for(int i = 1 ; i <= periodo ; i++){
            %>
            <tr><td><%=i%></td><td><%=String.format("%.2f", prestacaoR[i])%></td><td><%=String.format("%.2f", jurosR[i])%></td><td><%=String.format("%.2f", parcela)%></td><td><%=String.format("%.2f", saldo[i])%></td></tr>
            
            
            <%}%>
        </table>
            
        </form>
    </body>
</html>
