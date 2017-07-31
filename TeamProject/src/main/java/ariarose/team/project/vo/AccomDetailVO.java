package ariarose.team.project.vo;

public class AccomDetailVO {
	
	private int ad_id;
	private int ad_acc_id;
	private String ad_name;
	private int ad_price;
	private String ad_size;
	private String ad_option;
	
	public int getAd_id() {
		return ad_id;
	}
	public void setAd_id(int ad_id) {
		this.ad_id = ad_id;
	}
	public int getAd_acc_id() {
		return ad_acc_id;
	}
	public void setAd_acc_id(int ad_acc_id) {
		this.ad_acc_id = ad_acc_id;
	}
	public String getAd_name() {
		return ad_name;
	}
	public void setAd_name(String ad_name) {
		this.ad_name = ad_name;
	}
	public int getAd_price() {
		return ad_price;
	}
	public void setAd_price(int ad_price) {
		this.ad_price = ad_price;
	}
	public String getAd_size() {
		return ad_size;
	}
	public void setAd_size(String ad_size) {
		this.ad_size = ad_size;
	}
	public String getAd_option() {
		return ad_option;
	}
	public void setAd_option(String ad_option) {
		this.ad_option = ad_option;
	}
	
	@Override
	public String toString() {
		return "AccomDetailVO [ad_id=" + ad_id + ", ad_acc_id=" + ad_acc_id + ", ad_name=" + ad_name + ", ad_price="
				+ ad_price + ", ad_size=" + ad_size + ", ad_option=" + ad_option + "]";
	}
	
	
}
