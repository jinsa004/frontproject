package site.metacoding.frontproject.service;

import java.io.File;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;
import org.springframework.web.multipart.MultipartFile;

import lombok.RequiredArgsConstructor;
import site.metacoding.frontproject.domain.Image.ImageDao;
import site.metacoding.frontproject.domain.Image.ImageDto;

@Service
@RequiredArgsConstructor
public class ImageService {

    private final ImageDao imageDao;

    public ImageDto insertImage(MultipartFile image) throws Exception {
        // 파일이 빈 것이 들어오면 빈 것을 반환
        if (image.isEmpty()) {
            // return ;
        }

        // save할 반환 파일 띄우기
        ImageDto imageDto = new ImageDto();

        String absolutePath = new File("resources/static/images/").getAbsolutePath();

        File file = new File(absolutePath);
        // 저장할 위치의 디렉토리가 존재하지 않을 경우
        if (!file.exists()) {
            file.mkdirs();
        }

        // jpeg, png, gif 파일들만 받아서 처리
        if (!image.isEmpty()) {
            String contentType = image.getContentType();
            String originalImageExtension;
            // 확장자 명이 없으면 break
            if (ObjectUtils.isEmpty(contentType)) {
                return null;
            } else {
                if (contentType.contains("image/jpeg")) {
                    originalImageExtension = ".jpg";
                } else if (contentType.contains("image/png")) {
                    originalImageExtension = ".png";
                } else if (contentType.contains("image/gif")) {
                    originalImageExtension = ".gif";
                }
                // 기타 확장자명일 경우 break
                else {
                    return null;
                }
            }
            String newImageName = Long.toString(System.nanoTime()) + originalImageExtension;

            // DTO에 담기
            imageDto = ImageDto.builder()
                    .originImageName(image.getOriginalFilename())
                    .newImageName(newImageName)
                    .imagePath(absolutePath)
                    .build();

            imageDao.save(imageDto);

            // 저장된 파일로 변경하여 이를 보여주기 위함
            file = new File(absolutePath + "/" + newImageName);
            image.transferTo(file);
        }
        return imageDto;
    }
}