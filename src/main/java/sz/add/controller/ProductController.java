package sz.add.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import sz.publicModel.service.IProductService;
import sz.publicModel.vo.Product;

@Controller
@RequestMapping("/pc")
public class ProductController {

	@Autowired
	private IProductService productService;
	
	
	@RequestMapping("add")
	public String addProduct(Product product,@RequestParam MultipartFile pic_pro,@RequestParam MultipartFile pic_outside,HttpServletRequest request) {
		try {
			System.out.println("进入pc");
			InputStream is1 = pic_pro.getInputStream();
			InputStream is2 = pic_outside.getInputStream();
			String suffix1 = pic_pro.getOriginalFilename().substring(pic_pro.getOriginalFilename().lastIndexOf("."));
			String newName1 = UUID.randomUUID().toString()+suffix1;
			String suffix2 = pic_outside.getOriginalFilename().substring(pic_outside.getOriginalFilename().lastIndexOf("."));
			String newName2 = UUID.randomUUID().toString()+suffix2;
			String path = request.getSession().getServletContext().getRealPath("/images");
			OutputStream os1 = new FileOutputStream(new File(path+"/"+newName1));
			OutputStream os2 = new FileOutputStream(new File(path+"/"+newName2));
			FileCopyUtils.copy(is1, os1);
			FileCopyUtils.copy(is2, os2);
			product.setHead_pic("images/"+newName1);
			product.setProduct_detail("images/"+newName2);
		} catch (IOException e) {
			e.printStackTrace();
		}
		Integer res = productService.addProduct(product);
		String str = res>0?"添加成功":"添加失败";
		request.setAttribute("add_res", str);
		return "page/add/NewFile";
	}
	
}
