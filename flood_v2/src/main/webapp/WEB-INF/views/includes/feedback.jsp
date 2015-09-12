<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	$(function(){
	    $('.slide-out-div').tabSlideOut({
	        tabHandle: '.handle',                              //class of the element that will be your tab
// 	        pathToTabImage: '${pageContext.request.contextPath}/resources/images/icons/feedback_top_tab.png',          //path to the image for the tab (optionaly can be set using css)
	        imageHeight: '122px',                               //height of tab image
	        imageWidth: '40px',                               //width of tab image    
	        tabLocation: 'top',                               //side of screen where tab lives, top, right, bottom, or left
	        speed: 300,                                        //speed of animation
	        action: 'click',                                   //options: 'click' or 'hover', action to trigger animation
	        topPos: '500px',                                   //position from the top
	        fixedPosition: true                               //options: true makes it stick(fixed position) on scroll
	    });
	});
</script>
<div class="slide-out-div">
    <a class="handle" href="http://link-for-non-js-users">Content</a>
    <h3>Contact me</h3>
    <a href="mailto:wpaoli@gmail.com">wpaoli@gmail.com</a><br /><br />
    <p>Thanks for checking out my jQuery plugin, I hope you find this useful.</p>
    <p>This can be a form to submit feedback, or contact info</p>
</div>