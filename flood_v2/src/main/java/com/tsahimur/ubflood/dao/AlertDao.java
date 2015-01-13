package com.tsahimur.ubflood.dao;

import java.util.Date;
import java.util.List;

import com.tsahimur.ubflood.entity.Alert;

public interface AlertDao extends GenericDao<Alert, Integer>{

	public List<Alert> getAlertById(int id);
	public List<Alert> getAlertByDate(Date date);
}
