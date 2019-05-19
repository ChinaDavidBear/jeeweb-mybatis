<%@include file="/WEB-INF/webpage/common/taglibs.jspf" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html auto_version="1558090048108"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>超准中医体质测试</title>
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
    <style>
        .col-xs-2-5 {
            width: 20%;
            float: left;
            position: relative;
            min-height: 1px;
        }
    </style>
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
</head>
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
        <li><a href="/front" title="论坛" class="tab_sep">论坛</a></li>
        <li>
            <a href="/front/check" title="体质检测" class="tab_sep  on">体质检测</a>
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
<div class="basicinfo-container" style="text-align: center;margin: 0 auto;">
    <header class="navbar navbar-static-top bs-docs-nav" id="top" role="banner">
        <div class="">
            <h1>超准中医体质测试</h1>
        </div>
    </header>
    <form action="/front/doCheck" id="questionForm" method="POST">

        <div class="container question-desc">
            <ul>
                <li>
                    超准体质测试，5 分钟从健康看你的性格！
                </li>
                <!--li> &nbsp; </li>
                <li><b>没有</b>：根本不，似乎没有发生过。</li>
                <li><b>很少</b>：好象有，不过很久没有发生过了。或者好像是偶然的事情，觉得没有必要放在心上。</li>
                <li><b>有时</b>：间或不定出现，好像也没有什么规律，我觉得有一点儿担心。</li>
                <li><b>经常</b>：是的，我有这个问题，好像已经摸到一些规律了。</li>
                <li><b>总是</b>：是的，这是一直以来困扰我的问题。</li-->
            </ul>
        </div>

        <div class="container question-container" id="questions">
            <div class="section_header_placeholder">
                <div class="section_header"><h2>根据最近三个月的体验和感觉回答</h2></div>
            </div>
            <c:forEach items="${list}" var="item" varStatus="status">
                <div class="question
                <c:if test="${status.index == 0}">
                active
                </c:if>
                <c:if test="${status.index != 0}">
                   disabled
                </c:if>

                    " question-no="${status.index+1}" question-tag="${status.index+1}"><h3><span
                        class="question-no"><b>${status.index+1}</b>/${fn:length(list)}</span><span class="real-title">${item.question.context}</span></h3>
                    <div class="question-options">
                        <input name="question[${status.index+1}]" type="hidden">
                        <ul class="row">
                            <c:forEach items="${item.options}" var="option" varStatus="optionStatus">
                            <li class="col-xs-2-5" value="${option.id}" score="${option.score}">${option.options}</li>
                            </c:forEach>
                        </ul>
                        </div>
                </div>
            </c:forEach>
        </div>

        <div class="container option-container">
            <input type="submit" class="hidden-button">
            <a href="javascript:void(0)" class="submit" id="submitButton"><img src="${staticPath}/front/submit.png"></a>
        </div>

        <div class="container option-statement">
            <h4>提交代表你已接受以下声明</h4>
            <p>本测试不作为诊断和治疗的依据，对于已经医生确诊的疾病，应按照医嘱积极治疗。所提及的内容仅作为生活保健的咨询建议。如遇不适请及时就医。<br><b>本测试不适用于孕妇和乳母</b></p>
        </div>


    </form>

    <script src="${staticPath}/front/jquery-1.11.0.min.js"></script>
    <script src="${staticPath}/front/jquery.tap.js"></script>

    <script type="text/javascript">

        function makeQuestionHtml(questionIndex, questionTagId, questionTitle, allQuestionCount, optionNum, b1, b2, b3, b4, b5) {
            if (optionNum == 2) {
                var optionHtml = '<ul class="row"><li class="col-xs-6" value="1">男</li><li class="col-xs-6" value="2">女</li></ul><input name="question[' + questionTagId + ']" type="hidden"/>';
            } else {
                var optionHtml = '<ul class="row"><li class="col-xs-2-5" value="1">' + b1 + '</li><li class="col-xs-2-5" value="2">' + b2 + '</li><li class="col-xs-2-5" value="3">' + b3 + '</li><li class="col-xs-2-5" value="4">' + b4 + '</li><li class="col-xs-2-5" value="5">' + b5 + '</li></ul><input name="question[' + questionTagId + ']"  type="hidden"/>';
            }
            ;

            var html = '<div class="question disabled" question-no="' + questionIndex + '" question-tag="' + questionTagId + '"><h3><span class="question-no"><b>' + questionIndex + '</b>/' + allQuestionCount + '</span><span class="real-title">' + questionTitle + '</span></h3><div class="question-options">' + optionHtml + '</div></div>';

            return html;
        }

        function addSectionHeader(title, extraTag) {
            return '<div class="section_header_placeholder" ' + extraTag + '><div class="section_header"><h2>' + title + '</h2></div></div>';
        }

        function in_array(needle, haystack) {
            for (var i in haystack) {
                if (haystack[i] == needle) return true;
            }
            return false;
        }

        function setQuestionVisibilityByTags(tags, isShow) {
            $(tags).each(function (i) {
                if (isShow) {
                    $('div[question-tag="' + tags[i] + '"]').show();
                } else {
                    $('div[question-tag="' + tags[i] + '"]').find('input').removeAttr('checked');
                    $('div[question-tag="' + tags[i] + '"]').find('li').removeClass('active');
                    $('div[question-tag="' + tags[i] + '"]').hide().attr('class', 'question disabled');
                }
            });
        }

        $(function () {

            currentQuestion = 1;
            allQuestionNum = ${fn:length(list)};

            //CLICK OPTION!
            $(".question-options li").bind('click', function () {
                //控制题目显示状态
                if ($(this).parents('.question').attr('question-no') == currentQuestion) {
                    $(this).parents('.question').attr('class', 'question normal');

                    if (currentQuestion < allQuestionNum) {
                        $('#questions').find('[question-no="' + (currentQuestion + 1) + '"]').attr('class', 'question active');
                        $(window).scrollTop($('#questions').find('[question-no="' + (currentQuestion + 1) + '"]').offset().top - 60);
                        $('body').find('.section_header').removeClass('fixed');
                        $(this).parents('.question').prev('.section_header').addClass('fixed');
                    }
                    ;

                    currentQuestion++;
                }
                ;

                //操作选项
                var thisTag = $(this).parents('.question').attr('question-tag');
                $('input[name="question[' + thisTag + ']"]').attr("value", $(this).attr("score"));
                $(this).parent().find('li').removeClass('active');
                $(this).addClass('active');


                maximumOffset = $('.basicinfo-container').offset().top - 70;
            });

            $(".question-options li").on('tap', function () {
                $(this).css('background', '#E57990');
            });

            $(".dontknow").on('tap', function () {
                $(this).css('background', '#AAA');
            });

            //提交，检测表单完成情况
            $('#submitButton').click(function () {
                var alreadyTested = $('#questions').find('input[value]').length;
                var isErrorComing = false;

                //答题完成度检测
                if (alreadyTested < allQuestionNum && !isErrorComing) {
                    if (alreadyTested == 0) {
                        $(window).scrollTop($('.question:first').offset().top);
                        alert('请先完成测试再提交！');
                    } else {
                        $(window).scrollTop($('#questions').find('.question[question-no="' + (currentQuestion - 1) + '"]').offset().top);
                        alert('你还有题目尚未回答！');
                    }
                    isErrorComing = true;
                }

                if (isErrorComing == true) {
                    return false;
                }

                //if everything is fine, submit the form.
                $('#questionForm').appendTo($("body")).submit();
            });

            minimumOffset = $('.section_header').first().offset().top;

            $(window).scroll(function (event) {
                maximumOffset = $('.option-container').offset().top - 70;
                var currentScrollTop = $(this).scrollTop();
                if (currentScrollTop < minimumOffset || currentScrollTop > maximumOffset) {
                    $('body').find('.section_header').removeClass('fixed');
                } else {
                    $('.section_header:visible').each(function () {
                        if (currentScrollTop >= $(this).offset().top) {
                            if (!$(this).hasClass('fixed')) {
                                $('body').find('.section_header').removeClass('fixed');
                                $(this).addClass('fixed');
                            }
                        }
                    });
                }
            });
        });

    </script>
</div>
</body>
</html>