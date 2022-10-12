package site.metacoding.frontproject.web.resume;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.frontproject.domain.application.Application;
import site.metacoding.frontproject.domain.employee.Employee;
import site.metacoding.frontproject.domain.job.Job;
import site.metacoding.frontproject.domain.resume.Resume;
import site.metacoding.frontproject.service.EmployeeService;
import site.metacoding.frontproject.service.JobService;
import site.metacoding.frontproject.service.ResumeService;
import site.metacoding.frontproject.web.dto.request.UpdateDto;
import site.metacoding.frontproject.web.dto.response.CMRespDto;
import org.springframework.web.bind.annotation.PutMapping;

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
    public @ResponseBody CMRespDto<?> 이력서등록(@RequestBody Resume resume) { // 이력서 등록
        resumeService.이력서작성(resume);
        return new CMRespDto<>(1, "이력서 등록 성공", null);
    }

    @GetMapping("emp/resumeUpdateForm/{resumeId}")
    public String 이력서수정화면불러오기(@PathVariable Integer resumeId, Model model) { // 이력서 수정 페이지
        Resume resumePS = resumeService.이력서한건보기(resumeId);
        model.addAttribute("resumePS", resumePS);
        List<Job> jobPS = jobService.관심직무보기();
        model.addAttribute("jobPS", jobPS);
        return "resume/resumeUpdate";
    }

    @PutMapping("emp/resumeUpdate/{resumeId}")
    public @ResponseBody CMRespDto<?> 이력서수정(@PathVariable Integer resumeId, @RequestBody UpdateDto updateDto) { // 이력서
                                                                                                                // 수정
        resumeService.이력서수정(resumeId, updateDto);
        return new CMRespDto<>(1, "이력서 수정 성공", null);
    }

    @DeleteMapping("emp/resumeDelete/{resumeId}")
    public @ResponseBody CMRespDto<?> 이력서삭제(@PathVariable Integer resumeId) { // 이력서 삭제
        resumeService.이력서삭제(resumeId);
        return new CMRespDto<>(1, "이력서 삭제 성공", null);
    }

    @PostMapping("emp/applicate")
    public @ResponseBody CMRespDto<?> applicateNotice(Application application) { // 이력서 선택하여 지원하기
        resumeService.지원하기(application);
        return new CMRespDto<>(1, "이력서 삭제 성공", null);
    }

    @PutMapping("emp/setMainResume/{resumeId}")
    public @ResponseBody CMRespDto<?> setMainResume(@PathVariable Integer resumeId) {
        resumeService.메인이력서등록(resumeId);
        return new CMRespDto<>(1, "메인 이력서 등록 성공", null);
    }

}
