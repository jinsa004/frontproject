package site.metacoding.frontproject.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class TestController {

    @GetMapping("/matchingCompany")
    public String companyMatchingList() {
        return "company/matchingCompany";
    }

    @GetMapping("/resumeList")
    public String resumeList() {
        return "company/resumeList";
    }

    @GetMapping("/supporter")
    public String supportList() {
        return "company/supporter";
    }

    @GetMapping("/mainCompany")
    public String companyMain() {
        return "company/mainCompany";
    }

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
