package com.tsahimur.ubflood.component;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import com.tsahimur.ubflood.entity.Alert;
import com.tsahimur.ubflood.service.AlertService;

@Component
public class AlertDateEditor extends PropertyEditorSupport {

	private @Autowired AlertService alertService;
	
	@Override
	public void setAsText(String text) {
		SimpleDateFormat  formatter = new SimpleDateFormat("yyyy-MM-dd");
		 
		try {
			Date date = formatter.parse(text);
		/*	if(date != null) {
				Alert a = (Alert) this.alertService.getAlertByDate(date);*/
				this.setValue(date);
			/*}*/
		} catch (NumberFormatException e) {
			this.setValue(null);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
