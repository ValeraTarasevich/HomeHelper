package bntu.fitr.practic.Tarasevich.service;

import bntu.fitr.practic.Tarasevich.domain.Role;
import bntu.fitr.practic.Tarasevich.domain.User;
import bntu.fitr.practic.Tarasevich.repos.UserRepos;
import freemarker.template.utility.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class UserService implements UserDetailsService{
    @Autowired
    private UserRepos userRepos;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepos.findByUsername(username);

        if(user == null){
            throw new UsernameNotFoundException("Пользователь не найден");
       }

        return user;
    }

    public List<User> findAll() {
        return userRepos.findAll();
    }

    public void saveUser(User user, String username, Map<String, String> form) {
        user.setUsername(username);

        Set<String> roles =
                Arrays.stream(Role.values())
                        .map(Role::name)
                        .collect(Collectors.toSet());

        user.getRoles().clear();

        for (String key: form.keySet()){
            if(roles.contains(key)){
                user.getRoles().add(Role.valueOf(key));
            }
        }
        userRepos.save(user);
    }

    public void updateProfile(User user, String surname, String name, String password, String email) {
        String userEmail = user.getEmail();
         if(email != null && !email.equals(userEmail) || userEmail != null && !userEmail.equals(email)){
            user.setEmail(email);
         }
         if(!StringUtils.isEmpty(email)){
             user.setEmail(email);
         }
         if(!StringUtils.isEmpty(password)){
             user.setPassword(password);
         }
        if(!StringUtils.isEmpty(surname)){
            user.setSurname(surname);
        }
        if(!StringUtils.isEmpty(name)){
            user.setName(name);
        }
         userRepos.save(user);
    }
}
