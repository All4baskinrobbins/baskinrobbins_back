package baskinrobbins_back.demo.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import baskinrobbins_back.demo.domain.Category;

public interface CategoryRepository extends JpaRepository<Category, Long>{
    

    @Transactional
    @Modifying
    @Query(value = "INSERT INTO category (category_name) VALUES (:category_name)", nativeQuery = true)
    public void createCategory(@Param("category_name")String category_name);

    public List<Category> findAll();

}
