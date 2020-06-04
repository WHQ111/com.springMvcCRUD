package com.atguigu.controller;

import com.atguigu.dao.EmployeeDao;
import com.atguigu.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Collection;

@Controller
public class AjaxTestController {

    @Autowired
    EmployeeDao employeeDao;

    /**
     * @ResponseBody
     * 将返回的书记放在响应体中
     * 如果是对象，jackson包将自动将对象转化为json格式
     * @return
     */

    @RequestMapping("/getallajax")
    @ResponseBody
    public Collection<Employee> ajaxGetAll() {

        Collection<Employee> all = employeeDao.getAll();
        return all;
    }

    @RequestMapping("/test")
    public String testRequest(@RequestBody(required = false) String body) {

        System.out.println(body);
        return "success";
    }
}
