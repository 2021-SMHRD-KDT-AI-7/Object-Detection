package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;

public class userDAO {

	PreparedStatement psmt = null;
	Connection conn = null;
	ResultSet rs = null;
	userDTO dto = null;

	int cnt = 0;
	// String to Date, Date to String ����ȯ
	SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	// DB���� �޼ҵ�
	public void getConn() {
		try {
			// 1. ojdbc.jar ���� import�ϱ�
			// 2. ���� �ε� ���
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// ī��Ű
			String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "suhyun";
			String db_pw = "rhdwn123";

			// ����
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// DB���� �޼ҵ�
	public void dbClose() {
		try {
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// ȸ������ �޼ҵ�
	public int join(String user_id, String user_pw, String user_shop) {
		try {
			getConn();
			// SQL���ۼ�
			String sql = "insert into t2_user values(?, ?, ?)";

			// DB�� ����
			psmt = conn.prepareStatement(sql);

			// ?�� �� �ֱ�
			psmt.setString(1, user_id);
			psmt.setString(2, user_pw);
			psmt.setString(3, user_shop);

			// ����
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}

	// �α��� �޼ҵ�
	public userDTO login(String input_user_id, String input_user_pw) {
		try {
			getConn();
			String sql = "select * from t2_user where user_id=? and user_pw=?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, input_user_id);
			psmt.setString(2, input_user_pw);

			rs = psmt.executeQuery();

			if (rs.next()) {
				String user_id = rs.getString("user_id");
				String user_pw = rs.getString("user_pw");
				String user_shop = rs.getString("user_shop");

				dto = new userDTO(user_id, user_pw, user_shop);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return dto;
	}

}
