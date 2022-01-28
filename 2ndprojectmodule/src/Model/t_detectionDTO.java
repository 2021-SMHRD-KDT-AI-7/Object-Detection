package Model;

import java.sql.Date;

public class t_detectionDTO {
	
	private int detection_seq;
	private Date detection_tim;
	private String situation_img;
	private String face_img;
	private String user_id;
	private String ent_object_id;
	
	public t_detectionDTO(int detection_seq, Date detection_tim, String situation_img, String face_img, String user_id,
			String ent_object_id) {
		super();
		this.detection_seq = detection_seq;
		this.detection_tim = detection_tim;
		this.situation_img = situation_img;
		this.face_img = face_img;
		this.user_id = user_id;
		this.ent_object_id = ent_object_id;
	}
	

	public t_detectionDTO(Date detection_tim, String situation_img, String face_img) {
		super();
		this.detection_tim = detection_tim;
		this.situation_img = situation_img;
		this.face_img = face_img;
	}


	public int getDetection_seq() {
		return detection_seq;
	}

	public void setDetection_seq(int detection_seq) {
		this.detection_seq = detection_seq;
	}

	public Date getDetection_tim() {
		return detection_tim;
	}

	public void setDetection_tim(Date detection_tim) {
		this.detection_tim = detection_tim;
	}

	public String getSituation_img() {
		return situation_img;
	}

	public void setSituation_img(String situation_img) {
		this.situation_img = situation_img;
	}

	public String getFace_img() {
		return face_img;
	}

	public void setFace_img(String face_img) {
		this.face_img = face_img;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getEnt_object_id() {
		return ent_object_id;
	}

	public void setEnt_object_id(String ent_object_id) {
		this.ent_object_id = ent_object_id;
	}

	@Override
	public String toString() {
		return "t_detectionDTO [detection_seq=" + detection_seq + ", detection_tim=" + detection_tim
				+ ", situation_img=" + situation_img + ", face_img=" + face_img + ", user_id=" + user_id +
				", ent_object_id=" + ent_object_id + "]";
	}
	
	

}
