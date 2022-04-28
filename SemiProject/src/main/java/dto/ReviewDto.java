package dto;

import java.sql.Timestamp;

public class ReviewDto {

	private String rnum;
	private String lnum;
	private String mnum;
	private int rstar;
	private String rcontents;
	private Timestamp rday;
	
	public String getRnum() {
		return rnum;
	}
	public void setRnum(String rnum) {
		this.rnum = rnum;
	}
	public String getLnum() {
		return lnum;
	}
	public void setLnum(String lnum) {
		this.lnum = lnum;
	}
	public String getMnum() {
		return mnum;
	}
	public void setMnum(String mnum) {
		this.mnum = mnum;
	}
	public int getRstar() {
		return rstar;
	}
	public void setRstar(int rstar) {
		this.rstar = rstar;
	}
	public String getRcontents() {
		return rcontents;
	}
	public void setRcontents(String rcontents) {
		this.rcontents = rcontents;
	}
	public Timestamp getRday() {
		return rday;
	}
	public void setRday(Timestamp rday) {
		this.rday = rday;
	}
	
	
	
}
