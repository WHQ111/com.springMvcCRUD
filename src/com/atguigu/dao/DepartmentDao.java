package com.atguigu.dao;

import com.atguigu.entity.Department;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/**
 * DepartmentDao
 *
 * @blame Android Team
 */
@Repository
public class DepartmentDao {

    private static Map<Integer, Department> depatements = null;

    static {
        depatements = new HashMap<Integer, Department>();

        depatements.put(101, new Department(101, "D-AA"));
        depatements.put(102, new Department(102, "D-BB"));
        depatements.put(103, new Department(103, "D-CC"));
        depatements.put(104, new Department(104, "D-DD"));
    }

    public Collection<Department> getDepartmentS() {
        return depatements.values();
    }

    public Department getDepartment(Integer id) {
        return depatements.get(id);
    }


}
