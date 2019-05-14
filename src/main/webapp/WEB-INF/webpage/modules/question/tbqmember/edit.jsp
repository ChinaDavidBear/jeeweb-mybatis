<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/webpage/common/taglibs.jspf"%>
<!DOCTYPE html>
<html>
<head>
    <title>会员管理</title>
    <meta name="decorator" content="form"/>
    <html:css name="bootstrap-fileinput" />
    <html:css name="simditor" />
</head>

<body class="white-bg"  formid="tbQMemberForm">
    <form:form id="tbQMemberForm" modelAttribute="data" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<table  class="table table-bordered  table-condensed dataTables-example dataTable no-footer">
		   <tbody>
				<tr>
					<td  class="width-15 active text-right">	
		              <label><font color="red">*</font>会员名称:</label>
		            </td>
					<td class="width-35">
						<form:input path="name" htmlEscape="false" class="form-control"  datatype="*"    />
						<label class="Validform_checktip"></label>
					</td>
					<td  class="width-15 active text-right">	
		              <label><font color="red">*</font>会员账号:</label>
		            </td>
					<td class="width-35">
						<form:input path="account" htmlEscape="false" class="form-control"  datatype="*"    />
						<label class="Validform_checktip"></label>
					</td>
				</tr>
				<tr>
					<td  class="width-15 active text-right">	
		              <label><font color="red">*</font>会员密码:</label>
		            </td>
					<td class="width-35">
						<form:input path="password" htmlEscape="false" class="form-control"      />
						<label class="Validform_checktip"></label>
					</td>
					<td  class="width-15 active text-right">	
		              <label><font color="red">*</font>会员生日:</label>
		            </td>
					<td class="width-35">
						<form:input path="birthday" htmlEscape="false" class="form-control layer-date" placeholder="YYYY-MM-DD hh:mm:ss" onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})"   datatype="*"    />
						<label class="Validform_checktip"></label>
					</td>
				</tr>
				<tr>
					<td  class="width-15 active text-right">	
		              <label><font color="red">*</font>性别 :</label>
		            </td>
					<td class="width-35">
						<form:input path="sex" htmlEscape="false" class="form-control"  datatype="*"    />
						<label class="Validform_checktip"></label>
					</td>
					<td  class="width-15 active text-right">	
		              <label><font color="red">*</font>邮箱:</label>
		            </td>
					<td class="width-35">
						<form:input path="email" htmlEscape="false" class="form-control"  datatype="e"    />
						<label class="Validform_checktip"></label>
					</td>
				</tr>
				<tr>
					<td  class="width-15 active text-right">	
		              <label>备注信息:</label>
		            </td>
					<td class="width-35">
						<form:input path="remarks" htmlEscape="false" class="form-control"      />
						<label class="Validform_checktip"></label>
					</td>
					<td class="width-15 active text-right"></td>
		   			<td class="width-35" ></td>
		  		</tr>
		      
		   </tbody>
		</table>   
	</form:form>
<html:js name="bootstrap-fileinput" />
<html:js name="simditor" />
</body>
</html>