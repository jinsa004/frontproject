package site.metacoding.frontproject.web;

import java.io.File;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import lombok.RequiredArgsConstructor;
import site.metacoding.frontproject.service.ImageService;

@RequiredArgsConstructor
@Controller
public class uploadControlloer {

    private final ImageService imageService;

    @GetMapping("/upload")
    public String upload() {
        return "upload";
    }

    @PostMapping("/upload")
    public String uploadImage(@RequestParam MultipartFile image) {
        imageService.insertImage(image);
        return "/resume/resume_detail";
    }
}
