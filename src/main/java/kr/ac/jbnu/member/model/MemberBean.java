package kr.ac.jbnu.member.model;
 
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
 
 
// �������� ������ ����ϴ� Ŭ���� - DTO
public class MemberBean 
{
	
    public MemberBean() {
	}
	public MemberBean(String id, String password, String name, String gender, String birthyy, String birthmm, String birthdd,
			String mail1, String mail2, String phone, String address) {
		this.id = id;
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
	private String id;            // ���̵�
    private String password;     // ��й�ȣ
    private String name;        // �̸�
    private String gender;        // ����
    private String birthyy;        // ���� - ��
    private String birthmm;        // ���� - ��
    private String birthdd;        // ���� - ��
    private String mail1;        // �̸��� - @ �պκ�
    private String mail2;        // �̸��� - @ �޺κ�
    private String phone;        // ��ȭ
    private String address;        // �ּ�
    
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