package Model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class t_detectionDAO {

	PreparedStatement psmt = null;
	Connection conn = null;
	ResultSet rs = null;
	t_detectionDTO dto = null;

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

	// 얼굴이미지 경로
	public ArrayList<t_detectionDTO> f_img() {
		ArrayList<t_detectionDTO> f_list = new ArrayList<t_detectionDTO>();
		getConn();
		try {
			String sql = "select * from t2_detection";

			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int detection_seq = rs.getInt("detection_seq");
				Date detection_tim = rs.getDate("detection_tim");
				String situation_img = rs.getString("situation_img");
				String face_img = rs.getString("face_img");
				
				dto = new t_detectionDTO(detection_tim, situation_img, face_img);
				f_list.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return f_list;
	}
}
