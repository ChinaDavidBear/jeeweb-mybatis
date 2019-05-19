package cn.jeeweb.modules.question.forum.service.impl;

import cn.jeeweb.core.common.service.impl.CommonServiceImpl;
import cn.jeeweb.core.query.wrapper.EntityWrapper;
import cn.jeeweb.modules.question.forum.mapper.TbForumPostMapper;
import cn.jeeweb.modules.question.forum.entity.TbForumPost;
import cn.jeeweb.modules.question.forum.service.ITbForumPostService;
import cn.jeeweb.modules.question.forum.entity.Posts;
import cn.jeeweb.modules.question.forum.service.IPostsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import cn.jeeweb.core.utils.ServletUtils;
import cn.jeeweb.core.utils.StringUtils;
import java.util.ArrayList;
import java.util.List;
import com.alibaba.fastjson.JSONObject;
import org.apache.commons.lang3.StringEscapeUtils;

/**   
 * @Title: ForumPost
 * @Description: ForumPost
 * @author David
 * @date 2019-05-19 14:22:52
 * @version V1.0   
 *
 */
@Transactional
@Service("tbForumPostService")
public class TbForumPostServiceImpl  extends CommonServiceImpl<TbForumPostMapper,TbForumPost> implements  ITbForumPostService {
	@Autowired
	private IPostsService postsService;
	
	@Override
	public boolean insert(TbForumPost tbForumPost) {
		// 保存主表
		super.insert(tbForumPost);

		if(null !=  ServletUtils.getRequest().getParameter("postsListJson")){
			// 保存
			String postsListJson = StringEscapeUtils
					.unescapeHtml4(ServletUtils.getRequest().getParameter("postsListJson"));
			List<Posts> postsList = JSONObject.parseArray(postsListJson, Posts.class);
			for (Posts posts : postsList) {
				// 保存字段列表
				posts.setFid(tbForumPost);
				postsService.insert(posts);
			}
		}

		return true;
	}
	
	@Override
	public boolean insertOrUpdate(TbForumPost tbForumPost) {
		try {
			// 获得以前的数据
			List<Posts> oldPostsList = postsService.selectList(new EntityWrapper<Posts>(Posts.class).eq("fid.id",tbForumPost.getId()));
			// 字段
			String postsListJson = StringEscapeUtils
					.unescapeHtml4(ServletUtils.getRequest().getParameter("postsListJson"));
			List<Posts> postsList = JSONObject.parseArray(postsListJson,
					Posts.class);
			// 更新主表
			super.insertOrUpdate(tbForumPost);
			postsList = JSONObject.parseArray(postsListJson, Posts.class);
			List<String> newsPostsIdList = new ArrayList<String>();
			// 保存或更新数据
			for (Posts posts : postsList) {
				// 设置不变更的字段
				if (StringUtils.isEmpty(posts.getId())) {
					// 保存字段列表
					posts.setFid(tbForumPost);
					postsService.insert(posts);
				} else {
					postsService.insertOrUpdate(posts);
				}
				newsPostsIdList.add(posts.getId());
			}

			// 删除老数据
			for (Posts posts : oldPostsList) {
				String postsId = posts.getId();
				if (!newsPostsIdList.contains(postsId)) {
					postsService.deleteById(postsId);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}
		return true;
	}
	
	
	
}
