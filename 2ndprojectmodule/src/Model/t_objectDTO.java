package Model;

public class t_objectDTO {
	
	private int item_seq;
	private int detection_seq;
	private String item_name;
	private int item_cnt;
	
	public t_objectDTO(int item_seq, int detection_seq, String item_name, int item_cnt) {
		super();
		this.item_seq = item_seq;
		this.detection_seq = detection_seq;
		this.item_name = item_name;
		this.item_cnt = item_cnt;
	}
	

	public t_objectDTO(int detection_seq, String item_name, int item_cnt) {
		super();
		this.detection_seq = detection_seq;
		this.item_name = item_name;
		this.item_cnt = item_cnt;
	}
	
	


	public t_objectDTO(String item_name, int item_cnt) {
		super();
		this.item_name = item_name;
		this.item_cnt = item_cnt;
	}


	public int getItem_seq() {
		return item_seq;
	}

	public void setItem_seq(int item_seq) {
		this.item_seq = item_seq;
	}

	public int getDetection_seq() {
		return detection_seq;
	}

	public void setDetection_seq(int detection_seq) {
		this.detection_seq = detection_seq;
	}

	public String getItem_name() {
		return item_name;
	}

	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}

	public int getItem_cnt() {
		return item_cnt;
	}

	public void setItem_cnt(int item_cnt) {
		this.item_cnt = item_cnt;
	}

	@Override
	public String toString() {
		return "t_objectDTO [item_seq=" + item_seq + ", detection_seq=" + detection_seq + ", item_name=" + item_name
				+ ", item_cnt=" + item_cnt + "]";
	}
	

}
