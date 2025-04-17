package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
// import com.zaxxer.hikari.HikariConfig;
// import com.zaxxer.hikari.HikariDataSource;

public class DBConnection {
    // Database configuration - easily readable and modifiable
    
    private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/mobile_store";
    private static final String DATABASE_USER = "root";     
    private static final String DATABASE_PASSWORD = "";     // Change this to your MySQL password
    
    // Load the MySQL JDBC driver
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println("MySQL JDBC Driver not found!");
            e.printStackTrace();
        }
    }
    
    // Get a database connection
    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(DATABASE_URL, DATABASE_USER, DATABASE_PASSWORD);
    }
    
    // Test the database connection
    public static void main(String[] args) {
        try (Connection conn = getConnection()) {
            System.out.println("Successfully connected to the database!");
        } catch (SQLException e) {
            System.err.println("Failed to connect to the database!");
            e.printStackTrace();
        }
    }
} 