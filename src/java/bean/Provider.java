package bean;

public interface Provider {

    /*String DRIVER="oracle.jdbc.driver.OracleDriver";
String CONNECTION_URL="jdbc:oracle:thin:@localhost:1521:xe";
String USERNAME="ramkumar";
String PASSWORD="ramkumar";*/

    String DRIVER = "com.mysql.cj.jdbc.Driver";
    String CONNECTION_URL = "jdbc:mysql://localhost:3306/savan";
    String USERNAME = "root";
    String PASSWORD = "12345";
}
