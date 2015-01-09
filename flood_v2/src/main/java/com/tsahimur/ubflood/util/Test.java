package com.tsahimur.ubflood.util;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;

import com.tsahimur.ubflood.entity.Category;

public class Test {
	public static void main(String[] args) {
//		jdbc/psql-DRM-Local
//		EntityManagerFactory emf = Persistence.createEntityManagerFactory(\"ubflood-PU\");
//		EntityManager em = emf.createEntityManager();
//		Category cat = new Category();
//		cat.setActiveFlag(true);
//		cat.setId(1);
//		cat.setCategoryName(\"New Category-1\");
//		cat.setParentId(0);
		
//		String test = null;
//		Integer i = Integer.valueOf(test);
//		System.out.println(i);
		
		String text = "<b>BOLD</b><p style=\"text-align: center;\"><span style=\"font-size: 11pt;\"><iframe id=\"map_frame_sbd\" class=\"maps\" style=\"border: none;\" src=\"http://128.199.170.61:8080/geoexplorer/composer/#maps/4\" width=\"300\" height=\"150\"></iframe>&nbsp;</span></p> <div>test</div>";
		System.out.println( text.equalsIgnoreCase(Jsoup.clean(text, Whitelist.relaxed())) );
		Jsoup.clean(text, Whitelist.basicWithImages());

		System.out.println( "+ "+text );
		System.out.println( "+ "+Jsoup.clean(text, Whitelist.basic()) );
		System.out.println( "+ "+Jsoup.clean(text, Whitelist.basicWithImages()) );
		System.out.println( "+ "+Jsoup.clean(text, Whitelist.relaxed()) );
		System.out.println( "+ "+Jsoup.clean(text, Whitelist.simpleText()) );
		System.out.println( "+ "+text );
		
				
//		em.persist(cat);
//		em.close();
//		emf.close();
	}
}
