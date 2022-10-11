package site.metacoding.frontproject.web.company;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CompanyController {

    @GetMapping("/company_info")
    public String 기업정보() {
        return "company/company_info";
    }

    @GetMapping("/company_info_update")
    public String 기업소개입력() {
        return "company/company_info_update";
    }

    @GetMapping("/company_info_detail")
    public String 기업소개상세보기() {
        return "company/company_info_detail";
    }

}
