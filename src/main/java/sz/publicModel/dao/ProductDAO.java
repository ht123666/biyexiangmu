package sz.publicModel.dao;

import java.util.List;
import java.util.Map;

import sz.publicModel.vo.Product;

public interface ProductDAO {
	
	//根据产品ID查出所有该产品信息
	public Product findById(Integer productId);
	
	//添加新的保险产品
	public Integer addProduct(Product product);
	
	//查看所有保险产品...
	public List<Product> showAll();
	
	//根据id查保险详细信息
	public Product findProductById(Integer id);
	
	//根据id进行产品的下线或上线
	public Integer updateProduct(Map map);
}
