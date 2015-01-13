package com.tsahimur.ubflood.util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.tsahimur.ubflood.entity.Category;

public class Test {
	public static void main(String[] args) {
		// jdbc/psql-DRM-Local
		// EntityManagerFactory emf =
		// Persistence.createEntityManagerFactory(\"ubflood-PU\");
		// EntityManager em = emf.createEntityManager();
		// Category cat = new Category();
		// cat.setActiveFlag(true);
		// cat.setId(1);
		// cat.setCategoryName(\"New Category-1\");
		// cat.setParentId(0);

		// String test = null;
		// Integer i = Integer.valueOf(test);
		// System.out.println(i);

		String text = "<b>BOLD</b><p style=\"text-align: center;\"><span style=\"font-size: 11pt;\"><iframe id=\"map_frame_sbd\" class=\"maps\" style=\"border: none;\" src=\"http://128.199.170.61:8080/geoexplorer/composer/#maps/4\" width=\"300\" height=\"150\"></iframe>&nbsp;</span></p> <div>test</div>";
		System.out.println(text.equalsIgnoreCase(Jsoup.clean(text,
				Whitelist.relaxed())));
		Jsoup.clean(text, Whitelist.basicWithImages());
		try {
			String password = "drmPas$ead6";
			PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			String encodedPassword = passwordEncoder.encode(password);
			
			System.out.println(encodedPassword);
			
			String salt = "DRMubFlood";
			String pass = "eadb3kig";
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			
			md.update((pass).getBytes());

			byte byteData[] = md.digest();
			// convert the byte to hex format method 1
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < byteData.length; i++) {
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16)
						.substring(1));
			}

			System.out.println("Hex format : " + sb.toString());
			
			
//			SecureRandom random = new SecureRandom();
//			System.out.println("STring : " + new BigInteger(130, random).toString(12));
//			System.out.print(new BigInteger(130, random).toString(12));
			
			
			RandomString rstr = new RandomString(8);
			System.out.println("Random Str: " + rstr.nextString());

		} catch (Exception e) {
			// TODO: handle exception
		}

		System.out.println("#+ " + text);
//		System.out.println("+ " + Jsoup.clean(text, Whitelist.basic()));
		System.out.println("+ " + Jsoup.clean(text, Whitelist.basicWithImages()));
//		System.out.println("+ " + Jsoup.clean(text, Whitelist.relaxed()));
//		System.out.println("+ " + Jsoup.clean(text, Whitelist.simpleText()));
		System.out.println("#+ " + text);

		// em.persist(cat);
		// em.close();
		// emf.close();
	}
	
}
class RandomString {

	  private static final char[] symbols;

	  static {
	    StringBuilder tmp = new StringBuilder();
	    for (char ch = '0'; ch <= '9'; ++ch)
	      tmp.append(ch);
	    for (char ch = 'a'; ch <= 'z'; ++ch)
	      tmp.append(ch);
	    symbols = tmp.toString().toCharArray();
	  }   

	  private final Random random = new Random();

	  private final char[] buf;

	  public RandomString(int length) {
	    if (length < 1)
	      throw new IllegalArgumentException("length < 1: " + length);
	    buf = new char[length];
	  }

	  public String nextString() {
	    for (int idx = 0; idx < buf.length; ++idx) 
	      buf[idx] = symbols[random.nextInt(symbols.length)];
	    return new String(buf);
	  }
	}
