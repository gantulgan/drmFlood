package com.tsahimur.ubflood.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "T_ALERT")
public class Alert implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 494118483060563325L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;
	
/*	@Column(name = "start_date")
	private String startDate;
	
	@Column(name = "end_date")
	private String endDate;*/
	
	@Temporal(TemporalType.DATE)
	@Column(name = "start_date")
	private Date startDate;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "end_date")
	private Date endDate;
	
	@Column(name = "alert_mon")
	private String alertMon;
	
	@Column(name = "alert_en")
	private String alertEn;
	
	@Column(name = "active_flag")
	private boolean activeFlag;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Temporal(TemporalType.DATE)
	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	@Temporal(TemporalType.DATE)
	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
	/*public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}*/

	public String getAlertMon() {
		return alertMon;
	}

	public void setAlertMon(String alertMon) {
		this.alertMon = alertMon;
	}

	public String getAlertEn() {
		return alertEn;
	}

	public void setAlertEn(String alertEn) {
		this.alertEn = alertEn;
	}

	public boolean isActiveFlag() {
		return activeFlag;
	}

	public void setActiveFlag(boolean activeFlag) {
		this.activeFlag = activeFlag;
	}
	
	@Override
	public String toString() {
		return "Alert [id = " + id + ", startDate = " + startDate + ", endDate = " + endDate + 
						", alertMon = " + alertMon + ", alertEn = " + alertEn + 
						", activeFlag = " + activeFlag + "]";
	}
}
