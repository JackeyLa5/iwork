<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*,com.iwork.bean.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>H+ 后台主题UI框架 - 项目详情</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="Resource/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="Resource/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">

    <link href="Resource/css/animate.min.css" rel="stylesheet">
    <link href="Resource/css/style.min.css?v=4.0.0" rel="stylesheet"><base target="_blank">

</head>

<body class="gray-bg">
    <div class="row">
       
            <div class="wrapper wrapper-content animated fadeInUp">
                <div class="ibox">
                    <div class="ibox-content">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="m-b-md">
                                    <a href="project_detail.html#" class="btn btn-white btn-xs pull-right">编辑项目</a>
                                    <h2>阿里巴巴集团</h2>
                                </div>
                                <dl class="dl-horizontal">
                                    <dt>状态：</dt>
                                    <dd>
                                        <c:choose>
                                        <c:when test="${work.workstatus==1}">
										    <span class="label label-primary">进行中</span>
                                        </c:when>
                                        <c:when test="${work.workstatus==2}">
                                            <span class="label label-primary">已结束</span>
                                        </c:when>
                                        </c:choose>
										<span  class="label label-warning hidden">取消</span>

                                    </dd>
                                </dl>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-5">
                                <dl class="dl-horizontal">

                                    <dt>负责人：</dt>
                                    <dd><input class="btn-link" style="color: #000000;" type="text" value="-zihan" disabled="true" /></dd>
                                    <dt>消息：</dt>
                                    <dd><input class="btn-link" style="color: #000000;" type="text" value="162" disabled="true" /></dd>
                                    <dt>客户：</dt>
                                    <dd><input class="btn-link" style="color: #000000;" type="text" disabled="true" value="百度"  />
                                    </dd>
                                    <dt>版本：</dt>
                                    <dd><input class="btn-link" style="color: #000000;" type="text" value="v1.4.2" disabled="true" /></dd>
                                </dl>
                            </div>
                            <div class="col-sm-7" id="cluster_info">
                                <dl class="dl-horizontal">

                                    <dt>最后更新：</dt>
                                    <dd>2019年 7月24日 22:03</dd>
                                    <dt>创建于：</dt>
                                    <dd>${work.workstarttime}</dd>
                                    <dt>团队成员：</dt>
                                    <dd class="project-people">
                                       <div id="member_list">
                                           <c:forEach items="${work.memberlist}" var="member">
                                               <span style="margin-right: 5px;">${member}</span>
                                           </c:forEach>
										   <a id="add_member"  class="btn btn-circle btn-default hidden"><i class="glyphicon glyphicon-plus"></i></a>
									   </div>
                                     
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
                                            <div style="width: ${work.workprogress}%;" class="progress-bar"></div>
                                        </div>
                                        <small>当前已完成项目总进度的 <input type="text" class="btn-link" style="color: #000000;" type="text" disabled="true"; value="${work.workprogress}%"></small>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                        <div class="row m-t-sm">
                            <div class="col-sm-12">
                               <h4>项目描述</h4>
                                       
                                       <p id="work_detail" class="small">
                                          <textarea disabled="true" rows="10" cols="20" style="width: 100%;">${work.workdescription}
                                       </textarea>
									   </p>
                                                                           
                                   </div>
                               </div>                             
						    </div>
                        </div>
                    </div>
                </div>
            </div>
      
    </div>
    <script src="Resource/js/jquery.min.js?v=2.1.4"></script>
    <script src="Resource/js/bootstrap.min.js?v=3.3.5"></script>
    <script src="Resource/js/content.min.js?v=1.0.0"></script>
    <script>
        $(document).ready(function(){$("#loading-example-btn").click(function(){btn=$(this);simpleLoad(btn,true);simpleLoad(btn,false)})});function simpleLoad(btn,state){if(state){btn.children().addClass("fa-spin");btn.contents().last().replaceWith(" Loading")}else{setTimeout(function(){btn.children().removeClass("fa-spin");btn.contents().last().replaceWith(" Refresh")},2000)}};
    </script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>

</body>

</html>