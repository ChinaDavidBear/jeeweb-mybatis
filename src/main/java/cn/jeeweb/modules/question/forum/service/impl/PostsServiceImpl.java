package cn.jeeweb.modules.question.forum.service.impl;

import cn.jeeweb.core.common.service.impl.CommonServiceImpl;
import cn.jeeweb.modules.question.forum.mapper.PostsMapper;
import cn.jeeweb.modules.question.forum.entity.Posts;
import cn.jeeweb.modules.question.forum.service.IPostsService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**   
 * @Title: 
 * @Description: 
 * @author David
 * @date 2019-05-19 14:22:52
 * @version V1.0   
 *
 */
@Transactional
@Service("postsService")
public class PostsServiceImpl  extends CommonServiceImpl<PostsMapper,Posts> implements  IPostsService {

}
