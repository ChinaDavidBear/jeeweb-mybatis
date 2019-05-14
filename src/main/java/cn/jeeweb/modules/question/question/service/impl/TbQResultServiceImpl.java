package cn.jeeweb.modules.question.question.service.impl;

import cn.jeeweb.core.common.service.impl.CommonServiceImpl;
import cn.jeeweb.modules.question.question.mapper.TbQResultMapper;
import cn.jeeweb.modules.question.question.entity.TbQResult;
import cn.jeeweb.modules.question.question.service.ITbQResultService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**   
 * @Title: 答题结果
 * @Description: 答题结果
 * @author David
 * @date 2019-05-14 15:15:54
 * @version V1.0   
 *
 */
@Transactional
@Service("tbQResultService")
public class TbQResultServiceImpl  extends CommonServiceImpl<TbQResultMapper,TbQResult> implements  ITbQResultService {

}
