package com.newer.dao.impl;
// default package

import com.newer.dao.inter.BaseHibernateDAO;
import com.newer.pojo.Admin;
import com.newer.pojo.Admin;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 	* A data access object (DAO) providing persistence and search support for Admin entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see .Admin
  * @author MyEclipse Persistence Tools 
 */
public class AdminDAO extends BaseHibernateDAO  {
	     private static final Logger log = LoggerFactory.getLogger(AdminDAO.class);
		//property constants
	public static final String ADMINNAME = "adminname";
	public static final String PASSWORD = "password";



    
//  �������  
    public boolean save(Admin transientInstance) {
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
  public boolean update(Admin admin) {
		boolean flag = false;
		Transaction tran = null;
		try {
			tran = getSession().beginTransaction();
          getSession().update(admin);
			tran.commit();
			flag = true;
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		} 
		
		return flag;
	}
    
	public boolean delete(Admin persistentInstance) {
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
    public Admin findById( int id) {
        try {
        	Admin instance = (Admin) getSession()
                     .get(Admin.class, id);
             getSession().evict(instance);
             return instance;
        } catch (RuntimeException re) {
        	  throw re;
        }
    }
    
//  ���ʵ���ѯ
    public List findByExample(Admin instance) {
      
        try {
            List results = getSession()
                    .createCriteria("com.newer.pojo.Admin")
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
         String queryString = "from Admin as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         throw re;
      }
	}

	public List findByAdminname(Object adminname
	) {
		return findByProperty(ADMINNAME, adminname
		);
	}
	
	public List findByPassword(Object password
	) {
		return findByProperty(PASSWORD, password
		);
	}
	

	public List findAll() {
		
		try {
			String queryString = "from Admin";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
	
			throw re;
		}
	}
	
    public Admin merge(Admin detachedInstance) {

        try {
            Admin result = (Admin) getSession()
                    .merge(detachedInstance);

            return result;
        } catch (RuntimeException re) {

            throw re;
        }
    }

    public void attachDirty(Admin instance) {
  
        try {
            getSession().saveOrUpdate(instance);
  
        } catch (RuntimeException re) {
  
            throw re;
        }
    }
    
    public void attachClean(Admin instance) {
   
        try {
                      	getSession().lock(instance, LockMode.NONE);
    
        } catch (RuntimeException re) {
  
            throw re;
        }
    }
}