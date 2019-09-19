package sz.publicModel.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sz.publicModel.dao.ProductDAO;
import sz.publicModel.vo.Product;

@Service
public class ProductService implements ProductDAO {
	
	@Autowired
	private ProductDAO productdao;
	
	//1.根据主键查信息
	@Override
	public Product findById(Integer productId) {
		return productdao.findById(productId);
	}

}
