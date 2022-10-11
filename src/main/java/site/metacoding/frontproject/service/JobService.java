package site.metacoding.frontproject.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.frontproject.domain.job.Job;
import site.metacoding.frontproject.domain.job.JobDao;

@RequiredArgsConstructor
@Service
public class JobService {

    private final JobDao jobDao;

    public List<Job> 관심직무보기() {
        List<Job> jobPS = jobDao.findAll();
        return jobPS;
    }

}
