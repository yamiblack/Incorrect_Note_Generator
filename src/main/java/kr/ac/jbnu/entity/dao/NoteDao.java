package kr.ac.jbnu.entity.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import kr.ac.jbnu.entity.model.Note;
import kr.ac.jbnu.entity.util.HibernateUtil;

public class NoteDao {
	public void saveNote(Note note) {
		Transaction transaction = null;
		try(Session session = HibernateUtil.getSessionFactory().openSession()){
			//start the transaction
			transaction = session.beginTransaction();
			
			//save student object
			session.save(note);
			//commit the transaction
			transaction.commit();
			session.close();
			
		}catch(Exception e) {
			if(transaction !=null) {
				transaction.rollback();
			}
		}
	}
	
		

}
