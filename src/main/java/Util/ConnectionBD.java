/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Util;

import java.sql.*;


/**
 * @author Anderson
 */
public class ConnectionBD {

   
   public static Connection getConexionBD(){
    Connection cn=null;
        try{
  
            Class.forName("com.mysql.jdbc.Driver");
    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/libros","root","");
        
            System.out.println("Conectado");
        
        }
        
        
        catch(Exception e){
        
             System.out.println("no Conectado");
    
    }
  return cn; }
    public static void main(String[] args) {
    getConexionBD();
    }
    
}
