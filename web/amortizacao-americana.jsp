<%-- 
    Document   : amortizacao-americana.jsp
    Created on : 11/09/2017, 08:01:57
    Author     : dolmedo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Amortização Americana</title>
    </head>
    <body>
        <%
            int devedor = 0;
            int juros = 0;
            int meses = 0;
        %>
        <form>
            Digite o valor total do empréstimo:<input type="number" name="devedor" value="<%=devedor%>"/>
            Digite a porcentagem de juros ao mês:<input type="number" name="juros" value="<%=juros%>"/>
            Digite o prazo total em meses:<input type="number" name="meses" value="<%=meses%>"/> 
            <input type="submit" name="btEnviar" value="Enviar"/>
        </form>
        <%if (devedor > 0 && juros > 0 && meses > 0){
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
        <%}else{%>
            <script>alert('Dados inválidos. Digite apenas números positivos!');</script>
        <%}%>
    </body>
</html>
