package com.tsahimur.ubflood.dao.impl;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.tsahimur.ubflood.dao.AlertDao;
import com.tsahimur.ubflood.entity.Alert;
import com.tsahimur.ubflood.entity.Category;

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
		return getEntityManager().createQuery("SELECT x FROM " + getPersistentClass().getSimpleName() + " x WHERE x.endDate > "
												+ date ).getResultList();
	}
}
