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
public class mensajeDB {
    
    public static boolean insertarmensaje(String mensaje, String nombre){
        boolean rpta=false;
        try{
        CallableStatement cl=Conexion.getConexion().prepareCall("{call include_mensaje(?,?)}");
        cl.setString(1, mensaje);
        cl.setString(2, nombre);
        ResultSet rs= cl.executeQuery();
        rpta=true;
    }catch (Exception e){}
        return rpta;
    }
    
    public static ArrayList<mensaje> obtenerMensajes(){
        ArrayList<mensaje> lista = new ArrayList<mensaje>();
        try{
        CallableStatement cl=Conexion.getConexion().prepareCall("{call obtener_mensaje()}");
        ResultSet rs= cl.executeQuery();
        while(rs.next()){
            mensaje m= new mensaje(rs.getString(1), rs.getString(2));
            lista.add(m);
        }
        
    }catch (Exception e){}
     return lista;
    }
}
