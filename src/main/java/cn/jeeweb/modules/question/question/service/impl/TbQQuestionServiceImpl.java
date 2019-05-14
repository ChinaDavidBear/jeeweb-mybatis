package cn.jeeweb.modules.question.question.service.impl;

import cn.jeeweb.core.common.service.impl.CommonServiceImpl;
import cn.jeeweb.core.query.wrapper.EntityWrapper;
import cn.jeeweb.modules.question.question.mapper.TbQQuestionMapper;
import cn.jeeweb.modules.question.question.entity.TbQQuestion;
import cn.jeeweb.modules.question.question.service.ITbQQuestionService;
import cn.jeeweb.modules.question.question.entity.QOptions;
import cn.jeeweb.modules.question.question.service.IQOptionsService;
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
 * @Title: Question
 * @Description: Question
 * @author David
 * @date 2019-05-14 11:45:05
 * @version V1.0   
 *
 */
@Transactional
@Service("tbQQuestionService")
public class TbQQuestionServiceImpl  extends CommonServiceImpl<TbQQuestionMapper,TbQQuestion> implements  ITbQQuestionService {
	@Autowired
	private IQOptionsService qOptionsService;
	
	@Override
	public boolean insert(TbQQuestion tbQQuestion) {
		// 保存主表
		super.insert(tbQQuestion);
		// 保存QOptions
		String qOptionsListJson = StringEscapeUtils
				.unescapeHtml4(ServletUtils.getRequest().getParameter("qOptionsListJson"));
		List<QOptions> qOptionsList = JSONObject.parseArray(qOptionsListJson, QOptions.class);
		for (QOptions qOptions : qOptionsList) {
			// 保存字段列表
			qOptions.setQid(tbQQuestion);
			qOptionsService.insert(qOptions);
		}
		return true;
	}
	
	@Override
	public boolean insertOrUpdate(TbQQuestion tbQQuestion) {
		try {
			// 获得以前的数据
			List<QOptions> oldQOptionsList = qOptionsService.selectList(new EntityWrapper<QOptions>(QOptions.class).eq("qid.id",tbQQuestion.getId()));
			// 字段
			String qOptionsListJson = StringEscapeUtils
					.unescapeHtml4(ServletUtils.getRequest().getParameter("qOptionsListJson"));
			List<QOptions> qOptionsList = JSONObject.parseArray(qOptionsListJson,
					QOptions.class);
			// 更新主表
			super.insertOrUpdate(tbQQuestion);
			qOptionsList = JSONObject.parseArray(qOptionsListJson, QOptions.class);
			List<String> newsQOptionsIdList = new ArrayList<String>();
			// 保存或更新数据
			for (QOptions qOptions : qOptionsList) {
				// 设置不变更的字段
				if (StringUtils.isEmpty(qOptions.getId())) {
					// 保存字段列表
					qOptions.setQid(tbQQuestion);
					qOptionsService.insert(qOptions);
				} else {
					qOptionsService.insertOrUpdate(qOptions);
				}
				newsQOptionsIdList.add(qOptions.getId());
			}

			// 删除老数据
			for (QOptions qOptions : oldQOptionsList) {
				String qOptionsId = qOptions.getId();
				if (!newsQOptionsIdList.contains(qOptionsId)) {
					qOptionsService.deleteById(qOptionsId);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}
		return true;
	}
	
	
	
}
