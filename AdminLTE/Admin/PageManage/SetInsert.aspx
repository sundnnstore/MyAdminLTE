﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetInsert.aspx.cs" Inherits="AdminLTE.Admin.PageManage.SetInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="../../Script/AdminLTE-2.4.2/bower_components/bootstrap/dist/css/bootstrap.min.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../../Script/AdminLTE-2.4.2/bower_components/font-awesome/css/font-awesome.min.css" />
    <!-- Ionicons -->
    <link rel="stylesheet" href="../../Script/AdminLTE-2.4.2/bower_components/Ionicons/css/ionicons.min.css" />
    <!-- DataTables -->
    <link rel="stylesheet" href="../../Script/AdminLTE-2.4.2/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="../../Script/AdminLTE-2.4.2/dist/css/AdminLTE.min.css" />
    <!-- bootstrap datepicker -->
    <link rel="stylesheet" href="../../Script/AdminLTE-2.4.2/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins
    folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../../Script/AdminLTE-2.4.2/dist/css/skins/_all-skins.min.css" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic" />
</head>
<body>
    <form id="FromPage">
        <section class="content" style="margin-top: -13px;">
            <div class="row">
                <table id="tableInfo" class="table" style="margin: 0px; margin-top: -3px; border-left: 1px solid #ddd; border-right: 1px solid #ddd;">
                    <tbody>
                        <tr>
                            <td style="width: 160px; border: none; float: right;">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-info" onclick="bntOrderClick()">自动排序</button>
                                    <button type="button" class="btn btn-info" onclick="bntSaveClick(this)">保&nbsp;存</button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table id="example" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>字段称</th>
                            <th>显示名称</th>
                            <th>方式呈现</th>
                            <th>是否启用</th>
                            <th>排序</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%=GetSetListHtml(ItemGUID) %>
                    </tbody>
                </table>
            </div>
        </section>
    </form>
    <!-- jQuery 3 -->
    <script src="../../Script/AdminLTE-2.4.2/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="../../Script/AdminLTE-2.4.2/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- DataTables -->
    <script src="../../Script/AdminLTE-2.4.2/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="../../Script/AdminLTE-2.4.2/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <!-- SlimScroll -->
    <script src="../../Script/AdminLTE-2.4.2/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="../../Script/AdminLTE-2.4.2/bower_components/fastclick/lib/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="../../Script/AdminLTE-2.4.2/dist/js/adminlte.min.js"></script>
    <script src="../../Script/js/cyfs.js"></script>
    <script src="../../Script/layer-v3.1.0/layer/layer.js"></script>
    <script>
         function bntOrderClick() {
            loadding('正在处理，请稍等...');
            var param = {};
            param.gettype = "SetOrder";
            $.ajax({
                type: "post",
                url: GetPageName(),
                cache: false,  //禁用缓存
                data: param,  //传入组装的参数
                dataType: "text",
                success: function (result) {
                    debugger;
                    if (result == "True") {
                        layer.msg('操作成功！', {
                            icon: 1, time: 1500, end: function () {
                                location.reload();
                            }
                        });
                    }
                }
            });
        }
       function bntSaveClick(obj) {
            loadding('正在保存，请稍等...', obj);
            var values = $("#example").find("input,select").serializeArray();
            //封装请求参数
            var param = {};
            param.gettype = "SetData";
            param.values = JSON.stringify(values);   
            $.ajax({
                type: "post",
                url: GetPageName(),
                cache: false,  //禁用缓存
                data: param,  //传入组装的参数
                dataType: "text",
                success: function (result) {
                    if (result == "True") {
                        layer.msg('操作成功！', {
                            icon: 1, time: 1500, end: function () {
                                location.reload();
                            }
                        });
                    }
                }
            });
        }
    </script>
</body>
