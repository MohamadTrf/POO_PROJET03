<%-- 
    Document   : lista
    Created on : 26/03/2019, 21:38:38
    Author     : marcos
--%>

<%@page import="br.com.fatecpg.cadastro.Clientes"%>
<%@page import="br.com.fatecpg.cadastro.BD"%>
<%@page import="br.com.fatecpg.cadastro.BDF"%>
<%@page import="br.com.fatecpg.cadastro.Fornecedores"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% // operaçoes CRUD %>
         <%
             if(request.getParameter("excluirFornecedor")!=null){
                 int id = Integer.parseInt(request.getParameter("id"));
                 BDF.getFornecedores().remove(id);
                 response.sendRedirect(request.getRequestURI()); 
             }
         %>
         
         <%
             if(request.getParameter("excluirCliente")!=null){
                 int id = Integer.parseInt(request.getParameter("id"));
                 BD.getClientes().remove(id);
                 response.sendRedirect(request.getRequestURI()); 
             }
         %>
         <%
            if(request.getParameter("alterarFornecedor") !=null){
                 int id = Integer.parseInt(request.getParameter("id"));
                 Fornecedores f = new Fornecedores();
                 f.setNome(request.getParameter("nomeFornecedor"));
                 f.setRazaosocial(request.getParameter("razaoSocial"));
                 f.setCnpj(request.getParameter("cnpj"));
                 f.setEmail(request.getParameter("emailFornecedor"));
                 f.setTelefone(request.getParameter("telefoneFornecedor"));
                 f.setEndereco(request.getParameter("enderecoFornecedor"));
                 BDF.getFornecedores().set(id, f);
                 response.sendRedirect(request.getRequestURI());
            }  
         %>
         <%
            if(request.getParameter("alterarCliente")!=null){
                int id = Integer.parseInt(request.getParameter("id"));
                Clientes c = new Clientes();
                c.setNome(request.getParameter("nomeCliente"));
                c.setCpf(request.getParameter("cpf"));
                c.setRg(request.getParameter("rg"));
                c.setEmail(request.getParameter("emailCliente"));
                c.setTelefone(request.getParameter("telefoneCliente"));
                c.setEndereco(request.getParameter("enderecoCliente"));
                BD.getClientes().set(id, c);
                response.sendRedirect(request.getRequestURI());
            }   
         %>
           

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>lista</title>
    </head>
    <body>
        <h2>Clientes Cadastrados</h2>
        <table border="1">
            <tr><th>ID</th>
            <th>Nome</th>
            <th>Rg</th>
            <th>Email</th>
            <th>Telefone</th>
            <th>Endereço</th>
            <th>Comandos</th>
            </tr> 
            <%
                for (Clientes c: BD.getClientes()){
                    int id = BD.getClientes().indexOf(c); 
                
                 
             %>
             <tr>
                 <td><%=id%></td>
                 <td><%=c.getNome()%></td>
                 <td><%=c.getRg()%></td>
                 <td><%=c.getEmail()%></td>
                 <td><%=c.getTelefone()%></td>
                 <td><%=c.getEndereco()%></td>
                 <td>
                     <a href="alterar.jsp?id=<%=id%>">Alterar</a>
                     <a href="excluir.jsp?id=<%=id%>">Excluir</a>   
                      </td>
             </tr>
            
            
            <%}%>
        </table>
        <a href="adicionar.jsp"><button>Adicionar Cliente</button></a>
        
        
        
        
        
           <h2>Fornecedores Cadastrados</h2>
            <table border="1">
            <tr><th>ID</th>
            <th>Nome</th>
            <th>Razão Social</th>
            <th>Cnpj</th>
            <th>Email</th>
            <th>Telefone</th>
            <th>Endereço</th>
            <th>Comandos</th>
            </tr> 
            <%
                for (Fornecedores c: BDF.getFornecedores()){
                    int id = BDF.getFornecedores().indexOf(c); 
                
                 
             %>
            <tr>
                 <td><%=id%></td>
                 <td><%=c.getNome()%></td>
                 <td><%=c.getRazaosocial()%></td>
                 <td><%=c.getCnpj()%></td>
                 <td><%=c.getEmail()%></td>
                 <td><%=c.getTelefone()%></td>
                 <td> <%=c.getEndereco()%> </td>
                 <td>
                     <a href="alterar_fornecedor.jsp?id=<%=id%>">Alterar</a>
                     <a href="excluir_fornecedor.jsp?id=<%=id%>" >Excluir</a>  

                 </td>
             </tr>
    
            
            <%}%>
        </table>

           

        <a href="adicionar_fornecedor.jsp"><button>Adicionar Fornecedor</button></a> 
        