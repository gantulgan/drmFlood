package com.tsahimur.ubflood.entity;

import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
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

	@Column(name = "name_mon")
	private String nameMon;
	
	@Column(name = "name_en")
	private String nameEn;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "parent_id")
	private Category parent;
	
	@OneToMany(mappedBy ="parent", fetch = FetchType.LAZY)
	private List<Category> childCategories = new LinkedList<Category>();
	
	@OneToMany(mappedBy ="category", fetch = FetchType.LAZY)
	private List<Post> posts = new LinkedList<Post>();
	
	@Column(name = "active_flag")
	private boolean activeFlag;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	
	public String getNameMon() {
		return nameMon;
	}

	public void setNameMon(String nameMon) {
		this.nameMon = nameMon;
	}

	public String getNameEn() {
		return nameEn;
	}

	public void setNameEn(String nameEn) {
		this.nameEn = nameEn;
	}
	

	public Category getParent() {
		return parent;
	}

	public void setParent(Category parent) {
		this.parent = parent;
	}
	
	public boolean isActiveFlag() {
		return activeFlag;
	}

	public void setActiveFlag(boolean activeFlag) {
		this.activeFlag = activeFlag;
	}

	public List<Category> getChildCategories() {
		return childCategories;
	}

	public void setChildCategories(List<Category> childCategories) {
		this.childCategories = childCategories;
	}
	
	public List<Post> getPosts() {
		return posts;
	}

	public void setPosts(List<Post> posts) {
		this.posts = posts;
	}

	@Override
	public String toString() {
		return "Category [id=" + id + ", nameMon=" + nameMon + ", nameEn="
				+ nameEn + ", parent=" + parent + ", childCategories="
				+ childCategories + ", posts=" + posts + ", activeFlag="
				+ activeFlag + "]";
	}

}
