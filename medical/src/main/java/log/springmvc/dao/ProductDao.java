package log.springmvc.dao;


import java.util.List;

import log.springmvc.model.Product;
import log.springmvc.model.ProductType;

public interface ProductDao {
    void addProduct(Product product);
    Product getProd(String Type,Integer Size,String Company);
    public List<ProductType> getAllProductType();
}
