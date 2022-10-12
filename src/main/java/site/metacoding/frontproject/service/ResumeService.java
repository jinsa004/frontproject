package site.metacoding.frontproject.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.frontproject.domain.application.Application;
import site.metacoding.frontproject.domain.application.ApplicationDao;
import site.metacoding.frontproject.domain.resume.Resume;
import site.metacoding.frontproject.domain.resume.ResumeDao;
import site.metacoding.frontproject.web.dto.request.UpdateDto;

@RequiredArgsConstructor
@Service
public class ResumeService {

    private final ResumeDao resumeDao;
    private final ApplicationDao applicationDao;

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

    public void 이력서삭제(Integer resumeId) {
        resumeDao.deleteById(resumeId);
    }

    public void 지원하기(Application application) {
        applicationDao.insert(application);
    }

    public List<Resume> 내이력서가져오기(Integer employeeId) {
        List<Resume> resumePS = resumeDao.findByEmployeeId(employeeId);
        return resumePS;
    }

    public void 메인이력서등록(Integer resumeId) {
        resumeDao.updateMain(resumeId);
    }
}
