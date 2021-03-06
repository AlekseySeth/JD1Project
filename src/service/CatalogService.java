package service;

import dao.CategoryDao;
import dao.ProductDao;
import entity.product.Category;
import entity.product.Product;

import java.io.File;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

/**
 * @author a.shestovsky
 */
public class CatalogService {

    private static final String DEFAULT_IMAGE_PATH = File.separator + "images" + File.separator + "default.png";
    private static CatalogService INSTANCE;

    private CatalogService() {
    }

    public static CatalogService newInstance() {
        if (INSTANCE == null) {
            synchronized (CatalogService.class) {
                if (INSTANCE == null) {
                    INSTANCE = new CatalogService();
                }
            }
        }
        return INSTANCE;
    }

    public List<Category> getParentCategories() {
        return CategoryDao.newInstance().getParentCategories();
    }

    public List<Category> getCategoriesByParentId(Long parentId) {
        CategoryDao categoryDao = CategoryDao.newInstance();
        Category parent = categoryDao.get(parentId);
        return categoryDao.getCategoriesByParent(parent);
    }

    public Category addNewCategory(Category category) {
        CategoryDao categoryDao = CategoryDao.newInstance();
        return categoryDao.save(category);
    }

    public Category getCategoryById(Long id) {
        CategoryDao categoryDao = CategoryDao.newInstance();
        return categoryDao.get(id);
    }

    public List<Product> getProductsByCategory(Long categoryId) {
        List<Product> products = new ArrayList<>();
        ProductDao productDao = ProductDao.newInstance();
        CategoryDao categoryDao = CategoryDao.newInstance();
        Category category = categoryDao.get(categoryId);

        if (category.getCategory() == null) {
            List<Category> categoriesByParent = categoryDao.getCategoriesByParent(category);
            for (Category current : categoriesByParent) {
                products.addAll(productDao.getProductsByCategory(current));
            }
        } else {
            return productDao.getProductsByCategory(category);
        }
        return products;
    }

    public List<Product> getAllProducts() {
        return ProductDao.newInstance().getAll();
    }

    public Product getProductById(Long id) {
        return ProductDao.newInstance().get(id);
    }

    public Product addNewProduct(String name, String description, String priceString, int qtyInStock, Long categoryId, String imageURL) {
        BigDecimal price = BigDecimal.valueOf(Double.valueOf(priceString));
        Category category = CatalogService.newInstance().getCategoryById(categoryId);
        if (imageURL == null || imageURL.isEmpty()) {
            imageURL = DEFAULT_IMAGE_PATH;
        }
        if (name != null && category != null) {
            Product product = new Product(name, description, price, qtyInStock, category, imageURL);
            return ProductDao.newInstance().save(product);
        } else {
            return null;
        }
    }

    public boolean updateProduct(Product product, String name, String description, String priceString,
                                 int qtyInStock, Long categoryId, String imageURL) {

        BigDecimal price = BigDecimal.valueOf(Double.valueOf(priceString));
        Category category = CatalogService.newInstance().getCategoryById(categoryId);

        product.setCategory(category);

        if (name.length() > 0) {
            product.setName(name);
        }
        if (description.length() > 0) {
            product.setDescription(description);
        }
        if (price.compareTo(new BigDecimal(0.0)) >= 0) {
            product.setPrice(price);
        }
        if (qtyInStock >= 0) {
            product.setQtyInStock(qtyInStock);
        }
        if (imageURL.length() > 0) {
            product.setImageURL(imageURL);
        }

        return ProductDao.newInstance().update(product);
    }

    public boolean updateProduct(Product product) {
        return ProductDao.newInstance().update(product);
    }

    public boolean deleteProduct(Long id) {
        return ProductDao.newInstance().delete(id);
    }
}