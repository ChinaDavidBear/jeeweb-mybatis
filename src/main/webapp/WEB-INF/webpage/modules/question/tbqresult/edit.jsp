<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/webpage/common/taglibs.jspf"%>
<!DOCTYPE html>
<html>
<head>
	<title>答题结果</title>
	<meta name="decorator" content="form"/>
	<html:css name="bootstrap-fileinput" />
	<html:css name="simditor" />
</head>

<body class="white-bg"  formid="tbQResultForm">
<form:form id="tbQResultForm" modelAttribute="data" method="post" class="form-horizontal">
	<form:hidden path="id"/>
	<table  class="table table-bordered  table-condensed dataTables-example dataTable no-footer">
		<tbody>
		<tr>
			<td  class="width-15 active text-right">
				<label><font color="red">*</font>标题:</label>
			</td>
			<td class="width-35">
				<form:input path="title" htmlEscape="false" class="form-control"  datatype="*"    />
				<label class="Validform_checktip"></label>
			</td>
			<td  class="width-15 active text-right">
				<label><font color="red">*</font>排序:</label>
			</td>
			<td class="width-35">
				<form:input path="sort" htmlEscape="false" class="form-control"  datatype="*"    />
				<label class="Validform_checktip"></label>
			</td>
		</tr>
		<tr>
			<td  class="width-15 active text-right">
				<label><font color="red">*</font>分值下限:</label>
			</td>
			<td class="width-35">
				<form:input path="low" htmlEscape="false" class="form-control"  datatype="*"    />
				<label class="Validform_checktip"></label>
			</td>
			<td  class="width-15 active text-right">
				<label><font color="red">*</font>分值上限:</label>
			</td>
			<td class="width-35">
				<form:input path="up" htmlEscape="false" class="form-control"  datatype="*"    />
				<label class="Validform_checktip"></label>
			</td>
		</tr>

		<tr>
			<td  class="width-15 active text-right">
				<label><font color="red">*</font>内容:</label>
			</td>
			<td class="width-85" colspan="3">
				<form:editor path="content" htmlEscape="false" class="form-control"  datatype="*"    />
				<label class="Validform_checktip"></label>
			</td>
		</tr>
		<tr>

			<td  class="width-15 active text-right">
				<label>备注信息:</label>
			</td>
			<td class="width-85" colspan="3">
				<form:input path="remarks" htmlEscape="false" class="form-control"      />
				<label class="Validform_checktip"></label>
			</td>
		</tr>
		</tbody>
	</table>
</form:form>
<html:js name="bootstrap-fileinput" />
<html:js name="simditor" />
</body>
</html>