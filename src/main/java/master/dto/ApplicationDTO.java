package master.dto;

public class ApplicationDTO {
	private String username;
    private int jobid;
    private String applydt;
    private String status;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getJobid() {
		return jobid;
	}
	public void setJobid(int jobid) {
		this.jobid = jobid;
	}
	public String getApplydt() {
		return applydt;
	}
	public void setApplydt(String applydt) {
		this.applydt = applydt;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
     
}
