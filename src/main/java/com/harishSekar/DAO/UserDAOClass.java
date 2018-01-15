package com.harishSekar.DAO;

import com.harishSekar.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.List;

@Repository
public class UserDAOClass implements UserDAO {

    @PersistenceContext
    private EntityManager entityManager;


    public List<User> getCustomers() {
        TypedQuery<User> query = entityManager.createNamedQuery("Users.findAll", User.class);
        return query.getResultList();
    }

    public void saveUser(User user) {
        System.out.println(user.toString());
        entityManager.persist(user);
    }

    public boolean getUser(String login, String password) {

        User checkUser = entityManager.createNamedQuery("Users.findbyLoginID", User.class).setParameter("loginId", login)
                .setParameter("password",password).getSingleResult();

        if (checkUser != null) {
            System.out.println("********" + checkUser.toString() + "*****************");

            return true;
        } else {
            System.out.println("********" + "Returned Null" + "*****************");

            return false;
        }
    }
}

