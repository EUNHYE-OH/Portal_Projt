package vo;

import org.springframework.web.multipart.MultipartFile;

public class MemberVO {

	private String studentid;
	private String name;
	private String password;
	private int acaYear;
	private int birth;
	private int regNum;
	private String gender;
	private String email;
	private String address;
	private int phone;
	private String uploadfile; //table save fileName
	private MultipartFile uploadfilef; //form으로부터 uploadfile 정보를 읽어오기 위한 필드
	private String mainMajor;
	private String douMajor;
	public String getStudentid() {
		return studentid;
	}
	public void setStudentid(String studentid) {
		this.studentid = studentid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getAcaYear() {
		return acaYear;
	}
	public void setAcaYear(int acaYear) {
		this.acaYear = acaYear;
	}
	public int getBirth() {
		return birth;
	}
	public void setBirth(int birth) {
		this.birth = birth;
	}
	public int getRegNum() {
		return regNum;
	}
	public void setRegNum(int regNum) {
		this.regNum = regNum;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getUploadfile() {
		return uploadfile;
	}
	public void setUploadfile(String uploadfile) {
		this.uploadfile = uploadfile;
	}
	public MultipartFile getUploadfilef() {
		return uploadfilef;
	}
	public void setUploadfilef(MultipartFile uploadfilef) {
		this.uploadfilef = uploadfilef;
	}
	public String getMainMajor() {
		return mainMajor;
	}
	public void setMainMajor(String mainMajor) {
		this.mainMajor = mainMajor;
	}
	public String getDouMajor() {
		return douMajor;
	}
	public void setDouMajor(String douMajor) {
		this.douMajor = douMajor;
	}
	@Override
	public String toString() {
		return "MemberVO [studentid=" + studentid + ", name=" + name + ", password=" + password + ", acaYear=" + acaYear
				+ ", birth=" + birth + ", regNum=" + regNum + ", gender=" + gender + ", email=" + email + ", address="
				+ address + ", phone=" + phone + ", uploadfile=" + uploadfile + ", uploadfilef=" + uploadfilef
				+ ", mainMajor=" + mainMajor + ", douMajor=" + douMajor + "]";
	}
	
	
	
}
