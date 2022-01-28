package Model;

public class t_cctvDTO {
	
	private int cctv_seq;
	private String cctv_src;
	
	public t_cctvDTO(int cctv_seq, String cctv_src) {
		super();
		this.cctv_seq = cctv_seq;
		this.cctv_src = cctv_src;
	}

	public int getCctv_seq() {
		return cctv_seq;
	}

	public void setCctv_seq(int cctv_seq) {
		this.cctv_seq = cctv_seq;
	}

	public String getCctv_src() {
		return cctv_src;
	}

	public void setCctv_src(String cctv_src) {
		this.cctv_src = cctv_src;
	}

	
	@Override
	public String toString() {
		return "t_cctvDTO [cctv_seq=" + cctv_seq + ", cctv_src=" + cctv_src + "]";
	}

	public t_cctvDTO(String cctv_src) {
		super();
		this.cctv_src = cctv_src;
	}
	
	
	
	
	

}
