package site.metacoding.frontproject.web.users;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UsersController {

    @GetMapping("/users_info")
    public String resume_udpate() {
        return "users/users_info";
    }


}


