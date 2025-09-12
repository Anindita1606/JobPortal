package master.dto;

public class JobDTO {
    private int jobid;         // auto_increment, no need to set when inserting
    private String jobname;
    private int companyid;     // ✅ changed to int
    private String jobtype;
    private String domain;
    private String validupto;  // keep String for now
    private int yrsexp;

    // Getters and setters...
    public int getJobid() { return jobid; }
    public void setJobid(int jobid) { this.jobid = jobid; }

    public String getJobname() { return jobname; }
    public void setJobname(String jobname) { this.jobname = jobname; }

    public int getCompanyid() { return companyid; }
    public void setCompanyid(int companyid) { this.companyid = companyid; }

    public String getJobtype() { return jobtype; }
    public void setJobtype(String jobtype) { this.jobtype = jobtype; }

    public String getDomain() { return domain; }
    public void setDomain(String domain) { this.domain = domain; }

    public String getValidupto() { return validupto; }
    public void setValidupto(String validupto) { this.validupto = validupto; }

    public int getYrsexp() { return yrsexp; }
    public void setYrsexp(int yrsexp) { this.yrsexp = yrsexp; }
}
