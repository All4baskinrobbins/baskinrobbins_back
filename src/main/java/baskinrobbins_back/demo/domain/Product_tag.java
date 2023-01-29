package baskinrobbins_back.demo.domain;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class Product_tag {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Long product_id;
    private Long tag_id;

    public Product_tag() {

    }

    public Product_tag(Long id, Long product_id, Long tag_id) {
        this.id = id;
        this.product_id = product_id;
        this.tag_id = tag_id;
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

    public Long getTag_id() {
        return this.tag_id;
    }

    public void setTag_id(Long tag_id) {
        this.tag_id = tag_id;
    }


}
