/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package online_library;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author Bharath
 */
public class DataBase {
    public static Connection getConnection()
    {
       Connection cn=null;
        try
        {
            //Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "Bharath@1");
              
        }
        catch(Exception e)
        {
            System.out.println("check the details entered");
        }
        return cn;
    }
}
