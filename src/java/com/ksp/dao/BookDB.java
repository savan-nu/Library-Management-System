package com.ksp.dao;
import java.sql.*;

public class BookDB 
{
  public static Connection getConnection()
  throws Exception
  {
	 String jdbcur1 = "jdbc:mysql://localhost:3306/savan";
        String Username = "root";
        String Password = "12345";
        String driverclass = "com.mysql.cj.jdbc.Driver";
//        String query="SELECT * FROM savan.sa";    

        //Driver Class
        Class.forName(driverclass);

        //Path
        Connection con = DriverManager.getConnection(jdbcur1, Username, Password);

        return con;
  }

}
