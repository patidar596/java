package log.springmvc.model;

public class Orders {
	int O_id;
	String Username;
	int P_id;
	int Qty;
	String Date;
	String Status;
	
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		this.Date = date;
	}
	public int getQty() {
		return Qty;
	}
	public void setQty(int qty) {
		Qty = qty;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public int getP_id() {
		return P_id;
	}
	public void setP_id(int p_id) {
		P_id = p_id;
	}
	public int getO_id() {
		return O_id;
	}
	public void setO_id(int o_id) {
		O_id = o_id;
	}
	

}
