package vo;


public class ClassVO extends SubjectVO{

	private String studentid;
	private int appYear;
	private String appSemester;
	private String subjectid;
	public String getStudentid() {
		return studentid;
	}
	public void setStudentid(String studentid) {
		this.studentid = studentid;
	}
	public int getAppYear() {
		return appYear;
	}
	public void setAppYear(int appYear) {
		this.appYear = appYear;
	}
	public String getAppSemester() {
		return appSemester;
	}
	public void setAppSemester(String appSemester) {
		this.appSemester = appSemester;
	}
	public String getSubjectid() {
		return subjectid;
	}
	public void setSubjectid(String subjectid) {
		this.subjectid = subjectid;
	}
	@Override
	public String toString() {
		return "ClassVO [studentid=" + studentid + ", appYear=" + appYear + ", appSemester=" + appSemester
				+ ", subjectid=" + subjectid + "]";
	}
	
	
}
