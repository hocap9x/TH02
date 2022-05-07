/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.util.ArrayList;
import java.util.List;
import model.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author hoang_8qcm2ge
 */
public class ProductDAO extends DBContext {
    public List<Product> getAll(){
        List<Product> list=new ArrayList<>();
        String sql="select * from Product";
        try{
            PreparedStatement st=connection.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Product p=new Product();
                p.setCode(rs.getString("code"));
                p.setDescription(rs.getString("description"));
                p.setPrice(rs.getDouble("price"));
                list.add(p);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    public void delete(String code){
        String sql="delete from Product where code=?";
        try{
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, code);
            st.executeUpdate();
        }catch(SQLException e){
            System.out.println(e);
        }
    }
    public Product getProductByCODE(String code){
        List<Product> list=new ArrayList<>();
        String sql="select * from Product where code=?";
        try{
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, code);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Product p=new Product();
                p.setCode(rs.getString("code"));
                p.setDescription(rs.getString("description"));
                p.setPrice(rs.getDouble("price"));
                return p;
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return null;
    }
    public void insert(Product p){
        String sql="insert into Product values(?,?,?)";
        try{
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, p.getCode());
            st.setString(2, p.getDescription());
            st.setDouble(3, p.getPrice());
            st.executeUpdate();
        }catch(SQLException e){
            System.out.println(e);
        }
    }
    public void update(Product p){
        String sql="update Product set description=?,price=? where code=?";
        try{
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, p.getDescription());
            st.setDouble(2, p.getPrice());
            st.setString(3, p.getCode());
            st.executeUpdate();
        }catch(SQLException e){
            System.out.println(e);
        }
    }
}
