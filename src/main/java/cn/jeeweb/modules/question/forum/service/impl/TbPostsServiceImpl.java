package cn.jeeweb.modules.question.forum.service.impl;

import cn.jeeweb.core.common.service.impl.CommonServiceImpl;
import cn.jeeweb.modules.question.forum.mapper.TbPostsMapper;
import cn.jeeweb.modules.question.forum.entity.TbPosts;
import cn.jeeweb.modules.question.forum.service.ITbPostsService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**   
 * @Title: posts
 * @Description: 回复
 * @author David
 * @date 2019-05-19 14:23:26
 * @version V1.0   
 *
 */
@Transactional
@Service("tbPostsService")
public class TbPostsServiceImpl  extends CommonServiceImpl<TbPostsMapper,TbPosts> implements  ITbPostsService {

}
