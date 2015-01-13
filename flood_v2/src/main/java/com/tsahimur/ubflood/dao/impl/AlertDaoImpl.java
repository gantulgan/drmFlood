package com.tsahimur.ubflood.dao.impl;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.tsahimur.ubflood.dao.AlertDao;
import com.tsahimur.ubflood.entity.Alert;

@Repository
public class AlertDaoImpl extends GenericDaoImpl<Alert, Integer> implements AlertDao {
	
	public AlertDaoImpl() {
		super(Alert.class);
	}

	@Override
	public List<Alert> getAlertById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<Alert> getAlertByDate(Date date) {
		/*java.sql.Date sqlDate = new java.sql.Date(date.getDate()); */
	    
		return getEntityManager().createQuery("SELECT x FROM " + getPersistentClass().getSimpleName() 
				+ " x WHERE :date between x.startDate and x.endDate ").setParameter("date", date).getResultList();
	}
}
