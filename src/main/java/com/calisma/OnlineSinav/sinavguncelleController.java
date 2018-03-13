package com.calisma.OnlineSinav;

import java.sql.ResultSet;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class sinavguncelleController {
	DB db = new DB("onlinesinav", "root", "");
	String degisken="";
	
	@RequestMapping(value = "/sinavguncelle/{soruid}", method = RequestMethod.GET)
	public String sinavguncelle(@PathVariable String soruid , Model model) {
		degisken=soruid;		
		System.out.println(degisken);
		
		try {
			String q="select sorular.soru from sorular where sorular.id='"+degisken+"'";
			ResultSet rs=db.baglan().executeQuery(q);
			if(rs.next())
			{
			String soruu=rs.getString(1);
			model.addAttribute("soru", soruu);
				
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "sinavguncelle";
	}
	@RequestMapping(value = "/secenekekle", method = RequestMethod.GET)
	public String secenekekle(@RequestParam String secenek , @RequestParam String durum,Model model) {
			System.out.println(secenek);
			System.out.println(durum);
			System.out.println(degisken);
		
		try {
			if(durum.equals("dogru"))
			{
			String q="insert into secenekler VALUES(null,'"+degisken+"','"+secenek+"','d')";
			System.out.println(q);
			int yaz=db.baglan().executeUpdate(q);
			}
			else
			{
				
				String q="insert into secenekler VALUES(null,'"+degisken+"','"+secenek+"','y')";
				System.out.println(q);
				int yaz=db.baglan().executeUpdate(q);
				
				
			}
			String q="select sorular.soru from sorular where sorular.id='"+degisken+"'";
			ResultSet rss=db.baglan().executeQuery(q);
			if(rss.next())
			{
			String soruu=rss.getString(1);
			model.addAttribute("soru", soruu);
			
			}
			} catch (Exception e) {
			// TODO: handle exception
		}
		finally {db.kapat();}
		
		return "sinavguncelle";
	}

}
