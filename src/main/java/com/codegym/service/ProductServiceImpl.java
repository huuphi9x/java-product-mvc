package com.codegym.service;

import com.codegym.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {

    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1,
                "Iphone XS",
                "22.000.000đ",
                "Màn hình 5.8 inch; Camera sau Chính 12 MP & Phụ 12 MP; Pin 2658 mAh",
                "Apple"));
        products.put(2, new Product(2,
                "Galaxy Note 9",
                "19.990.000đ",
                "Màn hình 6.4 inch; Camera sau Chính 12 MP & Phụ 12 MP; Pin 4000 mAh",
                "samsung"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(),product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public List<Product> findByNameProduct(String nameProduct) {
        List<Product> productList = new ArrayList<>(products.values());
        List<Product> result = new ArrayList<>();
        for (Product p: productList){
            if (nameProduct.equals(p.getNameProduct())){
                result.add(p);
            }
        }
        return result;
    }
}
