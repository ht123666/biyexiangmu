package sz.publicModel.service.impl;

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

	
}
