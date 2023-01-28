package baskinrobbins_back.demo.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import baskinrobbins_back.demo.domain.Users;
import baskinrobbins_back.demo.service.UsersService;

@RestController
public class UsersController {
    
    private final UsersService usersService;

    public UsersController(UsersService usersService){
        this.usersService = usersService;
    }

    @PostMapping("signUp")
    @ResponseBody
    public String signUp(@RequestBody Users users){
        System.out.println(users.getName());
        System.out.println(users.getUser_id());
        System.out.println(users.getUser_pw());
        System.out.println(users.getBirth());
        System.out.println(users.getEmail());
        System.out.println(users.getPhone_number());
        usersService.signUp(users.getName(), users.getUser_id(), users.getUser_pw(), users.getBirth(), users.getEmail(), users.getPhone_number());
        return "회원가입이 완료 되었습니다.";
    }

    @GetMapping("findAll")
    @ResponseBody
    public List<Users> findAll() {
        List<Users> allUsers = usersService.findAll();
        return allUsers;
    }

}
