package Model;

import java.sql.Date;

public class t_entranceDTO {
	
	private String ent_object_id;
	private String ent_kind;
	private Date ent_time;
	private String ent_face_img;
	private String user_id;
	private int shop_seq;
	
	public t_entranceDTO(String ent_object_id, String ent_kind, Date ent_time, String ent_face_img, String user_id,
			int shop_seq) {
		super();
		this.ent_object_id = ent_object_id;
		this.ent_kind = ent_kind;
		this.ent_time = ent_time;
		this.ent_face_img = ent_face_img;
		this.user_id = user_id;
		this.shop_seq = shop_seq;
	}
	

	public t_entranceDTO(String ent_object_id, String ent_face_img, String user_id) {
		super();
		this.ent_object_id = ent_object_id;
		this.ent_face_img = ent_face_img;
		this.user_id = user_id;
	}


	public String getEnt_object_id() {
		return ent_object_id;
	}

	public void setEnt_object_id(String ent_object_id) {
		this.ent_object_id = ent_object_id;
	}

	public String getEnt_kind() {
		return ent_kind;
	}

	public void setEnt_kind(String ent_kind) {
		this.ent_kind = ent_kind;
	}

	public Date getEnt_time() {
		return ent_time;
	}

	public void setEnt_time(Date ent_time) {
		this.ent_time = ent_time;
	}

	public String getEnt_face_img() {
		return ent_face_img;
	}

	public void setEnt_face_img(String ent_face_img) {
		this.ent_face_img = ent_face_img;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getShop_seq() {
		return shop_seq;
	}

	public void setShop_seq(int shop_seq) {
		this.shop_seq = shop_seq;
	}

	@Override
	public String toString() {
		return "t_entranceDTO [ent_object_id=" + ent_object_id + ", ent_kind=" + ent_kind + ", ent_time=" + ent_time
				+ ", ent_face_img=" + ent_face_img + ", user_id=" + user_id + ", shop_seq=" + shop_seq + "]";
	}
	
	
}
