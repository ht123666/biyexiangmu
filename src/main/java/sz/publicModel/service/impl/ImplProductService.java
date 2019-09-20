package sz.publicModel.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sz.publicModel.dao.ProductDAO;
import sz.publicModel.service.IProductService;
import sz.publicModel.vo.Product;
@Service
public class ImplProductService implements IProductService{

	@Autowired
	private ProductDAO productDao;
	
	@Override
	public Product findById(Integer productId) {
		return productDao.findById(productId);
	}

	@Override
	public Integer addProduct(Product product) {
		return productDao.addProduct(product);
	}

	@Override
	public List<Product> showAll() {
		return productDao.showAll();
	}
	
	@Override
	public Product findProductById(Integer id) {
		return productDao.findProductById(id);
	}
	
	
	@Override
	public Integer updateProduct(Map map) {
		return productDao.updateProduct(map);
	}
}
