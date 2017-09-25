package com.newer.dao.impl;
// default package

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.newer.dao.inter.BaseHibernateDAO;
import com.newer.pojo.Chapter;
import com.newer.pojo.Message;

/**
 	* A data access object (DAO) providing persistence and search support for Message entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see .Message
  * @author MyEclipse Persistence Tools 
 */
public class MessageDAO extends BaseHibernateDAO  {
	     private static final Logger log = LoggerFactory.getLogger(MessageDAO.class);
		//property constants
	public static final String TITLE = "title";
	public static final String WORDS = "words";
	public static final String DATE = "date";
	public static final String VIEW = "view";



    
//  �������  
    public boolean save(Message transientInstance) {
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
  public boolean update(Message message) {
		boolean flag = false;
		Transaction tran = null;
		try {
			tran = getSession().beginTransaction();
          getSession().update(message);
			tran.commit();
			flag = true;
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		} 
		
		return flag;
	}
    
	public boolean delete(Message persistentInstance) {
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
    public Message findById( int id) {
  
        try {
        	Message instance = (Message) getSession()
                     .get(Chapter.class, id);
             getSession().evict(instance);
             return instance;
        } catch (RuntimeException re) {
        	  throw re;
        }
    }
    
//  ���ʵ���ѯ
    public List findByExample(Message instance) {

        try {
            List results = getSession()
                    .createCriteria("com.newer.pojo.Message")
                    .add(Example.create(instance))
            .list();
            return results;
        } catch (RuntimeException re) {
        	  throw re;
        }
    }    
//  ������Բ�ѯ
    public List findByProperty(String propertyName, Object value) {
      try {
         String queryString = "from Message as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         throw re;
      }
	}

	public List findByTitle(Object title
	) {
		return findByProperty(TITLE, title
		);
	}
	
	public List findByWords(Object words
	) {
		return findByProperty(WORDS, words
		);
	}
	
	public List findByDate(Object date
	) {
		return findByProperty(DATE, date
		);
	}
	
	public List findByView(Object view
	) {
		return findByProperty(VIEW, view
		);
	}
	

	public List findAll() {
		try {
			String queryString = "from Message";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			throw re;
		}
	}
	
//	���������ģ���ѯ(%��%)��������������
	public List<Message> findByCondition(Message message) {
		
		Query query = getSession().createQuery(
				"from Message as m where m.user.username like :name");
		query.setString("name", "%"+message.getUser().getUsername()+"%");
		return query.list();
	}
	
    public Message merge(Message detachedInstance) {
 
        try {
            Message result = (Message) getSession()
                    .merge(detachedInstance);
 
            return result;
        } catch (RuntimeException re) {
  
            throw re;
        }
    }

    public void attachDirty(Message instance) {

        try {
            getSession().saveOrUpdate(instance);

        } catch (RuntimeException re) {
  
            throw re;
        }
    }
    
    public void attachClean(Message instance) {

        try {
                      	getSession().lock(instance, LockMode.NONE);
 
        } catch (RuntimeException re) {
  
            throw re;
        }
    }
}