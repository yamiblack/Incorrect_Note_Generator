package jsp.member.model;
 
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
 
 
// 데이터의 전달을 담당하는 클래스 - DTO
public class MemberBean 
{
	
    public MemberBean(String password, String name, String gender, String birthyy, String birthmm, String birthdd,
			String mail1, String mail2, String phone, String address) {
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.birthyy = birthyy;
		this.birthmm = birthmm;
		this.birthdd = birthdd;
		this.mail1 = mail1;
		this.mail2 = mail2;
		this.phone = phone;
		this.address = address;
	
	}
	private String id;            // 아이디
    private String password;     // 비밀번호
    private String name;        // 이름
    private String gender;        // 성별
    private String birthyy;        // 생일 - 년
    private String birthmm;        // 생일 - 월
    private String birthdd;        // 생일 - 일
    private String mail1;        // 이메일 - @ 앞부분
    private String mail2;        // 이메일 - @ 뒷부분
    private String phone;        // 전화
    private String address;        // 주소
    
    public String getId() {return id;}
    public void setId(String id) {this.id = id;}
    
    public String getPassword() {return password;}
    public void setPassword(String password) {this.password = password;}
    
    public String getName() {return name;}
    public void setName(String name) {this.name = name;}
    
    public String getGender() {return gender;}
    public void setGender(String gender) {this.gender = gender;}
    
    public String getBirthyy() {return birthyy;}
    public void setBirthyy(String birthyy) {this.birthyy = birthyy;}
    public String getBirthmm() {return birthmm;}
    public void setBirthmm(String birthmm) {this.birthmm = birthmm;}
    public String getBirthdd() {return birthdd;}
    public void setBirthdd(String birthdd) {this.birthdd = birthdd;}
    
    public String getMail1() {return mail1;}
    public void setMail1(String mail1) {this.mail1 = mail1;}
    public String getMail2() {return mail2;}
    public void setMail2(String mail2) {this.mail2 = mail2;}
    
    public String getPhone() {return phone;}
    public void setPhone(String phone) {this.phone = phone;}
    
    public String getAddress() {return address;}
    public void setAddress(String address) {this.address = address;}
   
}
