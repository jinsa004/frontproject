package site.metacoding.frontproject.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.frontproject.domain.employee.Employee;
import site.metacoding.frontproject.domain.employee.EmployeeDao;

@RequiredArgsConstructor
@Service
public class EmployeeService {

    private final EmployeeDao employeeDao;

    public Employee 구직자정보보기(Integer employeeId) {
        return employeeDao.findById(employeeId);
    }

}
