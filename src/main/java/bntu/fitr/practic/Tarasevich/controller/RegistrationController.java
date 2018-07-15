package bntu.fitr.practic.Tarasevich.controller;

import bntu.fitr.practic.Tarasevich.domain.Role;
import bntu.fitr.practic.Tarasevich.domain.User;
import bntu.fitr.practic.Tarasevich.repos.UserRepos;
import freemarker.template.utility.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.Collections;
import java.util.Map;

@Controller
public class RegistrationController {
    @Autowired
    private UserRepos userRepos;

    @GetMapping("/registration")
    public String registration(){
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(@RequestParam("password2") String password2, @Valid User user, BindingResult bindingResult, Model model){
        User userFromDb = userRepos.findByUsername(user.getUsername());

        if(StringUtils.isEmpty(password2)){
            model.addAttribute("password2Error", "Пароль подтверждения не должен быть пустым");
        }

        if(user.getPassword() != null && !user.getPassword().equals(password2)){
            model.addAttribute("passwordError", "Пароли не совпадают");
        }
        if(StringUtils.isEmpty(password2) || bindingResult.hasErrors()){
            Map<String, String> errors = ControllerUtils.getErrors(bindingResult);
            model.mergeAttributes(errors);
            return "registration";
        }

        if(userFromDb != null){
            model.addAttribute("usernameError", "User exists!");
            return "registration";
        }
        user.setActive(true);
        user.setRoles(Collections.singleton(Role.USER));
        userRepos.save(user);
        return "redirect:/login";
    }
}
