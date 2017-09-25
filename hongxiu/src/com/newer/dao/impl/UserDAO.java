package com.newer.dao.impl;
// default package

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.newer.dao.inter.BaseHibernateDAO;
import com.newer.pojo.User;

/**
 	* A data access object (DAO) providing persistence and search support for User entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see .User
  * @author MyEclipse Persistence Tools 
 */
public class UserDAO extends BaseHibernateDAO  {
	     private static final Logger log = LoggerFactory.getLogger(UserDAO.class);
		//property constants
	public static final String SEX = "sex";
	public static final String AGE = "age";
	public static final String USERNAME = "username";
	public static final String PASSWORD = "password";
	public static final String EMAIL = "email";



    
//  �������  
    public boolean save(User transientInstance) {
    	 boolean flag = false;
 		Transaction tran = null;
        try {
        	tran = getSession().beginTransaction();
            getSession().save(transientInstance);
            tran.commit();
			flag = true;
        } catch (RuntimeException re) {
        	 tran.rollback();
             throw re;
        }
        return flag;
    }
    
//  ���²���
  public boolean update(User user) {
		boolean flag = false;
		Transaction tran = null;
		try {
			tran = getSession().beginTransaction();
          getSession().update(user);
			tran.commit();
			flag = true;
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		} 
		
		return flag;
	}
    
	public boolean delete(User persistentInstance) {
		 boolean flag = false;
	 		Transaction tran = null;
        try {
        	tran = getSession().beginTransaction();
            getSession().delete(persistentInstance);
            tran.commit();
			flag = true;
        } catch (RuntimeException re) {
        	 tran.rollback();
             throw re;
        }
        return flag;
    }
	
//  ���id��ѯ
    public User findById( int id) {
       
        try {
        	User instance = (User) getSession()
                     .get(User.class, id);
             getSession().evict(instance);
             return instance;
        } catch (RuntimeException re) {
        	  throw re;
        }
    }
    
//  ���ʵ���ѯ
    public List findByExample(User instance) {
      
        try {
        	
        	String sqlString = "from User as u where u.username=:name";
        	Query query = getSession().createQuery(sqlString);
        	query.setString("name", instance.getUsername());
        	List<User> list = query.list();
        	
          /*  List results = getSession()
                    .createCriteria("com.newer.pojo.User")
                    .add(Restrictions.eq("username","王五1234"))
                    .add(Restrictions.eq("password", "123456"))
                    .add(Example.create(instance))
            .list();*/
            return list;
        } catch (RuntimeException re) {
        	  throw re;
        }
    }    
//  ������Բ�ѯ
    public List findByProperty(String propertyName, Object value) {
      try {
         String queryString = "from User as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         throw re;
      }
	}
	public List findBySex(Object sex
	) {
		return findByProperty(SEX, sex
		);
	}
	
	public List findByAge(Object age
	) {
		return findByProperty(AGE, age
		);
	}
	
	public List findByUsername(Object username
	) {
		return findByProperty(USERNAME, username
		);
	}
	
	public List findByPassword(Object password
	) {
		return findByProperty(PASSWORD, password
		);
	}
	
	public List findByEmail(Object email
	) {
		return findByProperty(EMAIL, email
		);
	}
	

	public List findAll() {
		
		try {
			String queryString = "from User";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			throw re;
		}
	}
//	�������ģ���ѯ(%��%)��������������
	public List<User> findByCondition(User user) {
		
		Query query = getSession().createQuery(
				"from User as u where u.username like :name");
		query.setString("name", "%"+user.getUsername()+"%");
		return query.list();
	}
    public User merge(User detachedInstance) {
       
        try {
            User result = (User) getSession()
                    .merge(detachedInstance);
           
            return result;
        } catch (RuntimeException re) {
         
            throw re;
        }
    }

    public void attachDirty(User instance) {
     
        try {
            getSession().saveOrUpdate(instance);
          
        } catch (RuntimeException re) {
          
            throw re;
        }
    }
    
    public void attachClean(User instance) {
       
        try {
                      	getSession().lock(instance, LockMode.NONE);
                    
        } catch (RuntimeException re) {
           
            throw re;
        }
    }
}