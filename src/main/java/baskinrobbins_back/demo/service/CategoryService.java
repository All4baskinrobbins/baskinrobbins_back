package baskinrobbins_back.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import baskinrobbins_back.demo.domain.Category;
import baskinrobbins_back.demo.repository.CategoryRepository;

@Service
public class CategoryService {
    private final CategoryRepository categoryRepository;

    @Autowired
    public CategoryService(CategoryRepository categoryRepository){
        this.categoryRepository = categoryRepository;
    }

    public void createCategory(String category_name) {
        categoryRepository.createCategory(category_name);
    }

    public List<Category> findAll() {
        List<Category> categoryList = categoryRepository.findAll();
        return categoryList;
    }
}
