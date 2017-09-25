package com.newer.dao.impl;
// default package

import java.util.List;
import java.util.Set;

import org.hibernate.HibernateException;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.newer.dao.inter.BaseHibernateDAO;
import com.newer.pojo.Vip;
import com.newer.pojo.Vip;

/**
 	* A data access object (DAO) providing persistence and search support for Vip entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see .Vip
  * @author MyEclipse Persistence Tools 
 */
public class VipDAO extends BaseHibernateDAO  {
	     private static final Logger log = LoggerFactory.getLogger(VipDAO.class);
		//property constants
	public static final String VIP = "vip";



    
//  �������  
    public boolean save(Vip transientInstance) {
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
  public boolean update(Vip vip) {
		boolean flag = false;
		Transaction tran = null;
		try {
			tran = getSession().beginTransaction();
          getSession().update(vip);
			tran.commit();
			flag = true;
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		} 
		
		return flag;
	}
    
	public boolean delete(Vip persistentInstance) {
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
    public Vip findById( int id) {
     
        try {
        	Vip instance = (Vip) getSession()
                     .get(Vip.class, id);
             getSession().evict(instance);
             return instance;
        } catch (RuntimeException re) {
        	  throw re;
        }
    }
    
//  ���ʵ���ѯ
    public List findByExample(Vip instance) {
      
        try {
            List results = getSession()
                    .createCriteria("com.newer.pojo.Vip")
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
         String queryString = "from Vip as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         throw re;
      }
	}

	public List findByVip(Object vip
	) {
		return findByProperty(VIP, vip
		);
	}
	

	public List findAll() {
		
		try {
			String queryString = "from Vip";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
		
			throw re;
		}
	}
	
	
    public Vip merge(Vip detachedInstance) {
       
        try {
            Vip result = (Vip) getSession()
                    .merge(detachedInstance);
          
            return result;
        } catch (RuntimeException re) {
          
            throw re;
        }
    }

    public void attachDirty(Vip instance) {
       
        try {
            getSession().saveOrUpdate(instance);
          
        } catch (RuntimeException re) {
           
            throw re;
        }
    }
    
    public void attachClean(Vip instance) {
       
        try {
                      	getSession().lock(instance, LockMode.NONE);
                       
        } catch (RuntimeException re) {
           
            throw re;
        }
    }
}