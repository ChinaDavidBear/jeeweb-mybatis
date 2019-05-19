<%@include file="/WEB-INF/webpage/common/taglibs.jspf" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html auto_version="1558090048108"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>体质检测</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="description" content="体质检测">
    <meta name="keywords" content="体质检测">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${staticPath}/front/page-index-screen_51b1169.css">
    <link rel="stylesheet" href="${staticPath}/front/bootstrap.min.css">
    <link rel="stylesheet" href="${staticPath}/front/app.min.css">
    <link rel="stylesheet" href="${staticPath}/front/cli_global.css">
    <link rel="stylesheet" href="${staticPath}/front/font-awesome.min.css">
    <link rel="stylesheet" href="${staticPath}/front/clicon.css">
    <style type="text/css">
        .__consult_wrapper {
            position: fixed;
            left: 50%;
            top: 30%;
            z-index: 1050;
            width: 494px;
            transform: translate(-50%);
            box-shadow: 0 0 3px rgba(0, 0, 0, 0.2);
            border-radius: 4px;
            background: white;
            transition: all .3s;
            display: none;
            opacity: 0;
        }

        .__consult_wrapper .__consult_modal .__consult_modal_header {
            padding: 17px 20px;
            padding-bottom: 15px;
            border-bottom: 1px solid #f1f2f3;
        }

        .__consult_wrapper .__consult_modal .__consult_modal_header .__consult_modal_header_title {
            float: left;
            font-size: 18px;
            color: rgba(0, 0, 0, 0.87);
        }

        .__consult_wrapper .__consult_modal .__consult_modal_header .__consult_modal_header_ops {
            float: right;
            position: relative;
            top: 2px;
        }

        .__consult_wrapper .__consult_modal .__consult_modal_header .__consult_modal_header_ops img {
            width: 12px;
            height: 12px;
            display: inline-block;
            cursor: pointer;
        }

        .__consult_wrapper .__consult_modal .__consult_modal_header::after {
            content: ' ';
            clear: both;
            height: 0;
            overflow: hidden;
            display: block;
        }

        .__consult_wrapper .__consult_modal .__consult_modal_body ul {
            list-style-type: none;
            margin: 0;
            padding: 50px 0;
        }

        .__consult_wrapper .__consult_modal .__consult_modal_body ul .__consult_modal_body_way_item {
            color: #666;
            float: left;
            width: 33.333%;
            cursor: pointer;
            position: relative;
            text-align: center;
        }

        .__consult_wrapper .__consult_modal .__consult_modal_body ul .__consult_modal_body_way_item .__consult_modal_body_way_item_icon {
            display: block;
            width: 100%;
            height: 40px;
        }

        .__consult_wrapper .__consult_modal .__consult_modal_body ul .__consult_modal_body_way_item .__consult_modal_body_way_item_icon img {
            display: block;
            width: 44px;
            margin: 0 auto;
            position: relative;
        }

        .__consult_wrapper .__consult_modal .__consult_modal_body ul .__consult_modal_body_way_item .__consult_modal_body_way_item_icon .__consult_modal_body_way_item_icon_hl {
            display: none;
        }

        .__consult_wrapper .__consult_modal .__consult_modal_body ul .__consult_modal_body_way_item .__consult_modal_body_way_item_title {
            font-size: 14px;
            padding-top: 10px;
            display: block;
        }

        .__consult_wrapper .__consult_modal .__consult_modal_body ul .__consult_modal_body_way_item .__consult_modal_body_way_item_down {
            position: absolute;
            left: 50%;
            transform: translate(-50%);
            top: -120%;
            width: 100%;
            opacity: 0;
            transition: all .3s;
            margin-top: 10px;
            display: none;
        }

        .__consult_wrapper .__consult_modal .__consult_modal_body ul .__consult_modal_body_way_item .__consult_modal_body_way_item_down .__consult_modal_body_way_item_down_img {
            position: relative;
            width: 70%;
            margin: 0 auto;
            border: 4px solid #f9f9f9;
            display: inline-block;
            border-radius: 4px;
            background: #f9f9f9;
        }

        .__consult_wrapper .__consult_modal .__consult_modal_body ul .__consult_modal_body_way_item .__consult_modal_body_way_item_down .__consult_modal_body_way_item_down_img img {
            width: 100%;
            display: block;
        }

        .__consult_wrapper .__consult_modal .__consult_modal_body ul .__consult_modal_body_way_item .__consult_modal_body_way_item_down .__consult_modal_body_way_item_down_img::after {
            position: absolute;
            content: ' ';
            display: block;
            margin-top: 4px;
            border-width: 8px 8px 0;
            border-style: solid;
            left: 50%;
            transform: translateX(-50%);
            border-color: #f9f9f9 transparent transparent;
        }

        .__consult_wrapper .__consult_modal .__consult_modal_body ul .__consult_modal_body_way_item .__consult_modal_body_way_item_down p {
            position: relative;
            margin: 0;
            color: rgba(33, 33, 33, 0.87);
            font-size: 14px;
            margin: 0 auto;
            min-width: 118px;
            line-height: 30px;
            background: #f9f9f9;
            border-radius: 4px;
        }

        .__consult_wrapper .__consult_modal .__consult_modal_body ul .__consult_modal_body_way_item .__consult_modal_body_way_item_down p::after {
            position: absolute;
            content: ' ';
            display: block;
            border-width: 8px 8px 0;
            border-style: solid;
            left: 50%;
            transform: translateX(-50%);
            border-color: #f9f9f9 transparent transparent;
            /*灰 透明 透明 */
        }

        .__consult_wrapper .__consult_modal .__consult_modal_body ul .__consult_modal_body_way_item:hover {
            color: rgba(76, 175, 80, 0.87);
        }

        .__consult_wrapper .__consult_modal .__consult_modal_body ul::after {
            content: ' ';
            clear: both;
            height: 0;
            overflow: hidden;
            display: block;
        }

        .__consult_wrapper .__consult_modal .__consult_modal_body .__consult_modal_body_work_time {
            color: rgba(153, 153, 153, 0.87);
            display: block;
            text-align: center;
            font-size: 12px;
            margin-top: 16px;
            margin-bottom: 20px;
        }

        .__consult_overlay {
            position: fixed;
            z-index: 1049;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.3);
            transition: all .3s;
            display: none;
            opacity: 0;
        }
    </style>

    <link rel="stylesheet" href="//static.clewm.net/cli/flatkit/assets/bootstrap/dist/css/bootstrapieV2.css">
    <link rel="stylesheet" href="${staticPath}/front/capacity-nav-info-common.min.css">
    <link rel="stylesheet" id="support-plugins-stylesheet-v3" href="${staticPath}/front/slide_top_index_v3.css">
