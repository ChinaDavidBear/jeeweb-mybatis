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
    <link rel="stylesheet" href="${staticPath}/front/tz.css">
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

    <link rel="stylesheet" href="${staticPath}/front/capacity-nav-info-common.min.css">
    <link rel="stylesheet" id="support-plugins-stylesheet-v3" href="${staticPath}/front/slide_top_index_v3.css">
    <style type="text/css">
        body {
            background: #FFF !important;
        }

        .small-tip {
            font-size: 14px;
        }

        .tab-list, .tab-list > li {
            margin: 0;
            list-style: none !important;
            padding: 0;
        }

        .tab-list {
            overflow: hidden;
            margin: 0;
            padding: 0;
        }

        .content .tab-list > li {
            margin-left: 0;
            float: left;
            border: 1px solid #299939;
            border-radius: 25px;
            margin-right: 10px;
            margin-bottom: 10px;
        }

        .tab-list > li > a {
            display: inline-block;
            box-sizing: border-box;
            padding: 5px 20px;
            font-size: 16px;
            color: #299939;
            text-decoration: none;
        }

        .tab-list > .active {
            background: #299939;
        }

        .tab-list > .active > a {
            color: #fff;
            text-decoration: none;
        }

        .tab-list-conent {
            padding: 15px;
            border-radius: 10px;
        }

        .tab-list-conent {
            border: 1px solid #e5e5e5;
        }

        .tab-list-conent-title {
            font-size: 16px;
            color: #333;
            margin-top: 0;
            margin-bottom: 15px;
        }

        .tab-lsit-conent-title-style {
            display: inline-block;
            width: 8px;
            height: 8px;
            border-radius: 50%;
            background: #299939;
            margin-right: 5px;
            margin-bottom: 2px;
        }

        .tab-list-conent-txt {
            font-size: 14px;
            color: #555;
            line-height: 28px;
            padding-bottom: 10px;
            border-bottom: 1px solid #e5e5e5;
        }

        .tab-list-conent-txt:last-of-type {
            border-bottom: 0;
            margin-bottom: 0px;
        }

        .tab-list-conent-goods {
            position: relative;
            display: block;
            overflow: hidden;
        }

        .tab-list-conent-goods-img {
            width: 106px;
            margin-top: -14%;
        }

        .bubble-list-goods-right {
            float: left;
            margin-left: 15px;
            width: 62%;
        }

        .bubble-list-goods-right > h3 {
            margin: 0;
            font-size: 14px;
            text-align: left;
            line-height: 18px;
            font-weight: 500;
            color: #333;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            height: auto;
            border: 0;
            padding: 0;
        }

        .tab-list-conent-right-symptom {
            overflow: hidden;
            width: 100%;
            margin-top: 10px;
            height: 23px;
        }

        .tab-list-conent-right-symptom > div {
            float: left;
            font-size: 12px;
            color: #299939;
            padding: 0 10px;
            border: 1px solid #299939;
            border-radius: 5px;
            margin-right: 5px;
            margin-bottom: 20px;
        }

        .bubble-list-goods-right-Price {
            margin-top: 12px;
            overflow: hidden;
        }

        .jiawei {
            float: left;
            font-size: 12px;
            color: #333;
            margin-right: 2px;
            display: inline-block;
        }

        .bubble-list-goods-right-Price > span {
            float: left;
            font-size: 16px;
            color: #333;
            line-height: 16px;
        }

        .bubbel-div {
            position: absolute;
            z-index: 9999;
            right: 0;
            bottom: 0;
        }

        .bubble-icon {
            display: block;
            width: 20px;
            height: 20px;
            background: url(https://img.huofar.com/life/icon/cart.png) no-repeat;
            background-size: cover;
        }

        @media (max-width: 375px) {
            .bubble-list-goods-right {
                width: 58%;
            }
        }

        @media (max-width: 360px) {
            .bubble-list-goods-right {
                width: 55%;
            }
        }

        @media (max-width: 320px) {
            .bubble-list-goods-right {
                width: 48%;
            }
        }

        .typeinfo-text {
            border-bottom: 10px solid #f7f7f7;
        }

        @media (max-width: 768px) {
            .typeinfo-desc {
                margin: 15px 25px 15px 25px !important;
            }
        }

        .desc-list h3 {
            color: #333;
            font-size: 16px;
        }
        .desc-list h2 {
            font-size: 22px !important;
        }
        @media (max-width: 768px) {
            .desc-list ul li {
                margin-left: 0px;
            }

            .desc-list .content {
                padding: 10px 15px;
            }

            .typeinfo-desc {
                margin: 15px 15px 15px 15px !important;
            }

            .test-intro {
                margin: 25px 15px 10px 15px;
            }
        }

        .desc-list .item.active h3 em {
            background: url(https://img.huofar.com/webapp/tizhi/images/shang1@3x.png) no-repeat;
            background-size: 100%;
        }

        .desc-list h3 em {
            background: url(https://img.huofar.com/webapp/tizhi/images/xia1@3x.png) no-repeat;
            background-size: 100%;
        }

        .result-container {
            padding: 0 0 50px 0;
        }

        .desc-list ul li.bold-li {
            margin-left: 0px !important;
            list-style:disc;
        }

        .desc-list h3 {
            padding-left: 15px;
            font-size: 14px;
        }
    </style>

    <script src="${staticPath}/front/jquery-1.11.0.min.js"></script>
    <script src="${staticPath}/front/bootstrap.min.js"></script>
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
<div>
    <header class="navbar navbar-static-top bs-docs-nav" id="top" role="banner">
        <div class="container">
            <h1>我的体质测试结果</h1>
        </div>
    </header>

    <div style="display:none;">
        <img src="${staticPath}/front/huofar_leaf_white.png">
    </div>

    <div class="container result-container">

        <!--结果类型-->
        <div class="row typeinfo">
            <div class="col-xs-12 typeinfo-text">
                <div class="test-intro">
                    <h4>我的体质是</h4>
                    <h1>${list[0].title}</h1>
                    <h3>
                        <br>
                    </h3>
                </div>
                <p class="typeinfo-desc">
                    ${list[0].content}
                </p>
            </div>
        </div>

        <div class="row gallry">

        </div>

        <!--结果解释-->
        <div class="row desc-list">
            <c:forEach items="${list}" var="item" varStatus="status">
                <c:if test="${status.index > 0}">
                    <div class="item">
                        <h3><img src="${staticPath}/front/sym-icon.png" width="20" height="20"
                                 style="margin-right: 16px;">${item.title}<em></em></h3>
                        <div class="content">
                                ${item.content}
                        </div>
                    </div>
                </c:if>

            </c:forEach>
        </div>

    </div>
    <script type="text/javascript">
        $(function () {
            $(".typeinfo-desc").html( $(".typeinfo-desc").text());


            $.each($(".content"), function(i,val){
                $(this).html( $(this).text());
            });
            $('.desc-list').find('h3').click(function () {
                if ($(this).parent().hasClass('active'))
                    $(this).parent().removeClass('active');
                else
                    $(this).parent().addClass('active');
            });

            $('.share-to-weixin').click(function () {
                $('#shareAlertView').css('height', $('body').height()).show();
            });

            $('#shareAlertView').click(function () {
                $('#shareAlertView').fadeOut('fast');
            });
        });
    </script>
</body>
</html>