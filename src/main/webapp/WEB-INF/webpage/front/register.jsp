<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/webpage/common/taglibs.jspf"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <title><spring:message code="sys.site.title" arguments="${platformName}"/></title>
    <meta name="keywords" content="<spring:message code="sys.site.keywords" arguments="${platformName}"/>">
    <meta name="description" content="<spring:message code="sys.site.description" arguments="${platformName}"/>">
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="Thu, 19 Nov 1900 08:52:00 GMT">
    <!--Loading bootstrap css-->
    <link type="text/css" rel="stylesheet" href="${staticPath}/vendors/jquery-ui-1.10.4.custom/css/ui-lightness/jquery-ui-1.10.4.custom.min.css">
    <html:css  name="favicon,bootstrap,font-awesome,animate,pace,iCheck,toastr,bootstrapvalidator"/>
    <!--Loading style-->
    <link type="text/css" rel="stylesheet" href="${staticPath}/uadmin/css/themes/style1/orange-blue.css" class="default-style">
    <link type="text/css" rel="stylesheet" href="${staticPath}/uadmin/css/themes/style1/orange-blue.css" id="theme-change" class="style-change color-change">
    <link type="text/css" rel="stylesheet" href="${staticPath}/uadmin/css/style-responsive.css"> 
</head>

<body id="signin-page">
    <div class="page-form">
        <form  id="registerForm"  method="post" class="form" action="/front/doRegister">
            <div class="header-content">
                <h1>会员注册</h1>
            </div>
            <div class="body-content">
                <div class="form-group">
                    <div class="input-icon right"><i class="fa fa-user"></i>
                        <input name="name" class="form-control" placeholder="昵称" required="">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-icon right"><i class="fa fa-user"></i>
                        <input name="account" class="form-control" placeholder="账号" required="">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-icon right"><i class="fa fa-key"></i>
                        <input type="password" name="password" class="form-control" placeholder="<spring:message code="sys.login.password.placeholder"/>" required="">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-icon right"><i class="fa fa-envelope-open"></i>
                        <input name="email" class="form-control" placeholder="邮箱" required="">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-icon right">
                        性别：
                        <select name="sex" class="form-control"  required="">
                            <option value="1">男</option>
                            <option value="2">女</option>
                        </select>
                    </div>
                </div>
                <div class="form-group" style="margin-top:10px;">
<%--	                <div class="pull-left">--%>
<%--	                    <div class="checkbox-list">--%>
<%--	                        <label><input id="rememberMe"  type="checkbox" name="rememberMe" value="1" class="i-checks">&nbsp; <spring:message code="sys.login.rememberMe"/></label>--%>
<%--	                    </div>--%>
<%--	                </div>--%>
	                <div style="text-align: center">
	                    <button type="submit" style="width: 100%;" class="btn btn-success">
                            提交注册&nbsp;
	                        <i class="fa fa-chevron-circle-right"></i>
	                    </button>
	                </div>
	            </div>
                <div class="clearfix"></div>
                <hr>
                <p><a href="/front/login">已有账号</a> </p>
            </div>
        </form>
    </div>
    
    <html:js  name="jquery,bootstrap,iCheck,bootstrap-hover-dropdown,toastr,bootstrapvalidator"/>
    <script src="${staticPath}/uadmin/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="${staticPath}/uadmin/js/jquery-ui.js"></script>
    <script src="${staticPath}/uadmin/js/html5shiv.js"></script>
    <script src="${staticPath}/uadmin/js/respond.min.js"></script>
    <script src="${staticPath}/uadmin/js/jquery.menu.js"></script>

     <script type="text/javascript">
		$(document).ready(function() {
		     $("#registerForm").bootstrapValidator();
		     var error="${error}";
		     if (error!="")
		     {
		    	 showToast(error,"error");
		     }
		});
		
		function showToast(msg,shortCutFunction)
		 {
			 toastr.options = {
					  "closeButton": true,
					  "debug": false,
					  "progressBar": true,
					  "positionClass": "toast-bottom-right",
					  "onclick": null,
					  "showDuration": "400",
					  "hideDuration": "1000",
					  "timeOut": "7000",
					  "extendedTimeOut": "1000",
					  "showEasing": "swing",
					  "hideEasing": "linear",
					  "showMethod": "fadeIn",
					  "hideMethod": "fadeOut"
			}
			toastr[shortCutFunction](msg,"提示");
		 }
	</script>
</body>

</html>