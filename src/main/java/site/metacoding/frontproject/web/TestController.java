package site.metacoding.frontproject.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {
    @GetMapping("/companyList")
    public String companyList() {
        return "user/companyList";
    }

    @GetMapping("/subscription")
    public String subscriptionList() {
        return "user/subscription";
    }

    @GetMapping("/matching")
    public String matchingList() {
        return "user/matching";
    }

    @GetMapping({ "/", "/main" })
    public String main() {
        return "user/main";
    }
}
