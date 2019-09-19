package sz.publicModel.service;

import sz.publicModel.vo.Product;

public interface IProductService {

		//根据产品ID查出所有该产品信息
		public Product findById(Integer productId);
		
		//添加新的保险产品
		public Integer addProduct(Product product);
}
