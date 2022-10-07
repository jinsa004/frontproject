package site.metacoding.frontproject.web.users;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UsersController {

    @GetMapping("/users_info")
    public String 회원정보() {
        return "users/users_info";
    }

}
