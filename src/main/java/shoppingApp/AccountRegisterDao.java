package shoppingApp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

//import model.AccountBeans;

public class AccountRegisterDao {
	
	private Connection con = null;
	private PreparedStatement ps = null;
	
	/**
	 * フォームに入力されたユーザ名、年齢、ID、パスワードをデータベースに登録します.
	 * @param name ユーザ名
	 * @param age　年齢
	 * @param id	ログインID
	 * @param pass	パスワード
	 * @throws SQLException
	 */
    // データベース接続に使用する情報（ローカル環境用）
//        final String jdbcId = "root";
//        final String jdbcPass = "password";
//        final String jdbcUrl = "jdbc:mysql://localhost:3306/sample";
        
    // 本番用
        final String jdbcId = "zhsalsmwvmfsbp";
        final String jdbcPass = "e3d4f3b5ed1184c49e3e1f128f776ae0c5241a1daf2857936201b358bd820e56";
        final String jdbcUrl = "jdbc:postgresql://ec2-107-20-24-247.compute-1.amazonaws.com:5432/d317c71nlnehi1?password=e3d4f3b5ed1184c49e3e1f128f776ae0c5241a1daf2857936201b358bd820e56&sslmode=require&user=zhsalsmwvmfsbp";

    public AccountRegisterDao(LoginUserBean ab) throws SQLException{

    	try{
    		
    		// JDBCドライバのロード
        	// 「com.mysql.jdbc.Driver」クラス名
        	Class.forName("org.postgresql.Driver");
        	
        	// 本番用

        	con = DriverManager.getConnection(jdbcUrl, jdbcId, jdbcPass);
        	
//        	ps= con.prepareStatement("INSERT INTO user (id, pass, name,age) VALUES (?, ?, ?, ?)");
        	ps= con.prepareStatement("INSERT INTO shoppinguser (id, pass, name,age) VALUES (?, ?, ?, ?)");

            ps.setString(1, ab.getId());
            ps.setString(2, ab.getPass());
            ps.setString(3, ab.getName());
            ps.setInt(4, ab.getAge());

            int r = ps.executeUpdate();

//            if(r != 0) {
//                System.out.println("新規登録成功！");
//            } else {
//                System.out.println("新規登録失敗( ﾉД`)ｼｸｼｸ…");
//            }

        } catch (ClassNotFoundException ce) {
            ce.printStackTrace();
        }
    }
    
public void close() {
		
		try {
			
			// データベースとの接続を解除する
			if(con != null) {
				con.close();
			}
			if(ps != null) {
				ps.close();
			}
			
		} catch (SQLException se) {
			
			// データベースとの接続解除に失敗した場合
			se.printStackTrace();
		}
	}
}