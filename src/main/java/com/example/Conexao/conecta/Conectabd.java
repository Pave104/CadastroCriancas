package com.example.Conexao.conecta;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conectabd {

   public static Connection getConnection()throws SQLException{

       try {

            Class.forName("com.mysql.jdbc.Driver");
               return DriverManager.getConnection("jdbc:mysql://meubanco2.mysql.uhserver.com/meubanco2","paulo1","calcado@104");
       }
       catch (SQLException | ClassNotFoundException e){
           throw new SQLException(e);
       }
   }

}
