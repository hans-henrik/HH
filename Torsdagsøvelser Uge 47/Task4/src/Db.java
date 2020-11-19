import java.sql.*;

public class Db {


    String dbURL = "jdbc:mysql://localhost/world";
    String username = "root";
    String password = "Cph-hm163";
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;

    public void country(){

        String query = "select count(*) as 'x' from city";

        try {
            connection = DriverManager.getConnection(dbURL, username, password);

            statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
            if(resultSet.next()){
                int x = resultSet.getInt("x");
                System.out.println(x);
            }
        }
catch (SQLException e){
            e.printStackTrace();
}

    }
}
