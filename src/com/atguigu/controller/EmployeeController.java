package com.atguigu.controller;

import com.atguigu.dao.DepartmentDao;
import com.atguigu.dao.EmployeeDao;
import com.atguigu.entity.Department;
import com.atguigu.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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

    @Autowired
    DepartmentDao departmentDao;

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

    @RequestMapping("/toAddPage")
    public String toAddPage(Model model) {
       Collection departments = departmentDao.getDepartmentS();
        model.addAttribute("depts", departments);
        model.addAttribute("employee", new Employee());
        return "add";
    }

    @RequestMapping(value = "/emp", method = RequestMethod.POST)
    public String addEmp(Employee employee) {
        System.out.println("要输出的员工"+ employee);

        employeeDao.save(employee);
        return "redirect:/emps";

    }

    /**
     * 查询员工 来到修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "/emp/{id}", method = RequestMethod.GET)
    public String getEmp(@PathVariable("id")Integer id, Model model) {

       Employee employee = employeeDao.get(id);
       model.addAttribute("employee", employee);

       Collection<Department> departments = departmentDao.getDepartmentS();
       model.addAttribute("depts", departments);
       return "edit";
    }

    @RequestMapping(value = "/emp/{id}", method = RequestMethod.PUT)
    public String updateEmp(@ModelAttribute("employee") Employee employee, @PathVariable("id") Integer id) {
        System.out.println("要修改的员工：" +employee);
        employeeDao.save(employee);
        return "redirect:/emps";
    }

    /**
     * 将employee对象提前读取保存到Model对象中
     * @param id
     * @param model
     */
    @ModelAttribute
    public void myModelAttribute(@RequestParam(value = "id", required = false)Integer id, Model model) {
        if(id != null) {
           Employee employee = employeeDao.get(id);

           model.addAttribute("employee", employee);
        }
        System.out.println("hah");
    }

    /**
     * 删除用户
     * @param id
     * @return
     */
    @RequestMapping(value = "/emp/{id}", method = RequestMethod.DELETE)
    public String deleteEmp(@PathVariable("id") Integer id) {
        employeeDao.delete(id);
        return "redirect:/emps";
    }
}
