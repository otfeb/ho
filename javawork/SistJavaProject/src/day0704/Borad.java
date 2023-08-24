package day0704;

public class Borad {
	
	private String writer;
	private String subject;
	private String content;
	
	public Borad() {
		
	}
	
	public Borad(String w,String s,String c) {
		this.writer=w;
		this.subject=s;
		this.content=c;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	
	
}
