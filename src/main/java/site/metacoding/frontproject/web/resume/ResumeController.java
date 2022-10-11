package site.metacoding.frontproject.web.resume;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ResumeController {

    // @GetMapping("/")
    // public String 메인() {
    //     return "resume/resume_detail";
    // }

    @GetMapping("/resume_update")
    public String 이력서등록() {
        return "resume/resume_update";
    }

    @GetMapping("/resume_detail")
    public String 이력서상세보기() {
        return "resume/resume_detail";
    }

}
