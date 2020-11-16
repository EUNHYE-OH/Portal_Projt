package vo;

public class CommentVO {
	private int seq;
	private int root;
	private String studentId;
	private String regDate;
	private String contents;
	
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getRoot() {
		return root;
	}
	public void setRoot(int root) {
		this.root = root;
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	
	@Override
	public String toString() {
		return "CommentVO [seq=" + seq + ", root=" + root + ", studentId=" + studentId + ", regDate=" + regDate
				+ ", contents=" + contents + "]";
	}
}
