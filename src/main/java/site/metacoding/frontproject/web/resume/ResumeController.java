package site.metacoding.frontproject.web.resume;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ResumeController {

    @GetMapping("/resume_detail")
    public String resume_detail() {
        return "resume/resume_detail";
    }

    @GetMapping("/resume_update")
    public String resume_update1() {
        return "resume/resume_update_highschool";
    }

    @GetMapping("/resume_update_univ")
    public String resume_update2() {
        return "resume/resume_update_univ";
    }
}
