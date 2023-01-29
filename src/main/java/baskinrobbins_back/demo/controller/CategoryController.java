package baskinrobbins_back.demo.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import baskinrobbins_back.demo.domain.Category;
import baskinrobbins_back.demo.service.CategoryService;

@RestController
@RequestMapping("category")
public class CategoryController {
    private final CategoryService categoryService;

    public CategoryController(CategoryService categoryService){
        this.categoryService = categoryService;
    }

    @PostMapping("")
    public String createCategory(@RequestBody Category category) {
        categoryService.createCategory(category.getCategory_name());
        return "CREATE_DONE";
    }

    @GetMapping("")
    public List<Category> findAll() {
        return categoryService.findAll();
    }
}
