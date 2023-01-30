package baskinrobbins_back.demo.domain;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Product {
    

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String ko_name;
    private String en_name;
    private int category_id;
    private String description;
    private int kcal;
    private int salt;
    private int sugar;
    private int fat;
    private int protein;
    private int caffeine;
    private String img_url;


    @OneToMany
    @JoinColumn(name = "id")
    private List<Category> category;

    @ManyToMany
    @JoinTable(name = "product_Allergy",
                joinColumns = @JoinColumn(name = "product_id"),
                inverseJoinColumns = @JoinColumn(name = "allergy_id"))
    private List<Product_Allergy> product_Allergy;

    @ManyToMany
    @JoinTable(name = "product_tag",
                joinColumns = @JoinColumn(name = "product_id"),
                inverseJoinColumns = @JoinColumn(name = "tag_id"))
    private List<Product_tag> product_tag;

}
