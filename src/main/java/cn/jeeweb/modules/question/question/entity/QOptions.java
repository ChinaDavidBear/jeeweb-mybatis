package cn.jeeweb.modules.question.question.entity;

import cn.jeeweb.core.common.entity.AbstractEntity;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;

/**   
 * @Title: QOptions
 * @Description: QOptions
 * @author David
 * @date 2019-05-14 11:45:05
 * @version V1.0   
 *
 */
@TableName("tb_q_options")
@SuppressWarnings("serial")
public class QOptions extends AbstractEntity<String> {

    /**id*/
    @TableId(value = "id", type = IdType.UUID)
	private String id;
    /**qid*/
    @TableField(value = "qid",el="qid.id")
	private TbQQuestion qid;
    /**options*/
    @TableField(value = "options")
	private String options;
    /**score*/
    @TableField(value = "score")
	private Integer score;
	
	/**
	 * 获取  id
	 *@return: String  id
	 */
	public String getId(){
		return this.id;
	}

	/**
	 * 设置  id
	 *@param: id  id
	 */
	public void setId(String id){
		this.id = id;
	}
	/**
	 * 获取  qid
	 *@return: TbQQuestion  qid
	 */
	public TbQQuestion getQid(){
		return this.qid;
	}

	/**
	 * 设置  qid
	 *@param: qid  qid
	 */
	public void setQid(TbQQuestion qid){
		this.qid = qid;
	}
	/**
	 * 获取  options
	 *@return: String  options
	 */
	public String getOptions(){
		return this.options;
	}

	/**
	 * 设置  options
	 *@param: options  options
	 */
	public void setOptions(String options){
		this.options = options;
	}
	/**
	 * 获取  score
	 *@return: Integer  score
	 */
	public Integer getScore(){
		return this.score;
	}

	/**
	 * 设置  score
	 *@param: score  score
	 */
	public void setScore(Integer score){
		this.score = score;
	}
	
}
