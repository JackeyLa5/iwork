package com.iwork.controller;

import com.iwork.bean.Project;
import com.iwork.bean.Project_Type;
import com.iwork.service.ProjectTypeService;
import com.iwork.service.ProjectsService;
import com.sun.org.glassfish.gmbal.ParameterNames;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class ProjectsController {

    @Resource
    private ProjectsService projectsService;

    @Resource
    private ProjectTypeService projectTypeService;

    /**
     * 返回所有的项目信息
     * @return
     */
    @RequestMapping("/showProjects")
    @ResponseBody
    public List<Project> showProjects(){
        List<Project> projectList = projectsService.getProjects();
        return projectList;
    }

    /**
     * 添加项目
     * 两个外键：createUserId，projectType
     * @param project
     */
    @RequestMapping("/addProjects")
    @ResponseBody
    public void addProject(@RequestBody Project project){

        project.setProjectId(2);
        project.setCreateUserId(1001);
        project.setCreateTime(new Date());
        project.setProjectProgress("0");
        project.setProjectReview(0);
        project.setProjectExam("0");
        project.setProjectBidding(0);
        project.setBidingSummary("0");

        projectsService.addProject(project);
    }

    /**
     * 编辑项目信息
     * @param project
     */
    @RequestMapping("/updateProject")
    @ResponseBody
    public void updateProject(@RequestBody Project project){

        projectsService.updateProject(project);
    }

    /**
     * 根据类别获取项目信息
     * @return
     */
    @RequestMapping("/showTypeProjects")
    @ResponseBody
    public List<Project> showTypeProject(@RequestParam String project_type, HttpServletResponse response) throws NullPointerException{
        List<Project> typeProjectList = new ArrayList<Project>();
        if (null == project_type){
            System.out.println("showTypeProjects wrong!!!");
            return typeProjectList;
        }
        else{
            typeProjectList = projectsService.getTypeProjects(project_type);
        }

        return typeProjectList;
    }


    /**
     * 添加项目分类
     * @param projectTypeName
     * @param httpServletRequest
     */
    @RequestMapping("/addProjectType")
    @ResponseBody
    public void addProjectType(@RequestParam String projectTypeName, HttpServletRequest httpServletRequest){
//        project_type.setProjectTypeName("电子商务");

        Project_Type project_type = new Project_Type();
        project_type.setProjectTypeName(projectTypeName);
//        System.out.println("project_type:"+project_type.toString());
        projectTypeService.addProjectType(project_type);
    }
}
