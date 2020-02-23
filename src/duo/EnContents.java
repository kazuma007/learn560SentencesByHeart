package duo;

public class EnContents {

	private int id;
	private String japanese;
	private String english;

	public EnContents(int id, String japanese, String english) {
		this.id = id;
		this.japanese = japanese;
		this.english = english;
	}

	public EnContents() {}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getJapanese() {
		return japanese;
	}
	public void setJapanese(String japanese) {
		this.japanese = japanese;
	}
	public String getEnglish() {
		return english;
	}
	public void setEnglish(String english) {
		this.english = english;
	}



}
