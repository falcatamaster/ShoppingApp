package shoppingApp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Java入門 ログインDAOクラス.
 */
public class LoginDao {

	private Connection con = null;
	private ResultSet  rs  = null;
	private PreparedStatement ps = null;
	
	/**
	 * データベースから指定されたIDとパスワードを使ってユーザ情報を検索します.
	 * @param id	ログインID
	 * @param pass	パスワード
	 * @return	ユーザ情報（ResultSet）
	 * @throws SQLException
	 */
	public ResultSet selectUser(String id, String pass) throws SQLException {
	
		try {
			
			// JDBCドライバのロード
			// 「com.mysql.jdbc.Driver」クラス名
//			Class.forName("com.mysql.jdbc.Driver");
			Class.forName("org.postgresql.Driver");
	
			// データベースと接続（本来はユーザやパスワードも別管理にしておくのが理想）
//			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample", 
//											  "root",
//											  "password");
			con = DriverManager.getConnection("jdbc:postgresql://ec2-107-20-24-247.compute-1.amazonaws.com:5432/d317c71nlnehi1?password=e3d4f3b5ed1184c49e3e1f128f776ae0c5241a1daf2857936201b358bd820e56&sslmode=require&user=zhsalsmwvmfsbp", 
					  "zhsalsmwvmfsbp",
					  "e3d4f3b5ed1184c49e3e1f128f776ae0c5241a1daf2857936201b358bd820e56");
			// SQL文を生成
//			ps = con.prepareStatement("select name, age from user where id = ? and pass = ?");
			ps = con.prepareStatement("select name, age from shoppinguser where id = ? and pass = ?");
			
			// 生成したSQL文の「？」の部分にIDとパスワードをセット
			ps.setString(1, id);
			ps.setString(2, pass);
			
			// SQLを実行
			rs = ps.executeQuery();
			
		} catch(ClassNotFoundException ce) {
			
			// JDBCドライバが見つからなかった場合
			ce.printStackTrace();
		}
		
		return rs;
	}
	
	/**
	 * コネクションをクローズします.
	 */
	public void close() {
		
		try {
			
			// データベースとの接続を解除する
			if(con != null) {
				con.close();
			}
			if(ps != null) {
				ps.close();
			}
			if(rs != null) {
				rs.close();
			}
			
		} catch (SQLException se) {
			
			// データベースとの接続解除に失敗した場合
			se.printStackTrace();
		}
	}
}