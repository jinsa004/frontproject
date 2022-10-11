package site.metacoding.frontproject.web.resume;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ResumeController {

    @GetMapping("/resumeList")
    public String resumeList() { //기업회원이 보는 이력서리스트**
        return "company/resumeList";
    }

    // @GetMapping("/")
    // public String 메인() {
    //     return "resume/resume_detail";
    // }

    @GetMapping("/resume_update")
    public String 이력서등록() { //이력서 등록, 수정 페이지
        return "resume/resume_update";
    }

    @GetMapping("/resume_detail")
    public String 이력서상세보기() { //이력서 상세보기 페이지
        return "resume/resume_detail";
    }

}
