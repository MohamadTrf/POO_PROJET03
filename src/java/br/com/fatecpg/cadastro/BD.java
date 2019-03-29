/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.cadastro;

import java.util.ArrayList;
import java.util.Set;

/**
 *
 * @author marcos
 */
public class BD {
    private static ArrayList<Clientes> cliente;
    public static ArrayList<Clientes> getClientes() {
        if(cliente==null){
            cliente = new ArrayList<>();
            Clientes c1 = new Clientes();
            c1.setNome("fulano");
            c1.setRg("213144234");
            c1.setEmail("dkjkdjk@dsd");
            c1.setTelefone("dkjkdjk@dsd");
            c1.setEndereco("dkjkdjk@dsd");
            cliente.add(c1);
            
            
        }
        return cliente;
    }
           
    
}
