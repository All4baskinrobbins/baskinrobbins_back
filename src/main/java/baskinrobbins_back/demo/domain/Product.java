package baskinrobbins_back.demo.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
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

    public Product() {

    }

    public Product(Long id, String ko_name, String en_name, int category_id, String description, int kcal, int salt, int sugar, int fat, int protein, int caffeine, String img_url) {
        this.id = id;
        this.ko_name = ko_name;
        this.en_name = en_name;
        this.category_id = category_id;
        this.description = description;
        this.kcal = kcal;
        this.salt = salt;
        this.sugar = sugar;
        this.fat = fat;
        this.protein = protein;
        this.caffeine = caffeine;
        this.img_url = img_url;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getKo_name() {
        return this.ko_name;
    }

    public void setKo_name(String ko_name) {
        this.ko_name = ko_name;
    }

    public String getEn_name() {
        return this.en_name;
    }

    public void setEn_name(String en_name) {
        this.en_name = en_name;
    }

    public int getCategory_id() {
        return this.category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getKcal() {
        return this.kcal;
    }

    public void setKcal(int kcal) {
        this.kcal = kcal;
    }

    public int getSalt() {
        return this.salt;
    }

    public void setSalt(int salt) {
        this.salt = salt;
    }

    public int getSugar() {
        return this.sugar;
    }

    public void setSugar(int sugar) {
        this.sugar = sugar;
    }

    public int getFat() {
        return this.fat;
    }

    public void setFat(int fat) {
        this.fat = fat;
    }

    public int getProtein() {
        return this.protein;
    }

    public void setProtein(int protein) {
        this.protein = protein;
    }

    public int getCafein() {
        return this.caffeine;
    }

    public void setCaffeine(int caffeine) {
        this.caffeine = caffeine;
    }

    public String getImg_url() {
        return this.img_url;
    }

    public void setImg_url(String img_url) {
        this.img_url = img_url;
    }

}
