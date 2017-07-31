package ariarose.team.project.vo;

public class AccomVO {
	private int accom_id;
	private String accom_user_id;
	private String accom_part;
	private String accom_name;
	private String accom_number;
	private String accom_link;
	private String accom_option;
	private String accom_addr;
	
	
	public int getAccom_id() {
		return accom_id;
	}
	public void setAccom_id(int accom_id) {
		this.accom_id = accom_id;
	}
	public String getAccom_user_id() {
		return accom_user_id;
	}
	public void setAccom_user_id(String accom_user_id) {
		this.accom_user_id = accom_user_id;
	}
	public String getAccom_part() {
		return accom_part;
	}
	public void setAccom_part(String accom_part) {
		this.accom_part = accom_part;
	}
	public String getAccom_name() {
		return accom_name;
	}
	public void setAccom_name(String accom_name) {
		this.accom_name = accom_name;
	}
	public String getAccom_number() {
		return accom_number;
	}
	public void setAccom_number(String accom_number) {
		this.accom_number = accom_number;
	}
	public String getAccom_link() {
		return accom_link;
	}
	public void setAccom_link(String accom_link) {
		this.accom_link = accom_link;
	}
	public String getAccom_option() {
		return accom_option;
	}
	public void setAccom_option(String accom_option) {
		this.accom_option = accom_option;
	}
	public String getAccom_addr() {
		return accom_addr;
	}
	public void setAccom_addr(String accom_addr) {
		this.accom_addr = accom_addr;
	}
	@Override
	public String toString() {
		return "AccomVO [accom_user_id=" + accom_user_id + ", accom_part=" + accom_part + ", accom_name=" + accom_name
				+ ", accom_number=" + accom_number + ", accom_link=" + accom_link + ", accom_option=" + accom_option
				+ ", accom_addr=" + accom_addr + "]";
	}
	
	
	
}
