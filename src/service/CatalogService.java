package service;

import dao.CategoryDao;
import entity.product.Category;
import entity.product.Product;

import java.util.List;

/**
 * @author a.shestovsky
 */
public class CatalogService {

    public List<Category> getParentCategories() {

        return null;
    }

    public List<Category> getCategoriesByParent() {

        return null;
    }

    public List<Category> getAllCategories() {

        return null;
    }

    public Category addNewCategory() {

        return null;
    }

    public Category getCategoryByName() {

        return null;
    }

    public Category getCategoryById(Long id) {
        CategoryDao categoryDao = CategoryDao.newInstance();
        return categoryDao.get(id);
    }

    public List<Product> getProductsByCategory(Category category) {

        return null;
    }

    public List<Product> getAllProducts() {

        return null;
    }

    public Product getProductByName() {

        return null;
    }


    public Product getProductById() {

        return null;
    }

    public Product addNewProduct() {

        return null;
    }

    public Product updateProduct() {

        return null;
    }


}