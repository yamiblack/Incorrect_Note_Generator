package kr.ac.jbnu.entity.model;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Note")
public class Note {
	
	public Note(String name, Integer level, String category, String content, String choice1, String choice2,
			String choice3, String choice4, String choice5, String answer, String mywrong, String description) {
		System.out.println("»ý¼º");
		this.name = name;
		this.level = level;
		this.category = category;
		this.content = content;
		this.choice1 = choice1;
		this.choice2 = choice2;
		this.choice3 = choice3;
		this.choice4 = choice4;
		this.choice5 = choice5;
		this.answer = answer;
		this.mywrong = mywrong;
		this.description = description;
		
		SimpleDateFormat dataFormat = new SimpleDateFormat("yyyy.MM.dd");
		String now = dataFormat.format(new Date());
		this.date = now;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column
	private long id;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "level")
	private Integer level;
	
	@Column(name = "category")
	private String category;
	
	@Column(name = "content")
	private String content;
	
	@Column(name = "choice1")
	private String choice1;
	
	@Column(name = "choice2")
	private String choice2;
	
	@Column(name = "choice3")
	private String choice3;
	
	@Column(name = "choice4")
	private String choice4;
	
	@Column(name = "choice5")
	private String choice5;
	
	@Column(name = "answer")
	private String answer;
	
	@Column(name =  "mywrong")
	private String mywrong;
	
	@Column(name = "description")
	private String description;
	
	@Column(name = "date")
	private String date;
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getLevel() {
		return level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getChoice1() {
		return choice1;
	}

	public void setChoice1(String choice1) {
		this.choice1 = choice1;
	}

	public String getChoice2() {
		return choice2;
	}

	public void setChoice2(String choice2) {
		this.choice2 = choice2;
	}

	public String getChoice3() {
		return choice3;
	}

	public void setChoice3(String choice3) {
		this.choice3 = choice3;
	}

	public String getChoice4() {
		return choice4;
	}

	public void setChoice4(String choice4) {
		this.choice4 = choice4;
	}

	public String getChoice5() {
		return choice5;
	}

	public void setChoice5(String choice5) {
		this.choice5 = choice5;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getMywrong() {
		return mywrong;
	}

	public void setMywrong(String mywrong) {
		this.mywrong = mywrong;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	
}
