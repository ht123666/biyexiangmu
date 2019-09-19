package sz.publicModel.vo;

/**
 * 	产品类
 * 	产品基本信息
 * 
 * @author Administrator
 *
 */
public class Product {
	
	private Integer product_id;
	private String product_name;
	private String people;			//适用人群
	private Integer product_time; 	//保障期限
	private String product_area;	//保障范围
	private String product_type;	//保单类型
	private String product_detail;	//产品详情
	private String product_summary;	//产品简介
	private String product_status;	//产品状态
	private String head_pic;		//封面图片
	private double money_factory;	//保额因子
	private double age_factory;		//年龄因子
	public Integer getProduct_id() {
		return product_id;
	}
	public void setProduct_id(Integer product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getPeople() {
		return people;
	}
	public void setPeople(String people) {
		this.people = people;
	}
	public Integer getProduct_time() {
		return product_time;
	}
	public void setProduct_time(Integer product_time) {
		this.product_time = product_time;
	}
	public String getProduct_area() {
		return product_area;
	}
	public void setProduct_area(String product_area) {
		this.product_area = product_area;
	}
	public String getProduct_type() {
		return product_type;
	}
	public void setProduct_type(String product_type) {
		this.product_type = product_type;
	}
	public String getProduct_detail() {
		return product_detail;
	}
	public void setProduct_detail(String product_detail) {
		this.product_detail = product_detail;
	}
	public String getProduct_summary() {
		return product_summary;
	}
	public void setProduct_summary(String product_summary) {
		this.product_summary = product_summary;
	}
	public String getProduct_status() {
		return product_status;
	}
	public void setProduct_status(String product_status) {
		this.product_status = product_status;
	}
	public String getHead_pic() {
		return head_pic;
	}
	public void setHead_pic(String head_pic) {
		this.head_pic = head_pic;
	}
	public double getMoney_factory() {
		return money_factory;
	}
	public void setMoney_factory(double money_factory) {
		this.money_factory = money_factory;
	}
	public double getAge_factory() {
		return age_factory;
	}
	public void setAge_factory(double age_factory) {
		this.age_factory = age_factory;
	}
	
	
}
