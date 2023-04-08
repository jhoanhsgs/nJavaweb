/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import config.conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import org.apache.tomcat.util.net.AprEndpoint;

/**
 *
 * @author jhoan
 */
public class FichaDAO {
    conexion cn=new conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    /*public Personas validar(String user, String pass){
        Personas pm=new Personas();
        String sql="select * from tblusuario where Usuario=? and Contraseña=?";
        try {
            con=cn.conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs=ps.executeQuery();
            while(rs.next()){
                pm.setId(rs.getInt("IDUsuario"));
                pm.setUser(rs.getString("Usuario"));
                pm.setpass(rs.getString("Contraseña"));
                pm.setNombre(rs.getString("IDExcusa "));
                
            }
        } catch (Exception e) {
        }return pm;
    }
    */
    
    //operaciones CRUD
    
    public List listar(){
        String sql="SELECT * FROM tbl_ficha";
        List<Ficha>lista1=new ArrayList<>();
        try {
            con=cn.conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                Ficha Fc=new Ficha();
                Fc.setId(rs.getInt(1));
                Fc.setNficha(rs.getString(2));
                Fc.setFechaI(rs.getString(3));
                Fc.setFechaF(rs.getString(4));
                Fc.setFechaC(rs.getString(5));
                Fc.setIdprogformacion(rs.getString(8));
                
                
                lista1.add(Fc);
            }
        } catch (Exception e) {
        }
        return lista1;
    }
    /*public int agregar(Personas pm){     
        String sql="insert into tblpersonas(Cedula, Nombre,Apellido,email,IDUsuario,IDRol)values(?,?,?,?,?,?)";
        try {
            con=cn.conexion();
            ps=con.prepareStatement(sql);
            
            ps.setString(1,pm.getcedula());
            ps.setString(2,pm.getNombre());
            ps.setString(3,pm.getapellido());
            ps.setString(4,pm.getemail());
            ps.setString(5,pm.getIduser());
            ps.setString(6,pm.getIdrol());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
     public Personas listarId(int id){
        Personas emp=new Personas();
        String sql="select * from tblpersonas where IDPersonas="+id;
       
        try {
            con=cn.conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                emp.setcedula(rs.getString(2));
                emp.setNombre(rs.getString(3));
                emp.setapellido(rs.getString(4));
                emp.setemail(rs.getString(5));
                emp.setUser(rs.getString(6));
                emp.setIdrol(rs.getString(7));
                
            }
        } catch (Exception e) {
        }
        return emp;
    } 
    public int Actualizar(Personas pm){
        String sql="update tblpersonas set Cedula=?, Nombre=?, Apellido=?, Email=?, IDUsuario=?, IDRol=? where IDPersonas=?";
        try {
            con=cn.conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1,pm.getcedula());
            ps.setString(2,pm.getNombre());
            ps.setString(3,pm.getapellido());
            ps.setString(4,pm.getemail());
            ps.setString(5,pm.getIduser());
            ps.setString(6,pm.getIdrol());
            ps.setInt(7, pm.getId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    public void eliminar(int id){
        String sql="delete from tblpersonas where IDPersonas="+id;
        try {
            con=cn.conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Object getuser() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Personas listar(int idPersonas) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }*/
}
