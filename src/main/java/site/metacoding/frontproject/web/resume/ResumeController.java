package site.metacoding.frontproject.web.resume;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.frontproject.domain.employee.Employee;
import site.metacoding.frontproject.domain.job.Job;
import site.metacoding.frontproject.domain.resume.Resume;
import site.metacoding.frontproject.service.EmployeeService;
import site.metacoding.frontproject.service.JobService;
import site.metacoding.frontproject.service.ResumeService;
import site.metacoding.frontproject.web.dto.response.CMRespDto;

@RequiredArgsConstructor
@Controller
public class ResumeController {

    private final ResumeService resumeService;
    private final EmployeeService employeeService;
    private final JobService jobService;

    @GetMapping("co/resumeList")
    public String resumeList() { // 기업회원이 보는 이력서리스트**
        return "company/resumeList";
    }

    @GetMapping("co/resumeDetail")
    public String 이력서상세보기() { // 이력서 상세보기 페이지
        return "company/resumeDetail";
    }

    @GetMapping("emp/resumeSaveForm/{employeeId}")
    public String 이력서작성화면불러오기(@PathVariable Integer employeeId, Model model) { // 이력서 등록 페이지
        Employee employeePS = employeeService.구직자정보보기(employeeId);
        model.addAttribute("employeePS", employeePS);
        List<Job> jobPS = jobService.관심직무보기();
        model.addAttribute("jobPS", jobPS);
        return "resume/resumeSave";
    }

    @PostMapping("emp/resumeSave")
    public @ResponseBody CMRespDto<?> 이력서작성(@RequestBody Resume resume) { // 이력서 등록 페이지
        resumeService.이력서작성(resume);
        return new CMRespDto<>(1, "이력서 작성 성공", null);
    }

    @GetMapping("emp/resumeUpdate")
    public String 이력서수정() { // 이력서 수정 페이지
        return "resume/resumeUpdate";
    }

}