</head>
<body>
<link rel="stylesheet" href="${staticPath}/front/browserTip.css">
<link rel="stylesheet" href="${staticPath}/front/cli_head_top.css">
<style>
    .top-menu-solution .linkCotent {
        position: absolute;
        top: 54px;
        left: -14px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        z-index: 1000;
        display: none;
    }

    .top-menu-solution:hover .linkCotent {
        display: block;
    }

    .top-menu-solution .buildingLinks, .top-menu-solution .equipmentLinks {
        height: 270px;
    }

    .top-menu-solution .compositeLinks {
        height: 270px;
    }
</style>
<div class="clearfix"></div>
<link rel="stylesheet" href="${staticPath}/front/cli_head_navigation.css">
<style>
    .cli_nav .sub_nav li a svg {
        vertical-align: middle;
        width: 14px;
        height: 14px;
        position: relative;
        top: -1px;
    }

    .cli_nav .sub_nav li a svg path {
        fill: #777;
    }

    .cli_nav .sub_nav li a:hover svg path {
        fill: #4caf50;
    }

    @media only screen and (max-width: 840px) {
        .cli_nav .sub_nav .right-nav-items {
            float: none !important;
            display: inline-block;
            white-space: nowrap;
        }
    }
</style>
<div class="cli_nav nav_gray scene_mobile clearfix" style="border-top: 2px solid #4caf50;padding-bottom: 20px;
    border-bottom: 2px solid #ccc;">
    <ul class="sub_nav sub_mobile_nav cli_head_container clearfix">
        <li><a href="/front" title="论坛" class="tab_sep on">论坛</a></li>
        <li>
            <a href="/front/check" title="体质检测" class="tab_sep ">体质检测</a>
        </li>

        <div class="pull-right right-nav-items">
            <c:if test="${not empty sessionScope.FRONT_USER}">
                <li class="pull-left"><a href="/front/user" title="个人信息"
                                         class="tab_sep m-r-0">
                    <svg viewBox="0 0 1024 1024" fill="currentColor" aria-hidden="true">
                        <path d="M848 474H550V152h-76v322H176c-4.4 0-8 3.6-8 8v60c0 4.4 3.6 8 8 8h298v322h76V550h298c4.4 0 8-3.6 8-8v-60c0-4.4-3.6-8-8-8z"></path>
                    </svg>
                    个人信息
                </a></li>
                <li class="pull-left"><a href="/front/loginout" title="退出登录"
                                         class="tab_sep m-r-0 p-r-0 [navigation_deqr]">
                    <svg viewBox="0 0 1024 1024">
                        <path d="M928.728 469.333c17.262 0 31.272 12.772 31.272 28.51 0 15.736-14.01 28.509-31.272 28.509H95.272C78.01 526.352 64 513.579 64 497.842c0-15.737 14.01-28.509 31.272-28.509h833.456zM373.465 831.118c17.591 0 31.868 14.562 31.868 32.376 0 17.943-14.277 32.506-31.868 32.506H244.72c-76.228 0-138.052-63.062-138.052-140.687V629.84c0-17.944 14.277-32.507 31.868-32.507 17.59 0 31.868 14.563 31.868 32.507v125.473c0 41.738 33.397 75.805 74.316 75.805h128.746z m512-233.785c17.591 0 31.868 14.557 31.868 32.492v125.42c0 77.59-61.951 140.755-138.052 140.755H650.535c-17.591 0-31.868-14.556-31.868-32.492s14.277-32.492 31.868-32.492H779.28c40.919 0 74.316-34.052 74.316-75.771v-125.42c0-17.935 14.277-32.492 31.868-32.492z m-234.93-404.349c-17.591 0-31.74-14.556-31.868-32.492 0-17.936 14.277-32.492 31.868-32.492H779.28c76.101 0 138.052 63.164 138.052 140.755v125.42c0 17.935-14.277 32.492-31.868 32.492-17.59 0-31.868-14.557-31.868-32.492v-125.42c0-41.72-33.397-75.771-74.316-75.771H650.535z m-512 233.683c-17.591 0-31.868-14.433-31.868-32.376V268.817c0-77.625 61.951-140.817 138.052-140.817h128.746c17.591 0 31.868 14.563 31.868 32.506 0 17.944-14.277 32.506-31.868 32.506H244.72c-40.919 0-74.316 34.067-74.316 75.805V394.16c0 17.944-14.277 32.507-31.868 32.507z"></path>
                    </svg>

                    退出登录
                </a></li>
            </c:if>
            <c:if test="${empty sessionScope.FRONT_USER}">
                <li class="pull-left"><a href="/front/login" title="登录"
                                         class="tab_sep m-r-0">
                    <svg viewBox="0 0 1024 1024">
                        <path d="M928.728 469.333c17.262 0 31.272 12.772 31.272 28.51 0 15.736-14.01 28.509-31.272 28.509H95.272C78.01 526.352 64 513.579 64 497.842c0-15.737 14.01-28.509 31.272-28.509h833.456zM373.465 831.118c17.591 0 31.868 14.562 31.868 32.376 0 17.943-14.277 32.506-31.868 32.506H244.72c-76.228 0-138.052-63.062-138.052-140.687V629.84c0-17.944 14.277-32.507 31.868-32.507 17.59 0 31.868 14.563 31.868 32.507v125.473c0 41.738 33.397 75.805 74.316 75.805h128.746z m512-233.785c17.591 0 31.868 14.557 31.868 32.492v125.42c0 77.59-61.951 140.755-138.052 140.755H650.535c-17.591 0-31.868-14.556-31.868-32.492s14.277-32.492 31.868-32.492H779.28c40.919 0 74.316-34.052 74.316-75.771v-125.42c0-17.935 14.277-32.492 31.868-32.492z m-234.93-404.349c-17.591 0-31.74-14.556-31.868-32.492 0-17.936 14.277-32.492 31.868-32.492H779.28c76.101 0 138.052 63.164 138.052 140.755v125.42c0 17.935-14.277 32.492-31.868 32.492-17.59 0-31.868-14.557-31.868-32.492v-125.42c0-41.72-33.397-75.771-74.316-75.771H650.535z m-512 233.683c-17.591 0-31.868-14.433-31.868-32.376V268.817c0-77.625 61.951-140.817 138.052-140.817h128.746c17.591 0 31.868 14.563 31.868 32.506 0 17.944-14.277 32.506-31.868 32.506H244.72c-40.919 0-74.316 34.067-74.316 75.805V394.16c0 17.944-14.277 32.507-31.868 32.507z"></path>
                    </svg>
                    登录
                </a></li>
                <li class="pull-left"><a href="/front/register" title="注册"
                                         class="tab_sep m-r-0 p-r-0 [navigation_deqr]">
                    <svg viewBox="0 0 1024 1024" fill="currentColor" aria-hidden="true">
                        <path d="M848 474H550V152h-76v322H176c-4.4 0-8 3.6-8 8v60c0 4.4 3.6 8 8 8h298v322h76V550h298c4.4 0 8-3.6 8-8v-60c0-4.4-3.6-8-8-8z"></path>
                    </svg>
                    注册
                </a></li>
            </c:if>
        </div>
    </ul>
