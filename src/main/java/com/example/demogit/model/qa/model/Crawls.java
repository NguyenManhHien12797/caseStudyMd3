package com.example.demogit.model.qa.model;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class Crawls {
    public List<model.Shoes> getFoodlist() {
        List<model.Shoes> shoes1 = new ArrayList<>();
        try {
            final String url = "https://kingshoes.vn/";
            Document doc = Jsoup.connect(url).get();
            ArrayList<Element> elements = doc.getElementsByClass("ps-shoe__detail");
            ArrayList<Element> elements1 = doc.getElementsByClass("ps-shoe__price");
//           ArrayList<Element> elements2 = doc.getElementsByClass("br-widget br-readonly");
            ArrayList<Element> elements3 = doc.getElementsByClass("lazy");
            for (int i = 1; i <= 10; i++) {
                String name = elements.get(i).getElementsByTag("a").text();
                String price = elements1.get(i).getElementsByTag("span").text();
//               String image = elements3.get(i).getElementsByTag("img").tagName("src");
//               String image = String.valueOf(elements3.get(i).getElementsByTag("img").html("http://"));
                String image = String.valueOf(elements3.get(i).getElementsByTag("img").html("data-src"));
//               Shoes shoes = new Shoes(name, price,evaluate,image);


                model.Shoes shoes=new model.Shoes(name,price,image);
                shoes1.add(shoes);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return shoes1;
    }

    public static void main(String[] args) {
        Crawls crawls=new Crawls();
        List<model.Shoes> shoes= crawls.getFoodlist();
//        System.out.println(shoes.get(0).getImage());
        String str ="<img class=\"lazy\" src=\"template/Default/img/loader.svg\" data-src=\"https://kingshoes.vn/data/upload/media/SNEAKER-315122-111-AIR-FORCE-1-07-NIKE-KINGSHOES.VN-TPHCM-TANBINH-17-logo-1551924204-.jpg\" alt=\"AIR FORCE 1\">data-src</img>";
        String [] str1=str.split("src=\"");
        String []str2= str1;
        System.out.println("String str2"+ str2);

//    String [] str2=str1
        System.out.println(str1);
        for (String a:str1){
            System.out.println("Str"+a);
        }
//        System.out.println(shoes.get(0).getImage().getChars(65,120,image1,0));
    }
}
