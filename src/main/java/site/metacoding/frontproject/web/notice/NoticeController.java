package site.metacoding.frontproject.web.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NoticeController {

    @GetMapping("/recruitDetail")
    public String recruitDetail() {//채용공고 상세보기
        return "user/recruitDetail";
    }

    @GetMapping("/notice_save")
    public String 공고등록() {
        return "notice/notice_save";
    }

    @GetMapping("/notice_update")
    public String 공고수정() {
        return "notice/notice_update";
    }

}
