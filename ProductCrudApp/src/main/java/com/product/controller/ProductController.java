package com.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.product.Dao.ProductDao;
import com.product.Model.Product;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class ProductController {
	
	@Autowired
	private ProductDao productDao;

	@RequestMapping("/home")
	public String home(Model m,HttpServletRequest request) {
		List<Product> product = productDao.getProduct();
		m.addAttribute("product",product);
		int n=product.size();
		request.setAttribute("size", n);
		request.setAttribute("product", product);
		m.addAttribute("size", product.size());
		return "index";
	}
	
	@RequestMapping("/add-product")
	public String addProduct() {
		return "add_product_form";
	}
	
	@RequestMapping(path="handle-product", method = RequestMethod.POST)
	public RedirectView  handleProduct(@ModelAttribute("Product") Product product, HttpServletRequest request) {
		
		productDao.createProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl( request.getContextPath()+"/home");
		return redirectView;
	}
	
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int produsctId, HttpServletRequest request) {
		this.productDao.deleteProduct(produsctId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl( request.getContextPath()+"/home");
		return redirectView;
	}
	
	@RequestMapping("/update/{productId}")
	public String updateProduct(@PathVariable("productId") int productId,Model model) {
		Product product=this.productDao.getProduct(productId);
		model.addAttribute("product",product);
		return "update_form";
		
	}
}
