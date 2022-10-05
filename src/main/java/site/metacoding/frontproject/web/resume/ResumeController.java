package site.metacoding.frontproject.web.resume;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ResumeController {

    @GetMapping("/resume_detail")
    public String resume_detail() {
        return "resume/resume_detail";
    }
}
