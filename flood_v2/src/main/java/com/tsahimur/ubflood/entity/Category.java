package com.tsahimur.ubflood.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "T_CATEGORY")
public class Category implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -5397978776467006998L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
	private int id;
	
	@Column(name = "category_name")
	private String categoryName;
	
	@Column(name = "parent_id")
	private int parentId;
	
	@Column(name = "active_flag")
	private boolean activeFlag;

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public int getParentId() {
		return parentId;
	}

	public void setParentId(int parentId) {
		this.parentId = parentId;
	}

	public boolean isActiveFlag() {
		return activeFlag;
	}

	public void setActiveFlag(boolean activeFlag) {
		this.activeFlag = activeFlag;
	}

	@Override
	public String toString() {
		return "Category [id=" + id + ", categoryName=" + categoryName
				+ ", parentId=" + parentId + ", activeFlag=" + activeFlag + "]";
	}

}
