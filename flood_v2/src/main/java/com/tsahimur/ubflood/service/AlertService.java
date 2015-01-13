package com.tsahimur.ubflood.service;

import java.util.Date;
import java.util.List;

import com.tsahimur.ubflood.entity.Alert;

public interface AlertService {


public Alert getAlertById(int id);
public Alert createAlert(Alert alert);
public Alert updateAlert(Alert alert);
public void deleteAlert(Alert alert);
public boolean deleteAlertById(int id);

public List<Alert> getAllAlerts();
public List<Alert> getAlertByDate(Date date);
}
