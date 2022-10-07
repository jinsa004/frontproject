package site.metacoding.frontproject.web.company;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CompanyController {

    @GetMapping("/company_info")
    public String company_info() {
        return "company/company_info";
    }

    @GetMapping("/company_info_update")
    public String company_info_update() {
        return "company/company_info_update";
    }

}
