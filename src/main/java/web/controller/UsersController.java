package web.controller;

import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import web.model.User;
import web.service.UserService;

import java.util.List;

@Controller
@RequestMapping("/users")
public class UsersController {

    private UserService userService;

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @GetMapping()
    public String showAllUsers(Model model) {
        List<User> allUsers = userService.getAllUsers();
        model.addAttribute("allUsers", allUsers);
        return "all-users";
    }

    @GetMapping("/create")
    public String newUser(Model model) {
        model.addAttribute("user", new User());

        return "create-user";
    }

    @PostMapping(value = "/save")
    public String createUser(@Valid @ModelAttribute("user") User user, BindingResult bindingResult) {
        if (!bindingResult.hasErrors()) {
            userService.add(user);
            return "redirect:/users";
        }
        else return "create-user";
    }

    @GetMapping("/update")
    public String update(@RequestParam long id, Model model) {
        User user = userService.getUser(id);
        model.addAttribute("user", user);

        return "update-user";
    }

    @PostMapping(value = "/updateUser")
    public String updateUser(@Valid @ModelAttribute("user") User user, BindingResult bindingResult) {
        if (!bindingResult.hasErrors()) {
            userService.add(user);
            return "redirect:/users";
        }
        else return "update-user";
    }

    @GetMapping("/delete")
    public String deleteUser(@RequestParam long id) {
        userService.deleteUser(id);

        return "redirect:/users";
    }
}
