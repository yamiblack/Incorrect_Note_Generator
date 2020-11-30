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
			String SQL = "insert into note(answer, category, choice1, choice2, choice3, choice4, choice5, content, date, description, level, mywrong, name)"
					+ " values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

			Class.forName("com.mysql.cj.jdbc.Driver");
			DBConnection dbc = new DBConnection();
			conn = DriverManager.getConnection(dbc.getDataUrl(), dbc.getUser(), dbc.getPassword());
			pstmt = conn.prepareStatement(SQL);
			
			pstmt.setString(1, note.getAnswer());
			pstmt.setString(2, "ca");
			pstmt.setString(3, note.getChoice1());
			pstmt.setString(4, note.getChoice2());
			pstmt.setString(5, note.getChoice3());
			pstmt.setString(6, note.getChoice4());
			pstmt.setString(7, note.getChoice5());
			pstmt.setString(8, note.getContent());
			pstmt.setString(9, note.getDate());
			pstmt.setString(10, note.getDescription());
			pstmt.setString(11, Integer.toString(note.getLevel()));
			pstmt.setString(12, note.getMywrong());
			pstmt.setString(13, note.getName());
			
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
	
		


