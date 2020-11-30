package jsp.util;
 
import java.sql.Connection;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
 
// 커넥션을 얻어오는 클래스 - JNDI
public class DBConnection 
{
	// 디비에 접속하고싶으면 여기에 아이디랑 비번 바꿔서 접속하세요
	String dburl = "jdbc:mysql://211.33.126.173:3306/ing?characterEncoding=UTF-8&serverTimezone=UTC";
	String user = "아이디";
	String password = "비번";
    
    public String getDataUrl() {
    	return this.dburl;
    }
    
    public String getUser() {
    	return this.user;
    }
    
    public String getPassword() {
    	return this.password;
    }
}