<%-- 
    Document   : index
    Created on : 26/03/2019, 21:38:38
    Author     : marcos
--%>

<%@page import="br.com.fatecpg.cadastro.Fornecedores"%>
<%@page import="br.com.fatecpg.cadastro.BDF"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Mohamad -->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Fornecedor</title>
    </head>
    <body>
        <h1>Exclusão de contatos</h1>

        <%
            int id = Integer.parseInt(request.getParameter("id"));
            Fornecedores f = BDF.getFornecedores().get(id);
        %>
        <form action="lista.jsp">    
            <h1>Tem certeza que deseja excluir o Fornecedor <%=id%> ? </h1>
            <a href="lista.jsp">  <button> Não (Você irá ser redirecionado para a listagem de fornecedores) </button> </a> <br> <br>
            <input type ="submit" name="excluirFornecedor" value="Sim"/>
            <input type ="hidden" name="id"  value="<%=id%>" >
        </form>
    </body>
</html>
