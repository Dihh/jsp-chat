import java.util.HashMap;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.fasterxml.jackson.databind.ObjectMapper;

import models.Chat_User;

public class exemple {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
			ObjectMapper mapper = new ObjectMapper();
			EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("chat_user");
			EntityManager entityManager = entityManagerFactory.createEntityManager();
			
//			Chat_User chat_User = entityManager.find(Chat_User.class, 1);
//			
//			
//			String json = "";
//			try {
//				json = mapper.writeValueAsString(chat_User);
//			}catch (Exception e) {
//				System.out.println(e);
//			}
//			
//			System.out.println(json);
			try {
			Chat_User chat_User = new Chat_User();
			chat_User.setUser_email("diegton@teste");
			chat_User.setUser_password("asdf");
			
			entityManager.getTransaction().begin();
			entityManager.persist(chat_User);
			entityManager.getTransaction().commit();
			}catch(Exception e) {
				System.out.println(e);
			}
			
			entityManager.close();
			entityManagerFactory.close();
			
	}

}
