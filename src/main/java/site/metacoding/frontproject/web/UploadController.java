package site.metacoding.frontproject.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import lombok.RequiredArgsConstructor;
import site.metacoding.frontproject.service.ImageService;

@Controller
@RequiredArgsConstructor
public class UploadController {
    private final ImageService imageService;

    @GetMapping("/upload")
    public String upload() {
        return "upload";
    }

    @PostMapping("/upload")
    public String uploadImage(@RequestParam MultipartFile image) {
        imageService.insertImage(image);
        return "/upload";
    }
}
