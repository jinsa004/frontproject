package site.metacoding.frontproject.domain.Image;

public interface ImageDao {
    public void save(ImageDto imageDto);

    public Image getImageById(Integer id);
}