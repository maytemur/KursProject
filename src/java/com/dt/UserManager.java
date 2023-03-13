package com.dt;
import java.sql.*;
public class UserManager {
    public void ekle(int ID,String Name,int Yas) {
        try{
        DatabaseManagerClass m=new DatabaseManagerClass();
        Connection baglanti=m.getConnection();
        String sql="insert into Customer(CustomerId,Age,Name) values(?,?,?)";
        PreparedStatement ekle=baglanti.prepareStatement(sql);       
        ekle.setInt(1, ID);
        ekle.setString(2, Name);
        ekle.setInt(3,Yas);
        
       int sonuc=ekle.executeUpdate();
        }catch(Exception e){
        e.printStackTrace();
        }
    }
    public static void main(String[] args)
    {
        UserManager m=new UserManager();
        m.ekle(1,"JJH",345);
    }
}
