package cn.jeeweb.modules.question.question.entity;

import cn.jeeweb.core.common.entity.AbstractEntity;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import java.util.Date;
import cn.jeeweb.modules.sys.entity.User;

/**   
 * @Title: 会员管理
 * @Description: 会员管理
 * @author David
 * @date 2019-05-14 16:21:28
 * @version V1.0   
 *
 */
@TableName("tb_q_member")
@SuppressWarnings("serial")
public class TbQMember extends AbstractEntity<String> {

    /**字段主键*/
    @TableId(value = "id", type = IdType.UUID)
	private String id;
    /**会员名称*/
    @TableField(value = "name")
	private String name;
    /**会员账号*/
    @TableField(value = "account")
	private String account;
    /**会员密码*/
    @TableField(value = "password")
	private String password;
    /**会员生日*/
    @TableField(value = "birthday")
	private Date birthday;
    /**性别 */
    @TableField(value = "sex")
	private Integer sex;
    /**邮箱*/
    @TableField(value = "email")
	private String email;
    /**得分*/
    @TableField(value = "score")
	private String score;
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
	 * 获取  name
	 *@return: String  会员名称
	 */
	public String getName(){
		return this.name;
	}

	/**
	 * 设置  name
	 *@param: name  会员名称
	 */
	public void setName(String name){
		this.name = name;
	}
	/**
	 * 获取  account
	 *@return: String  会员账号
	 */
	public String getAccount(){
		return this.account;
	}

	/**
	 * 设置  account
	 *@param: account  会员账号
	 */
	public void setAccount(String account){
		this.account = account;
	}
	/**
	 * 获取  password
	 *@return: String  会员密码
	 */
	public String getPassword(){
		return this.password;
	}

	/**
	 * 设置  password
	 *@param: password  会员密码
	 */
	public void setPassword(String password){
		this.password = password;
	}
	/**
	 * 获取  birthday
	 *@return: Date  会员生日
	 */
	public Date getBirthday(){
		return this.birthday;
	}

	/**
	 * 设置  birthday
	 *@param: birthday  会员生日
	 */
	public void setBirthday(Date birthday){
		this.birthday = birthday;
	}
	/**
	 * 获取  sex
	 *@return: Integer  性别 
	 */
	public Integer getSex(){
		return this.sex;
	}

	/**
	 * 设置  sex
	 *@param: sex  性别 
	 */
	public void setSex(Integer sex){
		this.sex = sex;
	}
	/**
	 * 获取  email
	 *@return: String  邮箱
	 */
	public String getEmail(){
		return this.email;
	}

	/**
	 * 设置  email
	 *@param: email  邮箱
	 */
	public void setEmail(String email){
		this.email = email;
	}
	/**
	 * 获取  score
	 *@return: String  得分
	 */
	public String getScore(){
		return this.score;
	}

	/**
	 * 设置  score
	 *@param: score  得分
	 */
	public void setScore(String score){
		this.score = score;
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
