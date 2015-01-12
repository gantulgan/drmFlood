package com.tsahimur.ubflood.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "t_post")
public class Post implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4244374798577974103L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
	private int id;
	
	@Column(name = "title_mon")
	private String titleMon;
	
	@Column(name = "title_en")
	private String titleEn;

	@Column(name = "content_mon")
	private String contentMon;
	
	@Column(name = "content_en")
	private String contentEn;

	@Column(name = "active_flag")
	private boolean activeFlag;
	
	@ManyToOne/*(fetch = FetchType.LAZY)*/
	@JoinColumn(name = "category_id")
	private Category category;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitleMon() {
		return titleMon;
	}

	public void setTitleMon(String titleMon) {
		this.titleMon = titleMon;
	}

	public String getTitleEn() {
		return titleEn;
	}

	public void setTitleEn(String titleEn) {
		this.titleEn = titleEn;
	}

	public String getContentMon() {
		return contentMon;
	}

	public void setContentMon(String contentMon) {
		this.contentMon = contentMon;
	}

	public String getContentEn() {
		return contentEn;
	}

	public void setContentEn(String contentEn) {
		this.contentEn = contentEn;
	}

	public boolean isActiveFlag() {
		return activeFlag;
	}

	public void setActiveFlag(boolean activeFlag) {
		this.activeFlag = activeFlag;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "Post [id=" + id + ", titleMon=" + titleMon + ", titleEn="
				+ titleEn + ", contentMon=" + contentMon + ", contentEn="
				+ contentEn + ", activeFlag=" + activeFlag + ", category="
				+ category + "]";
	}
	
	
}
