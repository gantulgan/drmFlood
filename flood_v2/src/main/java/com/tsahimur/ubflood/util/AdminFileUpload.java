package com.tsahimur.ubflood.util;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class AdminFileUpload {
	
	public static String saveFile(MultipartFile file, HttpServletRequest request) {
		
		String backLink = "<br><a href=" +  request.getContextPath() +
           						"//admin//" + ">back</a>";
		
		if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();
 
                // Creating the directory to store file
                String fileName = file.getOriginalFilename();
                
                String rootPath = System.getProperty("user.home");
                File dir = new File(rootPath + File.separator + "tmpFiles");
                if (!dir.exists())
                    dir.mkdirs();
 
                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath()
                        + File.separator + fileName);
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
 
                return "You successfully uploaded you file. Your Download link =>" +
                			"<a href="  +  request.getContextPath() +
                			"//admin//download//do//" +
                			serverFile.getName() +
    						">" + serverFile.getName() + "</a>" +
    						backLink;
            } catch (Exception e) {
                return "You failed to upload  => " + e.getMessage() + backLink;
            }
        } else {
            return "You failed to upload because the file was empty." + backLink;
        }
		
	}
}
