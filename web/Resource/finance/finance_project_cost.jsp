<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*,com.iwork.bean.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - Flot图表</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="../css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="../css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="../css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="../css/animate.min.css" rel="stylesheet">
    <link href="../css/style.min.css?v=4.0.0" rel="stylesheet">
    <base target="_blank">
    <style type="text/css">
        #box {

            height: 300px;
            overflow-x: hidden;
            overflow-y: scroll;
            line-height: 30px;
            text-align: center;
        }

        #box::-webkit-scrollbar {
            display: none;
        }
    </style>
</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">


    <div class="ibox " id="profile">
        <div class="ibox-title">
            <h4>项目流水</h4>
        </div>
        <div class="ibox-content">
            <div class="btn-group hidden-xs" id="toolbar_finance" role="group">
                <button type="button" class="btn btn-outline btn-default">
                    <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                </button>
                <button type="button" class="btn btn-outline btn-default">
                    <i class="glyphicon glyphicon-heart" aria-hidden="true"></i>
                </button>
                <button type="button" class="btn btn-outline btn-default" onclick="deleteProjectCost()">
                    <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
                </button>

            </div>
            <table id="project_cost">
                <tbody>
                <c:forEach items="${ProjectCosts}" var="cost">
                    <tr data-id="${cost.projectAccountId}" <%--onclick="modifyRowData(this)"--%>>
                        <td></td>
                        <td>${cost.projectAccountId}</td>
                        <td>${cost.user.userName}</td>
                        <td>${cost.projectCostTime}</td>
                        <td>${cost.projectCostAmount}</td>
                        <td>${cost.projectCostContext}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script src="../js/jquery.min.js?v=2.1.4"></script>
<script src="../js/bootstrap.min.js?v=3.3.5"></script>

<script src="../js/content.min.js?v=1.0.0"></script>
<script src="../js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="../js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="../js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>

<script src="../js/plugins/layer/layer.js"></script>
<script src="../js/json2.js"></script>
<script src="../iwork_js/finance.js"></script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
<script>
    var datenow = new Date(+new Date() + 8 * 3600 * 1000).toISOString().replace(/T/g, ' ').replace(/\.[\d]{3}Z/, '');//格式2019-07-18 11:40:31
    var date = new Date();
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var day = date.getDate();
    if (month < 10) {
        month = "0" + month;
    }
    if (day < 10) {
        day = "0" + day;
    }//年月日

    $("#toolbar_finance").children().eq(0).click(function () {
        layer.open({
            type: 1,
            maxmin: true,
            title: '项目流水',
            fix: false,
            shadeClose: true,
            closeBtn: 0,
            area: ['600px', '300px'],
            content: $('#create_finance'),//这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
            success: function () {
                $("#create_time").val(year + month + day);
            }
        });
    });
    $(function () {
        //1.初始化Table
        var oTable = new TableInit();

        oTable.Init();
        s.Init();

        //2.初始化Button的点击事件
        /* var oButtonInit = new ButtonInit();
        oButtonInit.Init(); */

    });
    var TableInit = function () {
        var oTableInit = new Object();

        //初始化Table
        oTableInit.Init = function () {
            $("#project_cost").bootstrapTable({
                url: '/VenderManager/TradeList',     //请求后台的URL（*）
                method: 'get',           //请求方式（*）
                toolbar: '#toolbar_finance',        //工具按钮用哪个容器
                striped: true,           //是否显示行间隔色
                cache: false,            //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
                pagination: false,          //是否显示分页（*）
                sortable: false,           //是否启用排序
                sortOrder: "asc",          //排序方式
                queryParams: oTableInit.queryParams,//传递参数（*）
                sidePagination: "server",      //分页方式：client客户端分页，server服务端分页（*）
                pageNumber: 1,            //初始化加载第一页，默认第一页
                pageSize: 50,            //每页的记录行数（*）
                pageList: [10, 25, 50, 100],    //可供选择的每页的行数（*）
                search: true,
                showRefresh: true,
                clickToSelect: true,
                strictSearch: true,
                clickToSelect: true,        //是否启用点击选中行
                uniqueId: "id",           //每一行的唯一标识，一般为主键列
                cardView: false,          //是否显示详细视图
                detailView: false,          //是否显示父子表
                columns: [{
                    field: 'checkbox',
                    checkbox: true
                }, {
                    field: 'finance_id',
                    title: '流水号'
                }, {
                    field: 'create_user_id',
                    title: '创建人'
                }, {
                    field: 'create_time',
                    title: '创建时间'
                }, {
                    field: 'expense',
                    title: '金额'
                }, {
                    field: 'project_context',
                    title: '备注'
                },]
            });
        };

        //得到查询的参数
        oTableInit.queryParams = function (params) {
            var temp = {  //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                limit: params.limit,  //页面大小
                offset: params.offset, //页码
                sdate: $("#stratTime").val(),
                edate: $("#endTime").val(),
                sellerid: $("#sellerid").val(),
                orderid: $("#orderid").val(),
                CardNumber: $("#CardNumber").val(),
                maxrows: params.limit,
                pageindex: params.pageNumber,
                portid: $("#portid").val(),
                CardNumber: $("#CardNumber").val(),
                tradetype: $('input:radio[name="tradetype"]:checked').val(),
                success: $('input:radio[name="success"]:checked').val(),
            };
            return temp;
        };
        return oTableInit;
    };

</script>
</body>
<div hidden="true" class="wrapper wrapper-content " id="create_finance">
    <div class="row">
        <form class="form-horizontal">
    </div>
    <div class="row">
        <div class="form-group">
            <label class="col-sm-2 control-label">流水号：</label>

            <div class="col-sm-10">
                <input id="finance_id" name="title_note" type="text" placeholder="流水号" class="form-control">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label class="col-sm-2 control-label">创建人：</label>

            <div class="col-sm-10">
                <input id="finance_creater" name="title_note" type="text" placeholder="创建人" class="form-control">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label class="col-sm-2 control-label">创建时间：</label>

            <div class="col-sm-10">
                <input id="create_time" name="title_note" type="text" class="form-control">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label class="col-sm-2 control-label">金额：</label>

            <div class="col-sm-10">
                <input id="finance_cost" name="title_note" type="text" placeholder="金额" class="form-control">
            </div>
        </div>
    </div>
    <div class="row">

        <div class="form-group">
            <label class="col-sm-2 control-label">备注：</label>

            <div class="col-sm-10">
                <input id="finance_type" class="form-control" name="content" type="text"/>
            </div>
        </div>
    </div>
    <div class="row">

    </div>
    <div class="row">
        <div class="form-group ">
            <div class="col-sm-offset-2 col-sm-10 bottom">
                <a id="create" class="btn btn-sm center btn-white">取消</a>
                <a id="create" class="btn btn-sm center btn-white">修改</a>
                <a id="create" class="btn btn-sm center btn-white" onclick="addProjectCost()">创建</a>
            </div>
        </div>
    </div>
    </form>

</div>
</html>