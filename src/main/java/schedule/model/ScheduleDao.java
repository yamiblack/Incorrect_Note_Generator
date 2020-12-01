package schedule.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import jsp.util.DBConnection;
import kr.ac.jbnu.entity.model.Note;
import kr.ac.jbnu.entity.util.HibernateUtil;

public class ScheduleDao {
	public void saveNote(Schedule schedule) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			String SQL = "INSERT INTO schedule(subject,startDate,endDate,memo) VALUES(?,?,?,?)";

			Class.forName("com.mysql.cj.jdbc.Driver");
			DBConnection dbc = new DBConnection();
			conn = DriverManager.getConnection(dbc.getDataUrl(), dbc.getUser(), dbc.getPassword());
			pstmt = conn.prepareStatement(SQL);
			
			pstmt.setString(1,schedule.getSubject());
			pstmt.setString(2,schedule.getStartDate());
			pstmt.setString(3,schedule.getEndDate());
			pstmt.setString(4,schedule.getMemo());
			
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally { 
			//�������� �ݴ�� close �� 
			if (pstmt != null) { 
				try { 
					pstmt.close(); 
				}catch (SQLException e){ 
					e.printStackTrace(); 
				} 
			} if (conn != null) {
				try {
					conn.close(); 
				} catch (SQLException e) {
					e.printStackTrace(); 
				} 
			} 
		}
	}

}
	
		


