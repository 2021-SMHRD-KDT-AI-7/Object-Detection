package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class t_objectDAO {
	PreparedStatement psmt = null;
	Connection conn = null;
	ResultSet rs = null;
	t_objectDTO dto = null;

	int cnt = 0;
	// String to Date, Date to String 형변환
	SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

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

	// 물품 보여주기
	public ArrayList obj_show(int item_seq) {
		ArrayList<t_objectDTO> o_list = new ArrayList<t_objectDTO>();
		getConn();
		try {
			String sql = "select * from t2_object";

			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				int detection_seq = rs.getInt("detection_seq");
				String item_name = rs.getString("item_name");
				int item_cnt = rs.getInt("item_cnt");

				dto = new t_objectDTO(detection_seq, item_name, item_cnt);
				o_list.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return o_list;
	}

}
