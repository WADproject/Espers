/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author haya
 */
public class DBConnection {
    private static Connection connection;

    public static Connection getConnection() {
        if (connection == null) {
            try {
            String url = "jdbc:mysql://localhost/project2018";
            String user = "root";
            String password = "";
            String driver="com.mysql.jdbc.Driver";
            Class.forName(driver);
            connection = DriverManager.getConnection(url, user, password);
            connection.setAutoCommit(false);
        }  catch (ClassNotFoundException e) {
            System.err.println("Could not load db driver");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("Could not open db connction");
            e.printStackTrace();
        }
        }
        return connection;
    }
}
