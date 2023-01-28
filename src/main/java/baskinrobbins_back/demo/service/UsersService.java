package baskinrobbins_back.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import baskinrobbins_back.demo.domain.Users;
import baskinrobbins_back.demo.repository.UsersRepository;

@Service
public class UsersService {
    private final UsersRepository usersRepository;

    @Autowired
    public UsersService(UsersRepository usersRepository){
        this.usersRepository = usersRepository;
    }

    public void signUp(String name, String user_id, String user_pw, Long birth, String email, String phone_number){
        usersRepository.signUp(name, user_id, user_pw, birth, email, phone_number);
        
    }


    public List<Users> findAll() {
        return usersRepository.findAll();
    }
}
