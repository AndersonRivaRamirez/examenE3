/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO;
import BEAN.librosBEAN;
import Util.ConnectionBD;
import java.sql.*;
import java.util.ArrayList;
/**
 *
 * 
 */
public class libroDAO {
    Connection cn=null;
    PreparedStatement pt=null;
    ResultSet rs=null;
    librosBEAN objlibro= new librosBEAN();
    ArrayList<librosBEAN> lista=null;
    int r;



  
   public int ValidarEmpleado(librosBEAN objlibrosBEAN){
        int val=0;
        try {
            cn=ConnectionBD.getConexionBD();
            pt=cn.prepareStatement("SELECT COUNT(*) FROM login WHERE usuario= ? AND clave=?");
            pt.setString(1, objlibrosBEAN.getUsuario());
            pt.setString(2, objlibrosBEAN.getClave());
            rs=pt.executeQuery();
            if(rs.next())
            { val=rs.getInt(1);
           
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
            
        }
        return val;
   }
   //OPERACIONES
   public ArrayList listar() {
      String sql="select * from libro";
     ArrayList<librosBEAN>lista=new ArrayList<>();
    try{
     cn=ConnectionBD.getConexionBD();
     pt=cn.prepareStatement(sql);
     rs=pt.executeQuery();
     while(rs.next()){
     objlibro= new librosBEAN();
     objlibro.setIdlibro(rs.getInt(1));
     objlibro.setFecha(rs.getString(2));
     objlibro.setAutor(rs.getString(3));
     objlibro.setTematica(rs.getString(4));
     lista.add(objlibro);
     }
     pt.close();
     rs.close();
     cn.close();
     }
     catch(Exception e){
     }
  
  
 
  return lista;
  }
   public int agregar(librosBEAN objlibrosBEAN){
       String sql="insert into libro(fecha, autor, tematica ) values (?,?,?)";
        try{
            cn=ConnectionBD.getConexionBD();
             pt=cn.prepareStatement(sql);
           
           pt.setString(1,objlibrosBEAN.getFecha());
           pt.setString(4,objlibrosBEAN.getAutor());
           pt.setString(5,objlibrosBEAN.getTematica());
            pt.executeUpdate();
            pt.close();
            cn.close();
    
    
    }catch(Exception e){
        
    }
    return r;
    
        
   }
   public int buscar(librosBEAN objlibrosBEAN){
   String sql="select*from libro where LIKE  (Idlibro=? ,autor=? ,fecha=?,tematica=? )";
        
    try{
            cn=ConnectionBD.getConexionBD();
             pt=cn.prepareStatement(sql);
            pt.executeUpdate();
            pt.close();
            cn.close();
    
    
    }catch(Exception e){
        
    }
    return r;
    
   }
  public int actualizar(librosBEAN objlibrosBEAN){
        String sql="update libro set fecha=?, autor=?, tematica=? where Idlibro=?" ;
        try{
            cn=ConnectionBD.getConexionBD();
             pt=cn.prepareStatement(sql);
           
           pt.setString(1,objlibrosBEAN.getFecha());
           pt.setString(2,objlibrosBEAN.getAutor());
           pt.setString(3,objlibrosBEAN.getTematica());
           pt.setInt(4, objlibrosBEAN.getIdlibro());
            pt.executeUpdate();
            pt.close();
            cn.close();
    
    
    }catch(Exception e){
        
    }
    return r;
    
        
   } public void delete(int id){
       String sql="delete from empleado where Idlibro="+id;
    try{
        cn=ConnectionBD.getConexionBD();
        pt=cn.prepareStatement(sql);
        pt.executeUpdate();
    }  catch(Exception e){
        
    }
   }

     public librosBEAN listarId(int id){
       librosBEAN objEmpleado= new librosBEAN();
       String sql="select * from libro where Idlibro="+id;
  try{
             cn=ConnectionBD.getConexionBD();
             pt=cn.prepareStatement(sql);
             rs=pt.executeQuery();
             while(rs.next()){
                 objlibro= new librosBEAN();
                 objlibro.setIdlibro(rs.getInt(1));
                 objlibro.setFecha(rs.getString(2));
                 objlibro.setAutor(rs.getString(3));
                 objlibro.setTematica(rs.getString(4));
                  lista.add(objlibro);
                  pt.executeUpdate();
             }
   } catch (Exception e){
       
   }
    return objEmpleado;
   }
}
    

