package baskinrobbins_back.demo.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

@Entity
public class Product_Allergy {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotNull
    private Long product_id;
    @NotNull
    private Long allergy_id;

    public Product_Allergy(){

    }

    public Product_Allergy(Long id, Long product_id, Long allergy_id){
        this.id = id;
        this.product_id = product_id;
        this.allergy_id = allergy_id;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getProduct_id() {
        return this.product_id;
    }

    public void setProduct_id(Long product_id) {
        this.product_id = product_id;
    }

    public Long getAllergy_id() {
        return this.allergy_id;
    }

    public void setAllergy_id(Long allergy_id) {
        this.allergy_id = allergy_id;
    }

}