package com.product.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.product.Model.Product;

@Repository
public class ProductDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void createProduct(Product product) {
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	public List<Product> getProduct(){
		List<Product> list =this.hibernateTemplate.loadAll(Product.class);
		return list;
	}
	 
	@Transactional
	public void deleteProduct(int ProductId) {
		Product product=this.hibernateTemplate.load(Product.class, ProductId);
		this.hibernateTemplate.delete(product);
	}
	
	public Product getProduct(int pID) {
		Product product = this.hibernateTemplate.get(Product.class, pID);
		return product;
	}
}
