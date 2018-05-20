/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.GregorianCalendar;
import util.DBConnection;
import util.Hash;

/**
 *
 * @author haya
 */
public class UserDao {

    private Connection connection;
    private static UserDao instance;

    public static UserDao getInstance() {
        if (instance == null) {
            instance = new UserDao();
        }
        return instance;
    }

    private UserDao() {
    }

    public boolean userExists(String firstname) {
        connection = DBConnection.getConnection();
        try {
            PreparedStatement prepStmt
                    = connection.prepareStatement("SELECT * from usernames u where u.firstname = ?");
            prepStmt.setString(1, firstname);
            ResultSet rs = prepStmt.executeQuery();
            //result set is empty if there are no users with the same username
            if (rs.next()) {
                rs.close();
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
      public int getMAX() {
        connection = DBConnection.getConnection();
        try {
            PreparedStatement prepStmt  = connection.prepareStatement("SELECT max(ID) as max_id from usernames");
            
            ResultSet rs = prepStmt.executeQuery();
            //result set is empty if there are no users with the same username
            if (rs.next()) {
                int newID = rs.getInt("max_id")+1; 
                return newID;
           
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
      return 1;
      }

    public boolean createUser(String firstname, String lastname, String email, String gender, String IBAN,String Birth, String password) {
        connection = DBConnection.getConnection();
        try {
            PreparedStatement stmt
                    = connection.prepareStatement("insert into usernames values (?,?, ?, ?, ?, ? ,?, ?)");
            int  ID= getMAX();
            stmt.setInt(1, ID);//getMAx++() 
            stmt.setString(2, firstname);
            stmt.setString(3, lastname);
            stmt.setString(4, email);
           
            
            stmt.setString(5, "" + gender);
            stmt.setString(6, Birth);
            stmt.setString(7, IBAN);
             stmt.setString(8, Hash.getHash(password));
            
            stmt.executeUpdate();
            connection.commit();
            return true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }

    public boolean isPasswordCorrect(String firstname, String password) {
        connection = DBConnection.getConnection();
        try {
            PreparedStatement prepStmt
                    = connection.prepareStatement("select * from usernames u where u.firstname = ? and u.password = ?");
            prepStmt.setString(1, firstname);
            String a = Hash.getHash(password);
            
            System.out.println(a);
            prepStmt.setString(2, a);
            ResultSet rs = prepStmt.executeQuery();
            if (rs.next()) {
                rs.close();
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

}
