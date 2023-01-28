package baskinrobbins_back.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import baskinrobbins_back.demo.domain.Product;
import baskinrobbins_back.demo.repository.ProductRepository;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository){
        this.productRepository = productRepository;
    }

    public void createProduct(String ko_name, String en_name, int category_id, String description, int kcal, int salt, int sugar, int fat, int protein, int caffeine, String img_url) {
        productRepository.createProduct(ko_name, en_name, category_id, description, kcal, salt, sugar, fat, protein, caffeine, img_url);
    }

    public Optional<Product> findById(Long id){
        Optional<Product> product = productRepository.findById(id);
        return product;
    }

    public List<Product> findAll() {
        List<Product> productList = productRepository.findAll();
        return productList;
    }
}
