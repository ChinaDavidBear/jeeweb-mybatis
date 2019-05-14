<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/webpage/common/taglibs.jspf"%>
<!DOCTYPE html>
<html>
<head>
  <title>会员管理列表</title>
  <meta name="decorator" content="list"/>
</head>
<body title="会员管理">
<grid:grid id="tbQMemberGridId" url="${adminPath}/question/tbqmember/ajaxList">
	<grid:column label="sys.common.key" hidden="true"   name="id" width="100"/>
	<grid:column label="sys.common.opt"  name="opt" formatter="button" width="100"/>
	<grid:button groupname="opt" function="delete" />
    <grid:column label="会员名称"  name="name"  query="true"  queryMode="input"  condition="like" />
    <grid:column label="会员账号"  name="account"  query="true"  queryMode="input"  condition="eq" />
    <grid:column label="会员生日"  name="birthday" />
    <grid:column label="性别 "  name="sex"  query="true"  queryMode="input"  condition="eq" />
    <grid:column label="邮箱"  name="email" />
    <grid:column label="得分"  name="score" />
    <grid:column label="创建时间"  name="createDate" />
	<grid:toolbar function="create"/>
	<grid:toolbar function="update"/>
	<grid:toolbar function="delete"/>
	
	<grid:toolbar function="search"/>
	<grid:toolbar function="reset"/>
</grid:grid>
</body>
</html>