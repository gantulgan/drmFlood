<%@page import="com.tsahimur.ubflood.entity.Post"%>
<%@page import="com.tsahimur.ubflood.entity.Category"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="com.tsahimur.ubflood.dao.CategoryDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<%
EntityManagerFactory emf = Persistence.createEntityManagerFactory("ubflood-PU");
EntityManager em = emf.createEntityManager();
Category cat = new Category();
cat.setActiveFlag(true);
cat.setNameMon("Category Mongol");
cat.setNameMon("Category Eng");

Post post = new Post(); 
post.setActiveFlag(true);
post.setCategory(cat);
post.setContentEn("ENG CONTENT");
post.setContentMon("MON CONTENT");
post.setTitleEn("ENG - TITLE");
post.setTitleMon("MON - TITLE");

em.getTransaction().begin();
em.persist(cat);
em.persist(post);

em.getTransaction().commit();
em.close();
emf.close();
%> 
</body>
</html>