</div>
<div class="wordpress-article" style="text-align: center;">
    <div id="wordpress_article_box" class="wordpress-article-box inline" style="text-align: left;width: 50%;">
        <div id="wait_now" class="wait-now" style="display: none;"></div>
        <div id="wordpress_article_info_box">
            <h3><span style="line-height:3;">最新发贴</span>  <br></h3>
            <c:forEach items="${tbForumPosts}" var="item">
                <div>
                    <p line="x2fw" linespacing="115" style="width: 65%;float: left;">
                        <a href="/front/content?id=${item.id}" target="_blank" url="${item.id}">
                            <span style="line-height:3;">
                                <span style="font-size:16px;border-bottom: 1px solid;">● ${item.title}</span>
                            </span>
                        </a>
                    </p>
                    <p style="width: 35%;float: right;">
                            <span style="line-height:3;">
                                <span style="font-size:12px;color:#999;border-bottom: 1px solid;">发布时间：${item.createDate}</span>
                            </span>
                    </p>
                </div>
            </c:forEach>
        </div>
        <div style="margin-top: 30px;">
            <form  id="loginform"  method="get" class="form" action="/front/addbbs">

                <div class="body-content">
                    <div class="form-group">
                        <div class="input-icon right"><i class="fa fa-user"></i>
                            <input name="title" class="form-control" placeholder="请填写标题" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon right"><i class="fa fa-user"></i>
                            <input name="content" class="form-control" placeholder="填写帖子内容" required="">
                        </div>
                    </div>
                    <div class="form-group" style="margin-top:10px;">
                        <c:if test="${not empty sessionScope.FRONT_USER}">
                            <div style="text-align: center">
                                <button type="submit" style="width: 100%;" class="btn btn-success">发布新帖子
                                    <i class="fa fa-chevron-circle-right"></i>
                                </button>
                            </div>
                        </c:if>
                        <c:if test="${empty sessionScope.FRONT_USER}">
                            <div style="text-align: center">
                                登录后才可以发布新帖子
                            </div>
                        </c:if>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>