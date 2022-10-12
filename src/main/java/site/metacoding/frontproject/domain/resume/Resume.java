package site.metacoding.frontproject.domain.resume;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import site.metacoding.frontproject.web.dto.request.UpdateDto;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
public class Resume {
    private Integer resumeId;
    private String resumeName;
    private Integer employeeId;
    private String resumeImage;
    private String highschoolName;
    private Integer highschoolStartdate;
    private Integer highschoolEnddate;
    private String highschoolMajor;
    private String univName;
    private Integer univStartdate;
    private Integer univEnddate;
    private String univMajor;
    private float univGrades;
    private String prevCo;
    private String careerPeriod;
    private String careerPosition;
    private String careerDepartment;
    private String careerTask;
    private Integer jobId;
    private boolean isMain;
    private Timestamp createdAt;

    // 수정화면 불러올 시 employee 정보 불러오기용
    private String employeeName;
    private String employeeBirth;
    private String employeeSex;
    private String employeeEmail;
    private String employeeTel;
    private String employeeLocation;

    // 내 이력서 목록 볼때 관심분야 표시용
    private String jobName;

    public void update(UpdateDto updateDto) {
        this.resumeName = updateDto.getResumeName();
        this.resumeImage = updateDto.getResumeImage();
        this.highschoolName = updateDto.getHighschoolName();
        this.highschoolStartdate = updateDto.getHighschoolStartdate();
        this.highschoolEnddate = updateDto.getHighschoolEnddate();
        this.highschoolMajor = updateDto.getHighschoolMajor();
        this.univName = updateDto.getUnivName();
        this.univStartdate = updateDto.getUnivStartdate();
        this.univEnddate = updateDto.getUnivEnddate();
        this.univMajor = updateDto.getUnivMajor();
        this.univGrades = updateDto.getUnivGrades();
        this.prevCo = updateDto.getPrevCo();
        this.careerPeriod = updateDto.getCareerPeriod();
        this.careerPosition = updateDto.getCareerPosition();
        this.careerDepartment = updateDto.getCareerDepartment();
        this.careerTask = updateDto.getCareerTask();
        this.jobId = updateDto.getJobId();
    }
}