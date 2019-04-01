<%-- 
    Document   : index
    Created on : 26/03/2019, 21:38:38
    Author     : marcos
--%>

<%@page import="br.com.fatecpg.cadastro.BD"%>
<%@page import="br.com.fatecpg.cadastro.Clientes"%>
<%@page import="br.com.fatecpg.cadastro.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Alan -->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Cliente</title>
    </head>
    <body>
        <h1>Alterar Cliente</h1>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            Clientes c = BD.getClientes().get(id);
        %>
        <form action="lista.jsp">
            <b> Id do Cliente<u> <%=id%></u> </b>
            Nome <input type="text" name="nomeCliente" value="<%=c.getNome()%>" />
            CPF <input type ="text" name="cpf" value="<%=c.getCpf()%>" />
            RG <input type ="text" name="rg" value="<%=c.getRg()%>" />
            Email <input type ="text" name="emailCliente" value="<%=c.getEmail()%>" />
            Telefone <input type ="text" name="telefoneCliente" value="<%=c.getTelefone()%>" />
            Endereço <input type ="text" name="enderecoCliente" value="<%=c.getEndereco()%>" /> <br>
            <input type="submit" name="alterarCliente" value="Alterar Cliente">
            <a href="lista.jsp"> <button>Voltar</button> </a>
            <input type="hidden" name="id" value="<%=id%>"/>
        </form>
    </body>
</html>
