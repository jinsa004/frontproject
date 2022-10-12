package site.metacoding.frontproject.service;

import org.springframework.stereotype.Service;
import lombok.RequiredArgsConstructor;
import site.metacoding.frontproject.domain.resume.Resume;
import site.metacoding.frontproject.domain.resume.ResumeDao;
import site.metacoding.frontproject.web.dto.request.UpdateDto;

@RequiredArgsConstructor
@Service
public class ResumeService {

    private final ResumeDao resumeDao;

    public void 이력서작성(Resume resume) {
        resumeDao.insert(resume);
    }

    public Resume 이력서한건보기(Integer resumeId) {
        return resumeDao.findById(resumeId);
    }

    public void 이력서수정(Integer resumeId, UpdateDto updateDto) {
        Resume resumePS = resumeDao.findById(resumeId);
        resumePS.update(updateDto);
        resumeDao.update(resumePS);
    }
}
