package cn.jeeweb.modules.question.question.controller;


import cn.jeeweb.core.common.controller.BaseBeanController;
import cn.jeeweb.modules.question.forum.entity.Posts;
import cn.jeeweb.modules.question.forum.entity.TbForumPost;
import cn.jeeweb.modules.question.forum.entity.TbPosts;
import cn.jeeweb.modules.question.forum.service.IPostsService;
import cn.jeeweb.modules.question.forum.service.ITbForumPostService;
import cn.jeeweb.modules.question.question.entity.QOptions;
import cn.jeeweb.modules.question.question.entity.TbQMember;
import cn.jeeweb.modules.question.question.entity.TbQQuestion;
import cn.jeeweb.modules.question.question.entity.TbQResult;
import cn.jeeweb.modules.question.question.service.IQOptionsService;
import cn.jeeweb.modules.question.question.service.ITbQMemberService;
import cn.jeeweb.modules.question.question.service.ITbQQuestionService;
import cn.jeeweb.modules.question.question.service.ITbQResultService;
import cn.jeeweb.modules.sys.entity.User;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;

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


    @Autowired
    protected ITbForumPostService tbForumPostService;
    @Autowired
    private IPostsService postsService;

    /**
     * 首页
     * @param model
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "",method = RequestMethod.GET)
    public ModelAndView index(Model model, HttpServletRequest request, HttpServletResponse response) {
        EntityWrapper ew=new EntityWrapper();
        ew.setEntity(new TbForumPost());
        ew.orderBy("create_date",false);
        List list = tbForumPostService.selectList(ew);
        model.addAttribute("tbForumPosts",list);
        return new ModelAndView("front/index");
    }

    /**
     * addbbs
     * @param
     * @param model
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/addbbs",method = RequestMethod.GET)
    public String addbbs(String title,String content,Model model, HttpServletRequest request, HttpServletResponse response) {
        TbForumPost tbForumPost = new TbForumPost();
        //添加帖子

        HttpSession session = request.getSession();
        Object front_user = session.getAttribute("FRONT_USER");
        TbQMember member = (TbQMember)front_user;
        User user = new User();
        user.setId(member.getName());
        Date date = new Date();
        tbForumPost.setTitle(title);
        tbForumPost.setCreateBy(user);
        tbForumPost.setUpdateBy(user);
        tbForumPost.setCreateDate(date);
        tbForumPost.setUpdateDate(date);
        tbForumPostService.insert(tbForumPost);

        //添加第一条回复
        Posts posts = new Posts();
        posts.setFid(tbForumPost);
        posts.setContent(content);
        user.setId(member.getName());
        posts.setCreateBy(user);
        posts.setCreateDate(new Date());
        posts.setUpdateBy(user);
        posts.setUpdateDate(date);
        posts.setRemarks("楼主");
        postsService.insert(posts);
        return "redirect:/front";
    }


    /**
     * 帖子详情功能
     * @param id
     * @param model
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/content",method = RequestMethod.GET)
    public ModelAndView content(String id,Model model, HttpServletRequest request, HttpServletResponse response) {
        TbForumPost tbForumPost = tbForumPostService.selectById(id);
        EntityWrapper ew=new EntityWrapper();
        ew.setEntity(new Posts());
        ew.eq("fid",tbForumPost.getId())
                .orderBy("create_date");
        List list = postsService.selectList(ew);
        model.addAttribute("tbForumPost",tbForumPost);
        model.addAttribute("list",list);
        return new ModelAndView("front/content");
    }

    /**
     * 追加回复
     * @param id
     * @param content
     * @param model
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/contentadd",method = RequestMethod.GET)
    public String contentadd(String id,String content,Model model, HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        Object front_user = session.getAttribute("FRONT_USER");
        TbQMember member = (TbQMember)front_user;
        Posts posts = new Posts();
        TbForumPost tbForumPost = tbForumPostService.selectById(id);
        posts.setFid(tbForumPost);
        posts.setContent(content);
        User user = new User();
        user.setId(member.getName());
        posts.setCreateBy(user);
        posts.setCreateDate(new Date());
        posts.setRemarks("回复");
        postsService.insert(posts);
        return "redirect:/front/content?id="+id;
    }
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
        TbQMember tbQMember = new TbQMember();
        tbQMember.setRemarks("请输入用户和密码");
        model.addAttribute("member",tbQMember);
        return display("login");
    }

    /**
     * 用户注册
     * @param model
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/doLogin",method = RequestMethod.POST)
    public String doLogin(Model model, HttpServletRequest request, HttpServletResponse response ,TbQMember member) {
        System.out.println(member.getAccount());
        System.out.println(member.getPassword());
        if(null != member && !"".equals(member.getAccount()) && !"".equals(member.getPassword())){
            Map params = new HashMap<>();
            params.put("account",member.getAccount());
            List<TbQMember> list = tbQMemberService.selectByMap(params);
            if(null!= list && list.size()>0){
                TbQMember tbQMember = list.get(0);
                if(tbQMember.getPassword().equals(member.getPassword())){
                    HttpSession session = request.getSession();
                    session.setAttribute("FRONT_USER",tbQMember);
                    return "redirect:/front/";
                }
            }
        }
        member.setRemarks("用户名或密码不正确");
        model.addAttribute("member",member);
        return "redirect:/front/login";
    }

    /**
     * 登录功能
     * @param model
     * @param request
     * @param response
     * @param member
     * @return
     */

    @RequestMapping(value = "/loginout",method = RequestMethod.GET)
    public String loginout(Model model, HttpServletRequest request, HttpServletResponse response ,TbQMember member) {
        HttpSession session = request.getSession();
        session.setAttribute("FRONT_USER",null);
        return "redirect:/front";
    }

    /**
     * 用户详情
     * @param model
     * @param request
     * @param response
     * @param member
     * @return
     */
    @RequestMapping(value = "/user",method = RequestMethod.GET)
    public ModelAndView user(Model model, HttpServletRequest request, HttpServletResponse response ,TbQMember member) {
        return new ModelAndView("front/user");
    }

    @RequestMapping(value = "/userupdate",method = RequestMethod.POST)
    public String userupdate(Model model, HttpServletRequest request, HttpServletResponse response ,TbQMember member) {
        System.out.println(member);
        tbQMemberService.updateById(member);
        HttpSession session = request.getSession();
        session.setAttribute("FRONT_USER",member);
        return "redirect:/front";
    }
    /**
     * 问卷调查
     * @param model
     * @param request
     * @param response
     * @param member
     * @return
     */
    @RequestMapping(value = "/check",method = RequestMethod.GET)
    public ModelAndView check(Model model, HttpServletRequest request, HttpServletResponse response ,TbQMember member) {
        EntityWrapper ew=new EntityWrapper();
        ew.setEntity(new TbQQuestion());
        ew.orderBy("sort");
        List<HashMap> data = new ArrayList<HashMap>();
        List<TbQQuestion> list = tbQQuestionService.selectList(ew);
        for (TbQQuestion question: list
             ) {
            HashMap<String, Object> objectObjectHashMap = new HashMap<>();
            objectObjectHashMap.put("question",question);
            EntityWrapper ewOption=new EntityWrapper();
            ewOption.setEntity(new QOptions());
            ewOption.eq("qid",question.getId());
            List optionsList = qOptionsService.selectList(ewOption);
            objectObjectHashMap.put("options",optionsList);
            data.add(objectObjectHashMap);
        }
        model.addAttribute("list",data);
        return new ModelAndView("front/check");
    }
    /**
     * doCheck
     * 计算分数
     */
    @RequestMapping(value = "/doCheck",method = RequestMethod.POST)
    public String doCheck(Model model, HttpServletRequest request, HttpServletResponse response ) {
        Enumeration<String> parameterNames = request.getParameterNames();
        Integer score = 0;
        while (parameterNames.hasMoreElements()){
            String s = parameterNames.nextElement();
            if(s.startsWith("question")){
                score += Integer.valueOf(request.getParameter(s));
            }
        }
        HttpSession session = request.getSession();
        Object front_user = session.getAttribute("FRONT_USER");
        TbQMember member = (TbQMember)front_user;

        TbQMember tbQMember = tbQMemberService.selectById(member.getId());
        tbQMember.setScore(score.toString());
        tbQMemberService.updateById(tbQMember);
        session.setAttribute("FRONT_USER",tbQMember);

        return "redirect:/front/checkResult";
    }

    /**
     * 结果页面
     * @param model
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/checkResult",method = RequestMethod.GET)
    public ModelAndView checkResult(Model model, HttpServletRequest request, HttpServletResponse response) {

        HttpSession session = request.getSession();
        Object front_user = session.getAttribute("FRONT_USER");
        TbQMember member = (TbQMember)front_user;

        TbQMember tbQMember = tbQMemberService.selectById(member.getId());
        String score = tbQMember.getScore();
        EntityWrapper ew=new EntityWrapper();
        ew.setEntity(new TbQResult());
        ew.le("low",score).ge("up",score).orderBy("sort");
        List<HashMap> data = new ArrayList<HashMap>();
        List<TbQResult> list = tbQResultService.selectList(ew);
        model.addAttribute("list",list);
        return new ModelAndView("front/checkResult");
    }
}
