<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>H+ 后台主题UI框架 - 日历</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="../css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="../css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
	<link href="../css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="../css/plugins/iCheck/custom.css" rel="stylesheet">

    <link href="../css/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
    <link href="../css/plugins/fullcalendar/fullcalendar.print.css" rel="stylesheet">

    <link href="../css/animate.min.css" rel="stylesheet">
    <link href="../css/style.min.css?v=4.0.0" rel="stylesheet"><base target="_blank">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content">
        <div class="row animated fadeInDown">
            <div class="ibox-content">
                <div class="row m-b-sm m-t-sm">
                    <div class="col-md-1">
                        <button type="button" id="loading-example-btn" class="btn btn-white btn-sm"><i class="fa fa-refresh"></i> 刷新</button>
                    </div>
                    <div class="col-md-11">
                        <div class="input-group">
                            <input type="text" placeholder="请搜索信息" class="input-sm form-control">
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-sm btn-primary"> 搜索</button>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="project-list">
                    <table class="table table-hover">
                        <tbody id="tbody-meeting-data">
                        <c:forEach var="m" items="${meetings}">
                            <tr>
                                <td name="project-title" class="project-title">
                                    <a href="project_detail.html">发布人</a>
                                    <br />
                                    <small>${m.user.userName}</small>
                                </td>
                                <td name="project-title" class="project-title">
                                    <a href="project_detail.html">发布时间</a>
                                    <br />
                                    <small>${m.meetingPublishTime}</small>
                                </td>
                                <td name="project-title" class="project-title">
                                    <a href="project_detail.html">会议开始时间</a>
                                    <br />
                                    <small>${m.meetingStart}</small>
                                </td>
                                <td name="project-title" class="project-title">
                                    <a href="project_detail.html">会议结束时间</a>
                                    <br />
                                    <small>${m.meetingEnd}</small>
                                </td>
                                <td name="project-title" class="project-title">
                                    <a href="project_detail.html">会议室</a>
                                    <br />
                                    <small>${m.meetAddress}</small>
                                </td>
                                <td name="project-title" class="project-title">
                                    <a href="project_detail.html">会议主题</a>
                                    <br />
                                    <small>${m.meetContext}</small>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <script src="../js/jquery.min.js?v=2.1.4"></script>
    <script src="../js/bootstrap.min.js?v=3.3.5"></script>
    <script src="../js/content.min.js?v=1.0.0"></script>
    <script src="../js/jquery-ui.custom.min.js"></script>
	
    <script src="../js/plugins/iCheck/icheck.min.js"></script>
	
    <script src="../js/plugins/fullcalendar/fullcalendar.min.js"></script>
	
	<script src="../js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script src="../js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script src="../js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<script src="../js/demo/bootstrap-table-demo.min.js"></script>

	<script src="../js/datetimepicker/bootstrap-datetimepicker.js"></script>
	<script src='../js/datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js'></script>
	<script src="../js/plugins/layer/layer.js"></script>

    <script src=../iwork_js/timeControl.js"></script>

    <script>
        $(document).ready(function() {
            $("#loading-example-btn").click(function() {
                btn = $(this);
                simpleLoad(btn, true);
                simpleLoad(btn, false)
            })
        });

        function simpleLoad(btn, state) {
            if (state) {
                btn.children().addClass("fa-spin");
                btn.contents().last().replaceWith(" Loading")
            } else {
                setTimeout(function() {
                    btn.children().removeClass("fa-spin");
                    btn.contents().last().replaceWith(" Refresh")
                }, 2000)
            }
        };
    </script>
	
	
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>