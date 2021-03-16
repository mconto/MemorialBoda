/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import utils.Conexion;

/**
 *
 * @author Mauricio
 */
public class fotoDB {
    public static boolean insertarfoto(String foto, String autor){
        boolean rpta=false;
        try{
        CallableStatement cl=Conexion.getConexion().prepareCall("{call include_foto(?,?)}");
        cl.setString(1, foto);
        cl.setString(2, autor);
        ResultSet rs= cl.executeQuery();
        rpta=true;
    }catch (Exception e){}
        return rpta;
    }
    
    
    public static ArrayList<foto> obtenerFotos(){
        ArrayList<foto> lista = new ArrayList<foto>();
        try{
        CallableStatement cl=Conexion.getConexion().prepareCall("{call obtener_fotos()}");
        ResultSet rs= cl.executeQuery();
        while(rs.next()){
            foto f= new foto(rs.getString(1), rs.getString(2));
            lista.add(f);
        }
        
    }catch (Exception e){}
     return lista;
    }
    
}
