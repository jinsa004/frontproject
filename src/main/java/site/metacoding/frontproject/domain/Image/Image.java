package site.metacoding.frontproject.domain.Image;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class Image {
    private Integer id;
    private String originImageName;
    private String newImageName;
    private String imagePath;
}
