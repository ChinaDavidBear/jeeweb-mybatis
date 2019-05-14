package cn.jeeweb.modules.question.question.service.impl;

import cn.jeeweb.core.common.service.impl.CommonServiceImpl;
import cn.jeeweb.modules.question.question.mapper.TbQMemberMapper;
import cn.jeeweb.modules.question.question.entity.TbQMember;
import cn.jeeweb.modules.question.question.service.ITbQMemberService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**   
 * @Title: 会员管理
 * @Description: 会员管理
 * @author David
 * @date 2019-05-14 16:21:28
 * @version V1.0   
 *
 */
@Transactional
@Service("tbQMemberService")
public class TbQMemberServiceImpl  extends CommonServiceImpl<TbQMemberMapper,TbQMember> implements  ITbQMemberService {

}
