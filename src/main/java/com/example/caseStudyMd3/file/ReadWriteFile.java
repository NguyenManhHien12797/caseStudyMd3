package com.example.caseStudyMd3.file;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;

public class ReadWriteFile {
    public static void main(String[] args) throws IOException {
       try{ FileWriter writer=new FileWriter("Shoes.xlsx");
        writer.write("2222");
           System.out.println(" thành công");
        writer.close();
    }catch (IOException e){
           e.printStackTrace();
           System.out.println("lỗi");
       }
}}
