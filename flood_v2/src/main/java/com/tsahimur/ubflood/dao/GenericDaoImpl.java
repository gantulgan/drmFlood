package com.tsahimur.ubflood.dao;

import java.io.Serializable;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * GenericDAO class-n biejuulelt/implementation
 * 
 * @author gantulga
 */


public abstract class GenericDaoImpl<T, ID extends Serializable> implements GenericDao<T, ID> {

	private Class<T> persistentClass;
	
	@PersistenceContext
	private EntityManager entityManager;
	
	public GenericDaoImpl(Class<T> persistentClass) {
		this.persistentClass = persistentClass;
	}

	protected EntityManager getEntityManager() {
		return entityManager;
	}

	public Class<T> getPersistentClass() {
		return persistentClass;
	}
	
	public T findById(ID id) {
		T entity = (T) getEntityManager().find(getPersistentClass(), id);
		return entity;
	}
	
	@SuppressWarnings("unchecked")
	public List<T> findAll() {
		return getEntityManager().createQuery("select x from " + getPersistentClass().getSimpleName() + " x ").getResultList();
	}
	
	public T save(T entity) {
		System.out.println("Save");
		getEntityManager().persist(entity);
		return entity;
	}
	
	public T update(T entity) {
		T updatedEntity = getEntityManager().merge(entity);
		return updatedEntity;
	}
	
	public void delete(T entity) {
		getEntityManager().remove(entity);
	}

	public void flush() {
		getEntityManager().flush();
	}
	
}
