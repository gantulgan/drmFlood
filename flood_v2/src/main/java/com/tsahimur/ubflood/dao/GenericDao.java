package com.tsahimur.ubflood.dao;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.tsahimur.ubflood.entity.Alert;

/**
 * Generic interface for DAO. 
 * Baazruu bichih undsen methoduud bichsen interface.
 * 
 * @author gantulga
 */

public interface GenericDao<T, ID extends Serializable> {
	
	T save(T entity);
	T update(T entity);
	void delete(T entity);
	T findById(ID id);
	List<T> findAll();
	void flush();
	
}
