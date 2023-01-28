package baskinrobbins_back.demo.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.apache.catalina.User;




@Entity
public class Users {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String user_id;
    private String user_pw;
    private Long birth;
    private String email;
    private String phone_number;

    public Users(){

    }

    public Users(Long id, String name, String user_id, String user_pw, Long birth, String email, String phone_number){
        this.id = id;
        this.name = name;
        this.user_id = user_id;
        this.user_pw = user_pw;
        this.birth = birth;
        this.email = email;
        this.phone_number = phone_number;
    }

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUser_id() {
		return this.user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return this.user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public Long getBirth() {
		return this.birth;
	}

	public void setBirth(Long birth) {
		this.birth = birth;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone_number() {
		return this.phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}

    public String toString() {
        return "id : " + getId() + "\tname : " + getName() + "\tuser_id : " + getUser_id() + "\tuser_pw : " + getUser_pw() + "\temail : " + getEmail() + "\tphone_number : " + getPhone_number();
    }
}
