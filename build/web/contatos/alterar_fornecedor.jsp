<%-- 
    Document   : index
    Created on : 26/03/2019, 21:38:38
    Author     : marcos
--%>

<%@page import="br.com.fatecpg.cadastro.BDF"%>
<%@page import="br.com.fatecpg.cadastro.Fornecedores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Alan -->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Fornecedor</title>
    </head>
    <body>
        <h1>Alterar fornecedor</h1>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            Fornecedores f = BDF.getFornecedores().get(id);
        %>
        <form action="lista.jsp">
            <b> Id do Fornecedor <u> <%=id%></u> </b>
            Nome: <input type="text" name="nomeFornecedor" value="<%=f.getNome()%>" />
            Razão Social <input type ="text" name="razaoSocial" value="<%=f.getRazaosocial()%>" />
            CNPJ <input type ="text" name="cnpj" value="<%=f.getCnpj()%>" />
            Email <input type ="text" name="emailFornecedor" value="<%=f.getEmail()%>" />
            Telefone <input type ="text" name="telefoneFornecedor" value="<%=f.getTelefone()%>" />
            Endereço <input type ="text" name="enderecoFornecedor" value="<%=f.getEndereco()%>" /> <br>
            <input type="submit" name="alterarFornecedor" value="Alterar Fornecedor">
            <a href="lista.jsp"> <button>Voltar</button> </a>
            <input type="hidden" name="id" value="<%=id%>"/>
        </form>
    </body>
</html>
