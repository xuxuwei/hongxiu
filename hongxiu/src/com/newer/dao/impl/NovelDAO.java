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
import com.newer.pojo.Novel;

/**
 	* A data access object (DAO) providing persistence and search support for Novel entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see .Novel
  * @author MyEclipse Persistence Tools 
 */
public class NovelDAO extends BaseHibernateDAO  {
	     private static final Logger log = LoggerFactory.getLogger(NovelDAO.class);
		//property constants
	public static final String NOVELNAME = "novelname";
	public static final String WRITER = "writer";
	public static final String CLICK = "click";
	public static final String IMAGE = "image";
	public static final String INTRODUCE = "introduce";
	public static final String ADDTIME = "addtime";
	public static final String UPDATETIME = "updatetime";



    
//  �������  
    public boolean save(Novel transientInstance) {
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
  public boolean update(Novel novel) {
		boolean flag = false;
		Transaction tran = null;
		try {
			tran = getSession().beginTransaction();
          getSession().update(novel);
			tran.commit();
			flag = true;
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		} 
		
		return flag;
	}
    
	public boolean delete(Novel persistentInstance) {
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
    public Novel findById( int id) {
 
        try {
        	Novel instance = (Novel) getSession()
                     .get(Novel.class, id);
             getSession().evict(instance);
             return instance;
        } catch (RuntimeException re) {
        	  throw re;
        }
    }
    
//  ���ʵ���ѯ
    public List findByExample(Novel instance) {

        try {
            List results = getSession()
                    .createCriteria("com.newer.pojo.Novel")
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
         String queryString = "from Novel as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         throw re;
      }
	}
	public List findByNovelname(Object novelname
	) {
		return findByProperty(NOVELNAME, novelname
		);
	}
	
	public List findByWriter(Object writer
	) {
		return findByProperty(WRITER, writer
		);
	}
	
	public List findByClick(Object click
	) {
		return findByProperty(CLICK, click
		);
	}
	
	public List findByImage(Object image
	) {
		return findByProperty(IMAGE, image
		);
	}
	
	public List findByIntroduce(Object introduce
	) {
		return findByProperty(INTRODUCE, introduce
		);
	}
	
	public List findByAddtime(Object addtime
	) {
		return findByProperty(ADDTIME, addtime
		);
	}
	
	public List findByUpdatetime(Object updatetime
	) {
		return findByProperty(UPDATETIME, updatetime
		);
	}
	
	public List findByType(Object type
			) {
				return findByProperty(UPDATETIME, type
				);
			}

	public List findAll() {

		try {
			String queryString = "from Novel";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {

			throw re;
		}
	}
	
public List<Novel> findByI(Novel novel) {
		
		Query query = getSession().createQuery(
				"from Novel as n where n.id like :name");
		query.setLong("name", novel.getId());
		return query.list();
	}
	
	public List<Novel> findByT(Novel novel) {
		
		Query query = getSession().createQuery(
				"from Novel as n where n.type like :name");
		query.setString("name", novel.getType());
		return query.list();
	}
	
	public List<Novel> findByVip(Novel novel) {
		
		Query query = getSession().createQuery(
				"from Novel as n where n.vip.id like :name");
		query.setLong("name", novel.getVip().getId());
		return query.list();
	}
	
//	根据小说名模糊查询
	public List<Novel> findByCondition(Novel novel) {
		
		Query query = getSession().createQuery(
				"from Novel as n where n.novelname like :name");
		query.setString("name", "%"+novel.getNovelname()+"%");
		return query.list();
	}
	//根据作者名模糊查询
public List<Novel> findByW(Novel novel) {
		
		Query query = getSession().createQuery(
				"from Novel as n where n.writer like :name");
		query.setString("name", "%"+novel.getWriter()+"%");
		return query.list();
	}
	
    public Novel merge(Novel detachedInstance) {
 
        try {
            Novel result = (Novel) getSession()
                    .merge(detachedInstance);
 
            return result;
        } catch (RuntimeException re) {

            throw re;
        }
    }

    public void attachDirty(Novel instance) {
 
        try {
            getSession().saveOrUpdate(instance);
 
        } catch (RuntimeException re) {
     
            throw re;
        }
    }
    
    public void attachClean(Novel instance) {
     
        try {
                      	getSession().lock(instance, LockMode.NONE);
                    
        } catch (RuntimeException re) {
       
            throw re;
        }
    }
}