package kr.ac.jbnu.entity.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import kr.ac.jbnu.entity.model.Note;
import kr.ac.jbnu.entity.util.HibernateUtil;

public class NoteDao {
	public void saveEmployee(Note note) {
		System.out.println("========SAVE========");
		Transaction transaction = null;
		try(Session session = HibernateUtil.getSessionFactory().openSession()){
			//start the transaction
			transaction = session.beginTransaction();
			
			//save student object
			session.save(note);
			System.out.println("Successfully create : "+note.toString());
			//commit the transaction
			transaction.commit();
			
		}catch(Exception e) {
			if(transaction !=null) {
				transaction.rollback();
			}
		}
	}
}
