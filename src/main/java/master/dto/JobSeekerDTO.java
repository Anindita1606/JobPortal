package master.dto;

public class JobSeekerDTO {
	private String username;
    private String password;
    private String name;
    private String phno;
    private String email;
    private String domain;
    private int yrexp;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}
	public int getYrexp() {
		return yrexp;
	}
	public void setYrexp(int yrexp) {
		this.yrexp = yrexp;
	}
    
}
