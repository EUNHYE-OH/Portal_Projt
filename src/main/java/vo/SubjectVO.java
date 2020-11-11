package vo;

public class SubjectVO {

	private String subjectid;
	private int subCredit;
	private String classifi;
	private String professor;
	
	public String getSubjectid() {
		return subjectid;
	}
	public void setSubjectid(String subjectid) {
		this.subjectid = subjectid;
	}
	public int getSubCredit() {
		return subCredit;
	}
	public void setSubCredit(int subCredit) {
		this.subCredit = subCredit;
	}
	public String getClassifi() {
		return classifi;
	}
	public void setClassifi(String classifi) {
		this.classifi = classifi;
	}
	public String getProfessor() {
		return professor;
	}
	public void setProfessor(String professor) {
		this.professor = professor;
	}
	@Override
	public String toString() {
		return "SubjectVO [subjectid=" + subjectid + ", subCredit=" + subCredit + ", classifi=" + classifi
				+ ", professor=" + professor + "]";
	}
	
	
	
	
}
