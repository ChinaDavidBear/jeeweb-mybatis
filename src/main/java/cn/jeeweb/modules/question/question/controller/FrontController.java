package cn.jeeweb.modules.question.question.controller;


import cn.jeeweb.core.common.controller.BaseBeanController;
import cn.jeeweb.core.security.shiro.authz.annotation.RequiresMethodPermissions;
import cn.jeeweb.modules.question.question.entity.TbQMember;
import cn.jeeweb.modules.question.question.service.IQOptionsService;
import cn.jeeweb.modules.question.question.service.ITbQMemberService;
import cn.jeeweb.modules.question.question.service.ITbQQuestionService;
import cn.jeeweb.modules.question.question.service.ITbQResultService;
import cn.jeeweb.modules.sys.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

/**
 * 用户端页面功能
 */
@Controller
@RequestMapping("/front")
public class FrontController extends BaseBeanController<TbQMember> {

    @Autowired
    protected ITbQMemberService tbQMemberService;
    @Autowired
    protected ITbQQuestionService tbQQuestionService;
    @Autowired
    private IQOptionsService qOptionsService;
    @Autowired
    protected ITbQResultService tbQResultService;


    /**
     * 注册页面
     * @param model
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/register",method = RequestMethod.GET)
    public String register(Model model, HttpServletRequest request, HttpServletResponse response) {
        return display("register");
    }

    /**
     * 用户注册
     * @param model
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/doRegister",method = RequestMethod.POST)
    public String doRegister(Model model, HttpServletRequest request, HttpServletResponse response ,TbQMember member) {
        Date date = new Date();
        member.setBirthday(date);
        User user = new User();
        user.setId("4028ea815a3d2a8c015a3d2f8d2a0002");
        member.setCreateBy(user);
        member.setCreateDate(date);
        member.setUpdateBy(user);
        member.setUpdateDate(date);
        member.setScore("-1");
        member.setDelFlag("0");
        member.setRemarks("新用户注册");
        boolean insert = tbQMemberService.insert(member);
        return "redirect:/front/login";
    }

    /**
     * 登录页面
     * @param model
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String login(Model model, HttpServletRequest request, HttpServletResponse response) {
        return display("login");
    }

}
