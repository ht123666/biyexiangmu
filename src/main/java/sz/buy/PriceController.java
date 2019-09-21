package sz.buy;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import sz.publicModel.service.IProductService;
import sz.publicModel.util.CountAge;
import sz.publicModel.vo.Product;

@Controller
public class PriceController {

	@Autowired
	private IProductService productservice;
	
	//根据日期计算年龄
	@ResponseBody
	@RequestMapping("/age")
	public String ageCount(String date) {
		String ageString = "";
		try {
			Integer age = CountAge.countAge(date);
			ageString = age.toString();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return ageString;
	}
	
	//接收用户选择的自定义保费 并返回
	@ResponseBody
	@RequestMapping("/money")
	public String money(String money) {
		//System.out.println(money);
		return money;
	}
	
	//根据自定义保费 和 年龄 计算价格
	@ResponseBody
	@RequestMapping("/count")
	public double count(@RequestParam(value="age",defaultValue="1")Integer age,@RequestParam(value="money",defaultValue="1")Integer money,@RequestParam(value="product_id",defaultValue="1001")Integer product_id) {
		Product product = productservice.findProductById(product_id);
		double age_factory = product.getAge_factory();
		double money_factory = product.getMoney_factory();
		System.out.println(age_factory+"×"+age+"+"+money+"×"+money_factory);
		return age_factory*age+money*money_factory;
	}
	
	//根据给定的起始日期 计算 一年后的日期
	@ResponseBody
	@RequestMapping("/countDate")
	public String countDate(String date) {
		String countDate = "";
		try {
			countDate = CountAge.countDate(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return countDate;
	}
	
	//@ResponseBody
	@RequestMapping("/form")
	public String submit(Integer product_id,String money_in,String money_get,String startDate,String endDate,String money_text,Model mod,Integer hidden_age) {
		System.out.println("产品id:"+product_id);
		Product product = productservice.findProductById(product_id);
		System.out.println("保费:"+money_in);
		System.out.println("保额:"+money_get);
		System.out.println("保险开始日期:"+startDate);
		System.out.println("保险结束日期:"+endDate);
		System.out.println("保额(文本形式):"+money_text);
		
		
		
		
		//System.out.println("下限:"+split[0]);
		//System.out.println("上限:"+split[1].split("岁")[0]);
		
		
		
		mod.addAttribute("product", product);
		mod.addAttribute("money_in", money_in);
		mod.addAttribute("money_get", money_get);
		mod.addAttribute("startDate", startDate);
		mod.addAttribute("endDate", endDate);
		mod.addAttribute("money_text", money_text);
		
		//跳转到你的页面
		return "";
	}
	
	
	@RequestMapping("/go")
	public String findpro(@RequestParam(value="product_id",defaultValue="1001")Integer product_id,Model mod) {
		Product product = productservice.findProductById(product_id);
		System.out.println(product.getProduct_name());
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = sdf.format(date);
		
		String peopleString = product.getPeople();
		String[] split = peopleString.split("-");
		//年龄下限
		Integer age1 = Integer.parseInt(split[0]);
		//年龄上限
		Integer age2 = Integer.parseInt(split[1].split("岁")[0]);
		
		/*if(hidden_age<=age2 && hidden_age>=age1) {
			System.out.println("年龄合格");
		}else {
			System.out.println("年龄不合格");
		}*/		
		
		
		mod.addAttribute("age1", age1);
		mod.addAttribute("age2", age2);
		mod.addAttribute("date", dateString);
		mod.addAttribute("product", product);
		return "/page/buy/detail";
	}
	
	@RequestMapping("/list")
	public String findlist(Model mod) {
		List<Product> list = productservice.showAll();
		mod.addAttribute("list", list);
		return "/page/buy/list";
	}
}
