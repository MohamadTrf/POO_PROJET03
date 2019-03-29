/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.cadastro;

import java.util.ArrayList;

/**
 *
 * @author marcos
 */
public class BDF {
    private static ArrayList<Fornecedores> fornecedor;
    public static ArrayList<Fornecedores> getFornecedores() {
        if(fornecedor==null){
            fornecedor = new ArrayList<>();
            Fornecedores c1 = new Fornecedores();
            c1.setNome("fulano");
            c1.setCnpj("213144234");
            c1.setRazaosocial("213144234");
            c1.setEmail("dkjkdjk@dsd");
            c1.setTelefone("dkjkdjk@dsd");
            c1.setEndereco("dkjkdjk@dsd");
            fornecedor.add(c1);
            
            
        }
        return fornecedor;
    }
           
    
}
