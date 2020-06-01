package com.atguigu.controller;

import com.atguigu.dao.EmployeeDao;
import com.atguigu.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Collection;

/**
 * EmployeeController
 *
 * @blame Android Team
 */
@Controller
public class EmployeeController {
    @Autowired
    EmployeeDao employeeDao;

    /**
     * 查询所有请求
     * @param model
     * @return
     */

    @RequestMapping(value = "/emps")
    public String getEmp(Model model) {

        Collection<Employee> all = employeeDao.getAll();
        model.addAttribute("emps", all);
        return "list";
    }
}
