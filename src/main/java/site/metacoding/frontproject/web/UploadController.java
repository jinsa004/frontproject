package site.metacoding.frontproject.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

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
    public String uploadImage(@RequestParam MultipartFile image) throws Exception {
        imageService.insertImage(image);
        return "/upload";
    }

    @GetMapping("/image")
    public ResponseEntity<Resource> getImage(@RequestParam("imageName") String newImageName) throws Exception {
        String absolutePath = "src/main/resources/static/images/";
        FileSystemResource resource = new FileSystemResource(absolutePath + newImageName);
        if (!resource.exists()) {
            return null;
        }
        HttpHeaders header = new HttpHeaders();
        Path filePath = null;
        try {
            filePath = Paths.get(absolutePath + newImageName);
            header.add("Content-Type", Files.probeContentType(filePath));

        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ResponseEntity<Resource>(resource, header, HttpStatus.OK);
    }
}
