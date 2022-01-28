package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class t_entranceDAO {
	PreparedStatement psmt = null;
	Connection conn = null;
	ResultSet rs = null;
	t_entranceDTO dto = null;
	int cnt = 0;

	// DB연결 메소드
	public void getConn() {
		try {
			// 1. ojdbc.jar 파일 import하기
			// 2. 동적 로딩 방식
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 카드키
			String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "suhyun";
			String db_pw = "rhdwn123";

			// 연결
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// DB종료 메소드
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

	// cctv 업로드
	public int upload(t_entranceDTO dto) {
		getConn();

		try {
			String sql = "insert into t2_entrance values(ent_object_id, ?, sysdate, ?, user_id, shop_seq)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getEnt_kind());
			psmt.setString(2, dto.getEnt_face_img());

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;

	}

}
