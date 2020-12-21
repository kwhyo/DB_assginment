package com.kwce.controller;

import java.io.File;
import java.util.Iterator;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class FileUploadController {
	@RequestMapping(value = "/ajaxUpload")
    public void ajaxUpload() {
    }
	
    @RequestMapping(value = "/fileUpload")
    public String fileUp(MultipartHttpServletRequest multi) {
        // 
    	String path="C:/uploadFile/";   
        File dir = new File(path);
        if(!dir.isDirectory()){
            dir.mkdir();
        }
         
        Iterator<String> files = multi.getFileNames();
        while(files.hasNext()){
            String uploadFile = files.next();         
            MultipartFile mFile = multi.getFile(uploadFile);
            String fileName = mFile.getOriginalFilename();
            System.out.println("실제파일이름 : " +fileName);
            try {
                mFile.transferTo(new File(path+fileName));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return "ajaxUpload";
    }
}