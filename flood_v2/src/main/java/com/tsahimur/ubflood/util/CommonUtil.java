package com.tsahimur.ubflood.util;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;

import com.tsahimur.ubflood.entity.Category;
import com.tsahimur.ubflood.entity.Post;

public class CommonUtil {
	public static List<Category> removeElementById(List<Category> list, int id){
		if ( list != null ){
			Category searchingCat = null;
			for (Category c : list){
				if ( c.getId() == id ){
					searchingCat = c;
					break;
				}
			}
			list.remove(searchingCat);
		}
		
		
		return list;
	}

	private static String sanitizeText( String text ){
		return Jsoup.clean(text, Whitelist.simpleText() );
	};

	private static String sanitizeBasicWithImage( String text ){
		return Jsoup.clean(text, Whitelist.basicWithImages() );
	};
	
	public static Post sanitizePost(Post p){
		p.setTitleEn( sanitizeText(p.getTitleEn()) );
		p.setTitleMon( sanitizeText(p.getTitleMon()) );
		p.setContentEn( sanitizeBasicWithImage(p.getContentEn()) );
		p.setContentMon( sanitizeBasicWithImage(p.getContentMon()) );
		return p;
	}

	public static Category sanitizeCategory(Category c){
		c.setNameEn( sanitizeText(c.getNameEn()) );
		c.setNameMon( sanitizeText(c.getNameMon()) );
		
		return c;
	}


    public static List<Post> sortPostsLastFirst( List<Post> posts ){
        if (posts.size() > 0) {
            Collections.sort(posts, new Comparator<Post>() {
                @Override
                public int compare(final Post object1, final Post object2) {
                    return (object2.getId() - object1.getId());
                }
            });
        }
        return posts;
    }
}
