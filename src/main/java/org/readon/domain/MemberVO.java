package org.readon.domain;

public class MemberVO {
	private String id; //ID
    private String password;//PW
    private String copw;//PW확인
    private String name;//이름
    private String gender;//성별
    private String birth;//생년월일
    private String phone;//연락처
    private String email;//E-mail
    private String regdate;//등록일  
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCopw() {
		return copw;
	}
	public void setCopw(String copw) {
		this.copw = copw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", copw=" + copw + ", name=" + name + ", gender="
				+ gender + ", birth=" + birth + ", phone=" + phone + ", email=" + email + ", regdate=" + regdate + "]";
	}
	
}
