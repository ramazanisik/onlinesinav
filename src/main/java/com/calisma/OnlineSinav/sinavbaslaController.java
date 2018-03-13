package com.calisma.OnlineSinav;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class sinavbaslaController {

	DB db = new DB("onlinesinav", "root", "");
	List<secenekler> secenek = new ArrayList<secenekler>();
	List<String> soruid = new ArrayList<String>();
	List<String> soruad = new ArrayList<String>();
	List<String> cevaplar=new ArrayList<String>();
	List<sorular> ls = soruDoldur();
	int s=1;
    int boy=0;
    int dogru=0;
    int bos=0;
    
	@RequestMapping(value = "/sinavbasla", method = RequestMethod.GET)
	public String sinavbasla(Model model) {
		cevaplar.removeAll(cevaplar);
        sorular sr=new sorular();
        sr=ls.get(0);
		if (ls.size() > 0) {
			boy=ls.size();
			model.addAttribute("ls", sr);
			model.addAttribute("secenek", secenek);
			model.addAttribute("say", s);
			model.addAttribute("boyut", boy);
		}
		System.out.println("sayý : " + ls.size());
		return "sinavbasla";
	}

	public List<sorular> soruDoldur() {
		List<sorular> ls = new ArrayList<sorular>();
	
		secenek.removeAll(secenek);
		soruid.removeAll(soruid);
		soruad.removeAll(soruad);
		ls.removeAll(ls);
		
		
		try {
			String q = "SELECT * from sorular";
			ResultSet rs = db.baglan().executeQuery(q);
			while (rs.next()) {
				sorular pr = new sorular();
				pr.setId(rs.getString(1));
				pr.setSoru(rs.getString(2));
				ls.add(pr);
				soruid.add(rs.getString(1));
				soruad.add(rs.getString(2));
			}
			
				secenekdoldur(soruid.get(0));
			

		} catch (Exception e) {
			System.err.println("Soru getirme : " + e);
		} finally {
			db.kapat();
		}
		return ls;
	}

	public void secenekdoldur(String soru) {
		try {
			String q = "select *from secenekler where secenekler.soruid='" + soru + "'";
			ResultSet rs = db.baglan().executeQuery(q);
			while (rs.next()) {
				secenekler sc = new secenekler();
				sc.setId(rs.getString(1));
				sc.setSoruid(rs.getString(2));
				sc.setSecenek(rs.getString(3));
				sc.setDurum(rs.getString(4));
				secenek.add(sc);
			}
		} catch (Exception e) {
			System.err.println("soru getirme : " + e);
		} finally {
			db.kapat();
		}

	}
	
	
	
	public void soruDoldur2(String soru) {
		List<sorular> ls = new ArrayList<sorular>();
		secenek.removeAll(secenek);
			secenekdoldur(soru);

	}
	@RequestMapping(value = "/ilerle/{say}", method = RequestMethod.POST)
	public String sinavguncelle(@PathVariable("say")  String say ,@RequestParam(defaultValue="") String sec, Model model) {		
		System.out.println(say);
		System.out.println(sec);
		int dd=Integer.valueOf(say);
		if(sec.equals("d"))
		{
			dogru=dogru+1;
			cevaplar.add(sec);
			
		}
		else if(sec.equals(""))
		{
			bos=bos+1;
			
		}
		else
		{
			cevaplar.add(sec);
			
		}
		
		if(dd!=boy-1)
		{
			
		 sorular sr=new sorular();
	        sr=ls.get(dd);
	        soruDoldur2(soruid.get(dd));
		    dd=dd+1;
			say=String.valueOf(dd);
			model.addAttribute("ls", sr);
			model.addAttribute("secenek", secenek);
			model.addAttribute("say", say);
			model.addAttribute("boyut", boy);
	        model.addAttribute("hata", "Lütfen Seçenek Ýþaretleyiniz !");
	        model.addAttribute("bos",bos);
		
		return "sinavbasla";
		}
		else
		{
			 sorular sr=new sorular();
		        sr=ls.get(dd);
		        soruDoldur2(soruid.get(dd));
			    dd=dd+1;
				say=String.valueOf(dd);
				model.addAttribute("ls", sr);
				model.addAttribute("secenek", secenek);
				model.addAttribute("say", say);
				model.addAttribute("boyut", boy);
				model.addAttribute("bos",bos);
		
		return "sinavbaslason";
		}
	}
	
	@RequestMapping(value = "/ilerle/bitir/{say}", method = RequestMethod.POST)
	public String sinavguncellebitir(@PathVariable("say")  String say ,@RequestParam(defaultValue="") String sec,@RequestParam String adi, Model model) {		
		System.out.println(say);
		System.out.println(sec);
		int dd=Integer.valueOf(say);
		if(sec.equals("d"))
		{
			dogru=dogru+1;
			cevaplar.add(sec);
			
		}
		else if(sec.equals("b"))
		{
			bos=bos+1;
			
		}
		else
		{
			cevaplar.add(sec);
			
		}
	
			
		try {
			int yanlis=cevaplar.size()-dogru;
			int tt=dogru+yanlis+bos;
			String q="insert into oyuncular values(null,'"+adi+"','"+dogru+"',now(),'"+dogru+"','"+yanlis+"','"+tt+"')";
			int yaz=db.baglan().executeUpdate(q);
			String qq="SELECT * FROM oyuncular where oyuncular.oyuncu='"+adi+"' Order BY oyuncular.oyun_tarih DESC LIMIT 1";
			System.out.println(qq);
			ResultSet rs=db.baglan().executeQuery(qq);
			if(rs.next())
			{
		     model.addAttribute("adi", rs.getString(2));
		     model.addAttribute("puan", rs.getString(3));
		     model.addAttribute("trh", rs.getString(4));
		     model.addAttribute("dogru", rs.getString(5));
		     model.addAttribute("yanlis", rs.getString(6));
		     model.addAttribute("toplam", rs.getString(7));
		     model.addAttribute("bos",bos);	
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		finally {db.kapat();}
		return "skor";
		
		
	}
}
