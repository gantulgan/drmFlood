package com.tsahimur.ubflood.util;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

public class AdminUtil {
	
	public static String rootPath = System.getProperty("user.home");
	public static String directoryPath = rootPath + File.separator + "tmpFiles";
	
	public static boolean isLogged(HttpSession session){
//		session.getAttribute(Constant.Admin.USER_SESSION_KEY);
		return true;
	} 
	
	public static String saveFile(MultipartFile file, HttpServletRequest request) {
		
		String backLink = "<br><a href=" +  request.getContextPath() +
           						"//admin//" + ">back</a>";
		String fileListLink = "<br><a href=" + request.getContextPath() +
								"//admin//files" + ">File List</a>";
		if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();
 
                // Creating the directory to store file
                String fileName = file.getOriginalFilename();
                
               /* String rootPath = System.getProperty("user.home");*/
                File dir = new File(directoryPath);
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
    						backLink + fileListLink;
            } catch (Exception e) {
                return "You failed to upload  => " + e.getMessage() + backLink;
            }
        } else {
            return "You failed to upload because the file was empty." + backLink;
        }
		
	}
	
	public static String[] getAllFiles() {
		
		File directory = new File(directoryPath);
		//get all the files from a directory
		String[] fList = directory.list();

		return fList;
	}
	
	public static void delFileByName(String fileName, String fileType) {
		try {
			File file = new File(directoryPath + File.separator + fileName + "." + fileType );
			Files.delete(file.toPath());
		} catch (IOException e) {
		    System.err.println("Caught IOException: " + e.getMessage());
		}
	}
}
