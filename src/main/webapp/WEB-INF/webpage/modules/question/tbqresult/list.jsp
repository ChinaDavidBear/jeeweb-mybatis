<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/webpage/common/taglibs.jspf"%>
<!DOCTYPE html>
<html>
<head>
  <title>答题结果列表</title>
  <meta name="decorator" content="list"/>
</head>
<body title="答题结果">
<grid:grid id="tbQResultGridId" url="${adminPath}/question/tbqresult/ajaxList" sortname="sort">
	<grid:column label="sys.common.key" hidden="true"   name="id" width="100"/>
	<grid:column label="sys.common.opt"  name="opt" formatter="button" width="100"/>
	<grid:button groupname="opt" function="delete" />
    <grid:column label="标题"  name="title"  query="true"  queryMode="input"  condition="like" />
    <grid:column label="分值下限"  name="low" query="true"  queryMode="input"  condition="ge"/>
    <grid:column label="分值上限"  name="up" query="true"  queryMode="input"  condition="le"/>
    <grid:column label="排序"  name="sort" />
    <grid:column label="删除标记（0：正常；1：删除）"  name="delFlag" />
	<grid:toolbar function="create"/>
	<grid:toolbar function="update"/>
	<grid:toolbar function="delete"/>
	
	<grid:toolbar function="search"/>
	<grid:toolbar function="reset"/>
</grid:grid>
</body>
</html>