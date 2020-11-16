package vo;

import org.springframework.web.multipart.MultipartFile;

public class QnaVO {
	private int seq;
	private String title;
	private String contents;
	private String regDate;
	private int count;
	private int studentId;
	private String attfile;
	private MultipartFile attfilef;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getAttfile() {
		return attfile;
	}
	public void setAttfile(String attfile) {
		this.attfile = attfile;
	}
	public MultipartFile getAttfilef() {
		return attfilef;
	}
	public void setAttfilef(MultipartFile attfilef) {
		this.attfilef = attfilef;
	}
	
	@Override
	public String toString() {
		return "QnaVO [seq=" + seq + ", title=" + title + ", contents=" + contents + ", regDate=" + regDate + ", count="
				+ count + ", studentId=" + studentId + ", attfile=" + attfile + ", attfilef=" + attfilef + "]";
	}

}//QnaVO
