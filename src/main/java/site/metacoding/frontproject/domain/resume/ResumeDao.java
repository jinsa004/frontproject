package site.metacoding.frontproject.domain.resume;

import java.util.List;

import site.metacoding.frontproject.web.dto.request.UpdateDto;

public interface ResumeDao {
    public List<Resume> findAll();

    public Resume findById(Integer resumeId);

    public void insert(Resume resume);

    public void update(Resume resumePS);

    public void deleteById(Integer resumeId);
}
