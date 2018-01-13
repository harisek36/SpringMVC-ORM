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

    @Transactional
    public List<User> getCustomers() {
        TypedQuery<User> query = entityManager.createNamedQuery("Users.findAll",User.class);
        return query.getResultList();
    }
}
