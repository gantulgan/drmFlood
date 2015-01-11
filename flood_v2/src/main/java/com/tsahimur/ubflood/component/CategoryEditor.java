package com.tsahimur.ubflood.component;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.tsahimur.ubflood.entity.Category;
import com.tsahimur.ubflood.service.CategoryService;

@Component
public class CategoryEditor extends PropertyEditorSupport {

	private @Autowired CategoryService categoryService;
	
	@Override
	public void setAsText(String text) {
		Integer id = null;
		try {
			id = Integer.valueOf(text);
		} catch (NumberFormatException e) {
			this.setValue(null);
		}
//		System.out.println("CATEGORY ID FROM EDITOR: " + id);
		if (id != null){
			Category c = this.categoryService.getCategoryById(id);
//			System.out.println("CATEGORY : " +c);
			this.setValue(c);
		}
	}
}
