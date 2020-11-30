package kr.ac.jbnu.entity.dao;

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

public class NoteDao {
	public void saveNote(Note note) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			String SQL = "insert into note(id, answer, category, choice1, choice2, choice3, choice4, choice5, content, date, description, level, mywrong, name) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

			Class.forName("com.mysql.cj.jdbc.Driver");
			DBConnection dbc = new DBConnection();
			conn = DriverManager.getConnection(dbc.getDataUrl(), dbc.getUser(), dbc.getPassword());
			pstmt = conn.prepareStatement(SQL);
			
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
			//사용순서와 반대로 close 함 
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
	
		


