package com.calisma.OnlineSinav;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class sinavduzenleController {

	DB db = new DB("onlinesinav", "root", "");

	@RequestMapping(value = "/sinavduzenle", method = RequestMethod.GET)
	public String home(Model model) {
		List<sorular> ls = soruDoldur();

		if (ls.size() > 0) {
			model.addAttribute("ls", ls);
		
		}
		model.addAttribute("hata", "Lütfen Soru Giriniz");
		return "sinavduzenle";
	}
	@RequestMapping(value = "/soruekle", method = RequestMethod.POST)
	public String soruekle(@RequestParam(defaultValue = "") String soru,Model model) {

		if(!soru.equals(""))
		{
		
			String q="insert into sorular values(null,'"+soru+"')";
			try {
				int yaz=db.baglan().executeUpdate(q);
				List<sorular> ls = soruDoldur();

				if (ls.size() > 0) {
					model.addAttribute("ls", ls);
				
				}
			} catch (SQLException e) {
				System.out.println("Soru Ekleme Hatasý :"+e);
			}
         System.out.println("soru :"+soru);
         
		
		}
		else
		{
			model.addAttribute("hata","Lütfen Soru Giriniz");
			
		}
	
		return "sinavduzenle";
	}
	public List<sorular> soruDoldur() {
		List<sorular> ls = new ArrayList<sorular>();
		List<String> srid = new ArrayList<String>();
		ls.removeAll(ls);
		try {
			String q = "select *from sorular";
			ResultSet rs = db.baglan().executeQuery(q);
			while (rs.next()) {
				sorular pr = new sorular();
				pr.setId(rs.getString(1));
				pr.setSoru(rs.getString(2));
				ls.add(pr);
				srid.add(rs.getString(1));
			}
		
		} catch (Exception e) {
			System.err.println("soru getirme hatasý : " + e);
		} finally {
			db.kapat();
		}
		return ls;
	}
	@RequestMapping(value = "/sorusil/{soru}", method = RequestMethod.GET)
	public String sorusil(@PathVariable String soru,Model model) {

		if(!soru.equals(""))
		{
			Statement st=db.baglan();
			String q="delete from secenekler where secenekler.soruid='"+soru+"'";
			try {
				int yaz=st.executeUpdate(q);
				 q="delete from sorular where sorular.id='"+soru+"'";
				int yaz2=st.executeUpdate(q);
				List<sorular> ls = soruDoldur();

				if (ls.size() > 0) {
					model.addAttribute("ls", ls);
				
				}
			} catch (SQLException e) {
				System.out.println("Soru silme Hatasý :"+e);
			}
         System.out.println("soru :"+soru);
         
		
		}
		else
		{
			model.addAttribute("hata","Lütfen Soru Giriniz");
			
		}
	
		return "sinavduzenle";
	}
}
