package master.dto;

public class JobDTO {
	private int jobid;
    private String jobname;
    private String companyid;
    private String jobtype;
    private int yrexp;
	public int getJobid() {
		return jobid;
	}
	public void setJobid(int jobid) {
		this.jobid = jobid;
	}
	public String getJobname() {
		return jobname;
	}
	public void setJobname(String jobname) {
		this.jobname = jobname;
	}
	public String getCompanyid() {
		return companyid;
	}
	public void setCompanyid(String companyid) {
		this.companyid = companyid;
	}
	public String getJobtype() {
		return jobtype;
	}
	public void setJobtype(String jobtype) {
		this.jobtype = jobtype;
	}
	public int getYrexp() {
		return yrexp;
	}
	public void setYrexp(int yrexp) {
		this.yrexp = yrexp;
	}
    
}
