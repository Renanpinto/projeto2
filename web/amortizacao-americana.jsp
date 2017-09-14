<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@include file="WEB-INF/jspf/import.jspf" %>
        <meta charset="utf-8">
        <meta name="viewport" content="width=width-device, inicial-scale=1, shrink-to-fit=no">
        <title>Amortização Americana</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <%
            double devedor = 0;
            double juros = 0;
            int meses = 0;
        %>
        <div class="container conteudo">
            <br>
            <br>
            <br>
            <h1 id="amortizacao">Amortização Americana</h1>
            <div class="jumbotron">
        <form style="text-align: center">
            Empréstimo: <input type="number" name="devedor" value="<%=devedor%>" required step="0.01"/>
            Juros (%a.m.): <input type="number" name="juros" value="<%=juros%>" required step="0.01"/>
            Meses: <input type="number" name="meses" required value="<%=meses%>"/> 
            <input type="submit" name="btEnviar" value="Enviar"/>
            <br>
            <br>
        </form>
        <%
            if (request.getParameter("devedor")!= null && request.getParameter("juros")!=null && request.getParameter("meses") !=null){
                try{
                devedor = Double.parseDouble(request.getParameter("devedor"));
                juros = Double.parseDouble(request.getParameter("juros"))*devedor/100;
                meses = Integer.parseInt(request.getParameter("meses"));
        %>
        <hr/>
        <table class="table table-striped">
            <tr><th>Meses</th><th>Saldo Devedor</th><th>Amortização</th><th>Juros</th><th>Prestação</th></tr>
            <tr><td>0</td><td><%=new DecimalFormat("0.00").format(devedor)%></td><td>-</td><td>-</td><td>-</td></tr>
            <%for (int i=1;i<=meses-1;i++){%>
                <tr><td><%=i%></td><td><%=new DecimalFormat("0.00").format(devedor)%></td><td>-</td><td><%=new DecimalFormat("0.00").format(juros)%></td><td><%=new DecimalFormat("0.00").format(juros)%></td></tr>
            <%}%>
            <tr><td><%=meses%></td><td>-</td><td><%=new DecimalFormat("0.00").format(devedor)%></td><td><%=new DecimalFormat("0.00").format(juros)%></td><td><%=new DecimalFormat("0.00").format(juros+devedor)%></td></tr>
            <tr><td>Total</td><td>-</td><td><%=new DecimalFormat("0.00").format(devedor)%></td><td><%=new DecimalFormat("0.00").format(juros*meses)%></td><td><%=new DecimalFormat("0.00").format(juros*meses+devedor)%></td></tr>
        </table>
        
        <%}catch(Exception ex){
                 out.println("<h2 style=\"text-align:center\">Parâmetros Inválidos</h2>");    
               }}%>
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
