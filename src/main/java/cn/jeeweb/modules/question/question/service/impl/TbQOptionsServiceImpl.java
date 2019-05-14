package cn.jeeweb.modules.question.question.service.impl;

import cn.jeeweb.core.common.service.impl.CommonServiceImpl;
import cn.jeeweb.modules.question.question.mapper.TbQOptionsMapper;
import cn.jeeweb.modules.question.question.entity.TbQOptions;
import cn.jeeweb.modules.question.question.service.ITbQOptionsService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**   
 * @Title: QOptions
 * @Description: QOptions
 * @author David
 * @date 2019-05-14 11:45:12
 * @version V1.0   
 *
 */
@Transactional
@Service("tbQOptionsService")
public class TbQOptionsServiceImpl  extends CommonServiceImpl<TbQOptionsMapper,TbQOptions> implements  ITbQOptionsService {

}
