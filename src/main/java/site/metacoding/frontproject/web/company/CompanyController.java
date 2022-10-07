package site.metacoding.frontproject.web.company;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CompanyController {

    @GetMapping("/company_info")
    public String resume_udpate() {
        return "company/company_info";
    }

}
