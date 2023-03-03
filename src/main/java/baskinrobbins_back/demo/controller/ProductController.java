package baskinrobbins_back.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import baskinrobbins_back.demo.domain.Product;
import baskinrobbins_back.demo.service.ProductService;


@RestController
@RequestMapping("product")
public class ProductController {
    private final ProductService productService;

    public ProductController(ProductService productService){
        this.productService = productService;
    }

    @PostMapping("")
    public String createProduct(@RequestBody Product product) {
        productService.createProduct(product.getKo_name(), product.getEn_name(), product.getCategory_id(), product.getDescription(), product.getKcal(), product.getSalt(), product.getSugar(), product.getFat(), product.getProtein(), product.getCaffeine(), product.getImg_url());
        return "CREATE_DONE";
    }
    
    @GetMapping("{id}")
    public Optional<Product> findById(@PathVariable Long id) {
        Optional<Product> product = productService.findById(id);
        return product;
    }

    @GetMapping("")
    public List<Product> findAll() {
        return productService.findAll();
    }


}
