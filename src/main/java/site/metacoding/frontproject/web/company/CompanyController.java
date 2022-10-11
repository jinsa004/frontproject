package site.metacoding.frontproject.web.company;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CompanyController {

    @GetMapping("/mainCompany")
    public String companyMain() {//기업회원이 보는 메인페이지
        return "company/mainCompany";
    }

    @GetMapping("/supporter")
    public String supportList() {//기업회원이 보는 공고/지원자관리 탭
        return "company/supporter";
    }

    @GetMapping("/matchingCompany")
    public String companyMatchingList() {//기업회원이 보는 이력서 매칭리스트
        return "company/matchingCompany";
    }

    @GetMapping("/company_info")
    public String 기업정보() {//기업회원 회원가입 정보 수정할 때 쓰는 거 company 테이블
        return "company/company_info";
    }

    @GetMapping("/company_info_update")
    public String 기업소개입력() {//기업소개 등록, 수정할 때 쓰는 거 intro 테이블
        return "company/company_info_update";
    }

    @GetMapping("/company_info_detail")
    public String 기업소개상세보기() {//개인회원이 intro 테이블 기업소개 상세보기
        return "company/company_info_detail";
    }

}
