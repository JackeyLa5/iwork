<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ page import="java.util.*,com.iwork.bean.*" pageEncoding="utf-8" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>H+ 后台主题UI框架 - 项目详情</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet">

    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min.css?v=4.0.0" rel="stylesheet"><base target="_blank">

    <!-- Sweet Alert -->
    <link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="row">
        <div class="col-sm-12">
            <div class="wrapper wrapper-content animated fadeInUp">
                <div class="ibox">
                    <div class="ibox-content">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="m-b-md">
                                    <h2>iWork Cloud团队</h2>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-5">
								<dl class="dl-horizontal">
								    <dt>状态：</dt>
								    <dd><span class="label label-primary">${projectStatus}</span>
								    </dd>
								</dl>
                                <dl class="dl-horizontal">

                                    <dt>项目经理：</dt>
                                    <dd>${project.user.userName}</dd>
                                    <dt>项目主题：</dt>
                                    <dd>${project.projectTitle}</dd>
                                    <dt>项目类型：</dt>
                                    <dd>${project.project_type.projectTypeName}</dd>
                                    <dt>项目考核</dt>
                                    <dd><span class="label label-primary">${project.projectReview}</span>
                                </dl>
                            </div>
                            <div class="col-sm-7" id="cluster_info">
								<dl class="dl-horizontal">
								    <dt>审批：</dt>
								    <dd><span class="label label-primary">${project.projectReview}</span>
								    </dd>
								</dl>
                                <dl class="dl-horizontal">

                                    <dt>项目竞标：</dt>
                                    <dd>${project.projectBidding}</dd>
                                    <dt>创建于：</dt>
                                    <dd>${project.createTime}</dd>
                                    <dt>团队成员：</dt>
                                    <dd class="project-people">
                                        <a href="project_detail.jsp">
                                            <img alt="image" class="img-circle" src="img/a3.jpg">
                                        </a>
                                        <a href="project_detail.jsp">
                                            <img alt="image" class="img-circle" src="img/a1.jpg">
                                        </a>
                                        <a href="project_detail.jsp">
                                            <img alt="image" class="img-circle" src="img/a2.jpg">
                                        </a>
                                        <a href="project_detail.jsp">
                                            <img alt="image" class="img-circle" src="img/a4.jpg">
                                        </a>
                                        <a href="project_detail.jsp">
                                            <img alt="image" class="img-circle" src="img/a5.jpg">
                                        </a>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <dl class="dl-horizontal">
                                    <dt>当前进度</dt>
                                    <dd>
                                        <div class="progress progress-striped active m-b-sm">
                                            <div style="width:${project.projectProgress}%" class="progress-bar"></div>
                                        </div>
                                        <small>当前已完成项目总进度的 <strong>${project.projectProgress}%</strong></small>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                        <div class="row m-t-sm">
                            <div class="col-sm-12">
                                <div class="panel blank-panel">
                                    <div class="panel-heading">
                                        <div class="panel-options">
                                            <ul class="nav nav-tabs">
                                                <li><a href="project_detail.jsp#tab-1" data-toggle="tab">团队消息</a>
                                                </li>
                                                <li class=""><a href="project_detail.jsp#tab-2" data-toggle="tab">最后更新</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="panel-body">

                                        <div class="tab-content">
                                            <div class="tab-pane active" id="tab-1">
                                                <div class="feed-activity-list">
                                                    <div class="feed-element">
                                                        <a href="profile.html#" class="pull-left">
                                                            <img alt="image" class="img-circle" src="img/a1.jpg">
                                                        </a>
                                                        <div class="media-body ">
                                                            <small class="pull-right text-navy">1天前</small>
                                                            <strong>奔波儿灞</strong> 关注了 <strong>灞波儿奔</strong>.
                                                            <br>
                                                            <small class="text-muted">54分钟前 来自 皮皮时光机</small>
                                                            <div class="actions">
                                                                <a class="btn btn-xs btn-white"><i class="fa fa-thumbs-up"></i> 赞 </a>
                                                                <a class="btn btn-xs btn-danger"><i class="fa fa-heart"></i> 收藏</a>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="feed-element">
                                                        <a href="profile.html#" class="pull-left">
                                                            <img alt="image" class="img-circle" src="img/profile.jpg">
                                                        </a>
                                                        <div class="media-body ">
                                                            <small class="pull-right">5分钟前</small>
                                                            <strong>作家崔成浩</strong> 发布了一篇文章
                                                            <br>
                                                            <small class="text-muted">今天 10:20 来自 iPhone 6 Plus</small>

                                                        </div>
                                                    </div>

                                                    <div class="feed-element">
                                                        <a href="profile.html#" class="pull-left">
                                                            <img alt="image" class="img-circle" src="img/a2.jpg">
                                                        </a>
                                                        <div class="media-body ">
                                                            <small class="pull-right">2小时前</small>
                                                            <strong>作家崔成浩</strong> 抽奖中了20万
                                                            <br>
                                                            <small class="text-muted">今天 09:27 来自 Koryolink iPhone</small>
                                                            <div class="well">
                                                                抽奖，人民币2000元，从转发这个微博的粉丝中抽取一人。11月16日平台开奖。随手一转，万一中了呢？
                                                            </div>
                                                            <div class="pull-right">
                                                                <a class="btn btn-xs btn-white"><i class="fa fa-thumbs-up"></i> 赞 </a>
                                                                <a class="btn btn-xs btn-white"><i class="fa fa-heart"></i> 收藏</a>
                                                                <a class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> 评论</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="feed-element">
                                                        <a href="profile.html#" class="pull-left">
                                                            <img alt="image" class="img-circle" src="img/a3.jpg">
                                                        </a>
                                                        <div class="media-body ">
                                                            <small class="pull-right">2天前</small>
                                                            <strong>天猫</strong> 上传了2张图片
                                                            <br>
                                                            <small class="text-muted">11月7日 11:56 来自 微博 weibo.com</small>
                                                            <div class="photos">
                                                                <a target="_blank" href="http://24.media.tumblr.com/20a9c501846f50c1271210639987000f/tumblr_n4vje69pJm1st5lhmo1_1280.jpg">
                                                                    <img alt="image" class="feed-photo" src="img/p1.jpg">
                                                                </a>
                                                                <a target="_blank" href="http://37.media.tumblr.com/9afe602b3e624aff6681b0b51f5a062b/tumblr_n4ef69szs71st5lhmo1_1280.jpg">
                                                                    <img alt="image" class="feed-photo" src="img/p3.jpg">
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="feed-element">
                                                        <a href="profile.html#" class="pull-left">
                                                            <img alt="image" class="img-circle" src="img/a4.jpg">
                                                        </a>
                                                        <div class="media-body ">
                                                            <small class="pull-right text-navy">5小时前</small>
                                                            <strong>在水一方Y</strong> 关注了 <strong>那二十年的单身</strong>.
                                                            <br>
                                                            <small class="text-muted">今天 10:39 来自 iPhone客户端</small>
                                                            <div class="actions">
                                                                <a class="btn btn-xs btn-white"><i class="fa fa-thumbs-up"></i> 赞 </a>
                                                                <a class="btn btn-xs btn-white"><i class="fa fa-heart"></i> 收藏</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="tab-pane" id="tab-2">

                                                <table class="table table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th>状态</th>
                                                            <th>标题</th>
                                                            <th>开始时间</th>
                                                            <th>结束时间</th>
                                                            <th>说明</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <span class="label label-primary"><i class="fa fa-check"></i> 已完成</span>
                                                            </td>
                                                            <td>
                                                                文档在线预览功能
                                                            </td>
                                                            <td>
                                                                11月7日 22:03
                                                            </td>
                                                            <td>
                                                                11月7日 20:11
                                                            </td>
                                                            <td>
                                                                <p class="small">
                                                                    已经测试通过
                                                                </p>
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <span class="label label-primary"><i class="fa fa-check"></i> 解决中</span>
                                                            </td>
                                                            <td>
                                                                会员登录
                                                            </td>
                                                            <td>
                                                                11月7日 22:03
                                                            </td>
                                                            <td>
                                                                11月7日 20:11
                                                            </td>
                                                            <td>
                                                                <p class="small">
                                                                    测试中
                                                                </p>
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <span class="label label-primary"><i class="fa fa-check"></i> 解决中</span>
                                                            </td>
                                                            <td>
                                                                会员积分
                                                            </td>
                                                            <td>
                                                                11月7日 22:03
                                                            </td>
                                                            <td>
                                                                11月7日 20:11
                                                            </td>
                                                            <td>
                                                                <p class="small">
                                                                    未测试
                                                                </p>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.5"></script>
    <script src="js/content.min.js?v=1.0.0"></script>

    <script src="js/json2.js"></script>
    <script src="js/plugins/sweetalert/sweetalert.min.js"></script>

    <script src="iwork_js/projects.js"></script>
    <script src="iwork_js/timeControl.js"></script>

    <script>
        $(document).ready(function(){
            $("#loading-example-btn").click(function(){
                btn=$(this);simpleLoad(btn,true);
                simpleLoad(btn,false)
            })
        });
        function simpleLoad(btn,state){
            if(state){
                btn.children().addClass("fa-spin");
                btn.contents().last().replaceWith(" Loading")
            }else{
                setTimeout(
                    function(){
                        btn.children().removeClass("fa-spin");
                        btn.contents().last().replaceWith(" Refresh")
                    },2000
                )
            }
        };
    </script>

    <script>
        $(document).ready(function () {

        })
    </script>

    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>

</body>

</html>