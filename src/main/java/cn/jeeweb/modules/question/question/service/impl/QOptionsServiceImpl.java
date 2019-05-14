package cn.jeeweb.modules.question.question.service.impl;

import cn.jeeweb.core.common.service.impl.CommonServiceImpl;
import cn.jeeweb.modules.question.question.mapper.QOptionsMapper;
import cn.jeeweb.modules.question.question.entity.QOptions;
import cn.jeeweb.modules.question.question.service.IQOptionsService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**   
 * @Title: QOptions
 * @Description: QOptions
 * @author David
 * @date 2019-05-14 11:45:05
 * @version V1.0   
 *
 */
@Transactional
@Service("qOptionsService")
public class QOptionsServiceImpl  extends CommonServiceImpl<QOptionsMapper,QOptions> implements  IQOptionsService {

}
