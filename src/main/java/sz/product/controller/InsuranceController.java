package sz.product.controller;

import java.util.HashMap;
import java.util.Map;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import sz.product.service.IInsuranceService;
import sz.product.vo.BeiBaoRen;
import sz.product.vo.Insurance;
import sz.product.vo.TouBaoRen;
import sz.publicModel.vo.HttpUtils;

@Controller
@RequestMapping("/ic")
public class InsuranceController {
	@Autowired
	private IInsuranceService insuranceService;
	 	
	@ResponseBody
	@RequestMapping("check")
	public String checkId(String mycard,String myname) {
		String host = "http://freeid.market.alicloudapi.com";
	    String path = "/idcard/VerifyIdcardv2";
	    String method = "GET";
	    String appcode = "56f3ea61f1ac456ba45604497b69c555";
	    Map<String, String> headers = new HashMap<String, String>();
//	    最后在header中的格式(中间是英文空格)为Authorization:APPCODE 83359fd73fe94948385f570e3c139105
	    headers.put("Authorization", "APPCODE " + appcode);
	    Map<String, String> querys = new HashMap<String, String>();
	    querys.put("cardNo", mycard);
	    querys.put("realName", myname);
//	    Map<String, String> bodys = new HashMap<String, String>();
	    
	    try {
	    	/**
	    	* 重要提示如下:
	    	* HttpUtils请从
	    	* https://github.com/aliyun/api-gateway-demo-sign-java/blob/master/src/main/java/com/aliyun/api/gateway/demo/util/HttpUtils.java
	    	* 下载
	    	*
	    	* 相应的依赖请参照
	    	* https://github.com/aliyun/api-gateway-demo-sign-java/blob/master/pom.xml
	    	*/
	    	HttpResponse response = HttpUtils.doGet(host, path, method, headers, querys);
	    	System.out.println(response.toString());
	    	HttpEntity he =  response.getEntity();
	    	String res = EntityUtils.toString(he);
	    	System.out.println(res);
	    	return res;
	    	//获取response的body
	    	//System.out.println(EntityUtils.toString(response.getEntity()));
	    } catch (Exception e) {
	    	e.printStackTrace();
	    }
	    return "";
	}
	
	@RequestMapping("add")
	public String addInsurance(BeiBaoRen b,TouBaoRen t,Insurance insurance,
			String id_cardt,String phonet,String id_cardb,String phoneb) {
		t.setId_card(id_cardt);
		t.setPhone(phonet);
		b.setId_card(id_cardb);
		b.setPhone(phoneb);
		Integer t_id = insuranceService.addTouBaoRen(t);
		Integer b_id = insuranceService.addBeiBaoRen(b);
		insurance.setBeibao_person(b_id);
		insurance.setToubao_person(t_id);
		insurance.setUser_id(11111);
		return "";
	}
	
}
