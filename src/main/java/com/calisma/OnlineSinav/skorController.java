package com.calisma.OnlineSinav;

import java.sql.ResultSet;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class skorController {
	
	DB db = new DB("onlinesinav", "root", "");
	String degisken="";
	
	@RequestMapping(value = "/skor", method = RequestMethod.GET)
	public String sinavguncelle(@PathVariable String ad , Model model) {
		System.out.println(degisken);
		
		try {
			String q="select * from sorular where oyuncular.oyuncu='"+ad+"'";
			System.out.println(q);
			ResultSet rs=db.baglan().executeQuery(q);
			if(rs.next())
			{
		     model.addAttribute("adi", rs.getString(2));
		     model.addAttribute("puan", rs.getString(3));
		     model.addAttribute("trh", rs.getString(4));
		     model.addAttribute("dogru", rs.getString(5));
		     model.addAttribute("yanlis", rs.getString(6));
		     model.addAttribute("toplam", rs.getString(7));
				System.out.println(rs.getString(2));
				System.out.println(rs.getString(3));
				System.out.println(rs.getString(4));
				System.out.println(rs.getString(5));
				System.out.println(rs.getString(6));
				System.out.println(rs.getString(7));
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "skor";
	}

}
