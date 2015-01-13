package com.tsahimur.ubflood.service.impl;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tsahimur.ubflood.dao.AlertDao;
import com.tsahimur.ubflood.entity.Alert;
import com.tsahimur.ubflood.service.AlertService;

@Service
@Transactional
public class AlertServiceImpl implements AlertService {

	@Inject private AlertDao alertDao;
	@Override
	public Alert getAlertById(int id) {
		// TODO Auto-generated method stub
		return alertDao.findById(id);
	}

	@Override
	public Alert createAlert(Alert alert) {
		// TODO Auto-generated method stub
		return alertDao.save(alert);
	}

	@Override
	public Alert updateAlert(Alert alert) {
		// TODO Auto-generated method stub
		return alertDao.update(alert);
	}

	@Override
	public void deleteAlert(Alert alert) {
		// TODO Auto-generated method stub
		alertDao.delete(alert);
	}

	@Override
	public boolean deleteAlertById(int id) {
		// TODO Auto-generated method stub
		Alert alert = getAlertById(id);
		alertDao.delete(alert);
		return false;
	}

	@Override
	public List<Alert> getAlertByDate(Date date) {
		// TODO Auto-generated method stub
		return alertDao.getAlertByDate(date);
	}

	@Override
	public List<Alert> getAllAlerts() {
		// TODO Auto-generated method stub
		return alertDao.findAll();
	}

}
