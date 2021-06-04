package com.in28minutes.springboot.web.service;

import com.in28minutes.springboot.web.domain.User;
import com.in28minutes.springboot.web.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.validation.constraints.Null;
import java.util.List;

@Service
public class UserService {

    @Autowired
    UserRepository userRepository;

    @Transactional(readOnly = false)
    public User save(User user) {
        return userRepository.save(user);
    }

    public User findOne(String id) {
        return userRepository.findById(id).get();
    }

    @Transactional(readOnly = false)
    public void delete(String id) {
        userRepository.deleteById(id);
    }

    public boolean validateUser(String name, String password) {
        List<User> userList = userRepository.findByName(name);

        if (userList.size() > 0) {
            for (int i = 0; i < userList.size(); i++) {
                System.out.println(userList.get(i).getName());
                System.out.println(userList.get(i).getPassword());
                if (userList.get(i).getPassword() != null) {
                    if (userList.get(i).getPassword().equals(password)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

}
