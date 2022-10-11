package site.metacoding.frontproject.web.employee;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EmployeeController {

    @GetMapping({ "/", "/main" })
    public String main() {//개인회원이 보는 메인페이지
        return "user/main";
    }

    @GetMapping("/matching")
    public String matchingList() {//개인회원이 보는 매칭리스트탭(관심분야맞는 공고 목록보기)
        return "user/matching";
    }

    @GetMapping("/subscription")
    public String subscriptionList() {//개인회원이 보는 구독기업공고탭(구독기업 공고 목록보기)
        return "user/subscription";
    }

    @GetMapping("/companyList")
    public String companyList() {//개인회원이 보는 기업정보탭(기업소개 목록보기)
        return "user/companyList";
    }

    @GetMapping("/mypageInsertForm")
    public String mypageResumeInsert() {//이력서 등록, 수정, 삭제, 대표 이력서 선택
        return "mypage/mypageInsertForm";
    }

    @GetMapping("/users_info")
    public String 회원정보() {//개인회원 회원가입 정보 수정/탈퇴 페이지
        return "user/users_info";
    }

}
