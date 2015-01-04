package com.tsahimur.ubflood.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.tsahimur.ubflood.entity.Category;

public class Test {
	public static void main(String[] args) {
//		jdbc/psql-DRM-Local
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ubflood-PU");
		EntityManager em = emf.createEntityManager();
		Category cat = new Category();
		cat.setActiveFlag(true);
		cat.setId(1);
		cat.setCategoryName("New Category-1");
		cat.setParentId(0);
		
		em.persist(cat);
		em.close();
		emf.close();
	}
}
