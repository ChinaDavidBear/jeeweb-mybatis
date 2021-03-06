package cn.jeeweb.modules.question.question.entity;

import cn.jeeweb.core.common.entity.AbstractEntity;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import cn.jeeweb.modules.sys.entity.User;
import java.util.Date;

/**   
 * @Title: 答题结果
 * @Description: 答题结果
 * @author David
 * @date 2019-05-14 15:15:54
 * @version V1.0   
 *
 */
@TableName("tb_q_result")
@SuppressWarnings("serial")
public class TbQResult extends AbstractEntity<String> {

    /**字段主键*/
    @TableId(value = "id", type = IdType.UUID)
	private String id;
    /**标题*/
    @TableField(value = "title")
	private String title;
    /**内容*/
    @TableField(value = "content")
	private String content;
    /**分值下限*/
    @TableField(value = "low")
	private Integer low;
    /**分值上限*/
    @TableField(value = "up")
	private Integer up;
    /**排序*/
    @TableField(value = "sort")
	private Integer sort;
    /**创建者*/
    @TableField(value = "create_by",el="createBy.id",fill = FieldFill.INSERT)
	private User createBy;
    /**创建时间*/
    @TableField(value = "create_date",fill = FieldFill.INSERT)
	private Date createDate;
    /**更新者*/
    @TableField(value = "update_by",el="updateBy.id",fill = FieldFill.UPDATE)
	private User updateBy;
    /**更新时间*/
    @TableField(value = "update_date",fill = FieldFill.UPDATE)
	private Date updateDate;
    /**删除标记（0：正常；1：删除）*/
    @TableField(value = "del_flag")
	private String delFlag;
    /**备注信息*/
    @TableField(value = "remarks")
	private String remarks;
	
	/**
	 * 获取  id
	 *@return: String  字段主键
	 */
	public String getId(){
		return this.id;
	}

	/**
	 * 设置  id
	 *@param: id  字段主键
	 */
	public void setId(String id){
		this.id = id;
	}
	/**
	 * 获取  title
	 *@return: String  标题
	 */
	public String getTitle(){
		return this.title;
	}

	/**
	 * 设置  title
	 *@param: title  标题
	 */
	public void setTitle(String title){
		this.title = title;
	}
	/**
	 * 获取  content
	 *@return: String  内容
	 */
	public String getContent(){
		return this.content;
	}

	/**
	 * 设置  content
	 *@param: content  内容
	 */
	public void setContent(String content){
		this.content = content;
	}
	/**
	 * 获取  low
	 *@return: Integer  分值下限
	 */
	public Integer getLow(){
		return this.low;
	}

	/**
	 * 设置  low
	 *@param: low  分值下限
	 */
	public void setLow(Integer low){
		this.low = low;
	}
	/**
	 * 获取  up
	 *@return: Integer  分值上限
	 */
	public Integer getUp(){
		return this.up;
	}

	/**
	 * 设置  up
	 *@param: up  分值上限
	 */
	public void setUp(Integer up){
		this.up = up;
	}
	/**
	 * 获取  sort
	 *@return: Integer  排序
	 */
	public Integer getSort(){
		return this.sort;
	}

	/**
	 * 设置  sort
	 *@param: sort  排序
	 */
	public void setSort(Integer sort){
		this.sort = sort;
	}
	/**
	 * 获取  createBy
	 *@return: User  创建者
	 */
	public User getCreateBy(){
		return this.createBy;
	}

	/**
	 * 设置  createBy
	 *@param: createBy  创建者
	 */
	public void setCreateBy(User createBy){
		this.createBy = createBy;
	}
	/**
	 * 获取  createDate
	 *@return: Date  创建时间
	 */
	public Date getCreateDate(){
		return this.createDate;
	}

	/**
	 * 设置  createDate
	 *@param: createDate  创建时间
	 */
	public void setCreateDate(Date createDate){
		this.createDate = createDate;
	}
	/**
	 * 获取  updateBy
	 *@return: User  更新者
	 */
	public User getUpdateBy(){
		return this.updateBy;
	}

	/**
	 * 设置  updateBy
	 *@param: updateBy  更新者
	 */
	public void setUpdateBy(User updateBy){
		this.updateBy = updateBy;
	}
	/**
	 * 获取  updateDate
	 *@return: Date  更新时间
	 */
	public Date getUpdateDate(){
		return this.updateDate;
	}

	/**
	 * 设置  updateDate
	 *@param: updateDate  更新时间
	 */
	public void setUpdateDate(Date updateDate){
		this.updateDate = updateDate;
	}
	/**
	 * 获取  delFlag
	 *@return: String  删除标记（0：正常；1：删除）
	 */
	public String getDelFlag(){
		return this.delFlag;
	}

	/**
	 * 设置  delFlag
	 *@param: delFlag  删除标记（0：正常；1：删除）
	 */
	public void setDelFlag(String delFlag){
		this.delFlag = delFlag;
	}
	/**
	 * 获取  remarks
	 *@return: String  备注信息
	 */
	public String getRemarks(){
		return this.remarks;
	}

	/**
	 * 设置  remarks
	 *@param: remarks  备注信息
	 */
	public void setRemarks(String remarks){
		this.remarks = remarks;
	}
	
}
