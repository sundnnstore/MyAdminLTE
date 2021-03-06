﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TempPage.aspx.cs" Inherits="AdminLTE.Admin.TempPage" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title><%=tableModel.TableModel.Title %></title>
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
    <link href="../../Script/js/cyfs.css" rel="stylesheet" />
</head>
<body>
    <form id="PageForm">
        <section class="content" style="margin-top: -13px;">
            <div data-resple="iswhere" class="box box-solid">
                <div class="box-header with-border">
                    <h3 class="box-title">高级查询</h3>
                    <div class="box-tools">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i data-resple="isplus" class=""></i>
                        </button>
                    </div>
                </div>
                <div class="box box-danger">
                    <div class="box-body" id="SelectWhereFrom"><%=tableModel.SetStrWhereHtml() %></div>
                </div>
                <!-- /.box-body -->
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="box box-primary">
                        <div class="box-body">	
                            <div id="ltlbnts"  class="pull-left" style="height:24px;" ><%=tableModel.SetBntHtml() %></div>
                            <div id="ltlSum" class="pull-right"  style="height:24px;">
                            </div>
                            <table id="example" class="table table-bordered table-hover"><%=tableModel.GetTableHtml() %></table>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </section>
        <div id="LayerOpenHtml" class="hidden">
            <div id="LayerOpenHtmlFrom">
                <div class="form-group" style="display: -webkit-box; margin-top: 10px;">
                    <label for="Title" class="col-sm-2 control-label text-right" lay-verify="email" style="padding: 0px; line-height: 32px;">标题：</label>
                    <div class="col-sm-10">
                        <input type="text" name="Title" class="form-control" placeholder="标题" value="" />
                    </div>
                </div>
                <div class="form-group" style="display: -webkit-box;">
                    <label for="FileName" class="col-sm-2 control-label text-right" style="padding: 0px; line-height: 32px;">页面名称：</label>
                    <div class="col-sm-10">
                        <input type="text" name="FileName" class="form-control" placeholder="页面名称" value="" />
                    </div>
                </div>
                <div class="form-group" style="display: -webkit-box; margin-top: 10px;">
                    <label for="TableName" class="col-sm-2 control-label text-right" style="padding: 0px; line-height: 32px;">数据表：</label>
                    <div class="col-sm-10">
                        <input type="text" name="TableName" class="form-control" placeholder="数据表" value="" />
                    </div>
                </div>
                <div class="form-group" style="display: -webkit-box;">
                    <label for="SQL" class="col-sm-2 control-label text-right" style="padding: 0px;">SQL：</label>
                    <div class="col-sm-10">
                        <textarea name="" class="form-control" placeholder="SQL" rows="3"></textarea>
                    </div>
                </div>
                <div class="form-group" style="display: -webkit-box;">
                    <label for="Note" class="col-sm-2 control-label text-right" style="padding: 0px;">备注：</label>
                    <div class="col-sm-10">
                        <textarea name="Note" class="form-control" placeholder="备注" rows="3"></textarea>
                    </div>
                </div>
                <div class="form-group text-center">
                    <button type="button" class="btn btn-success" onclick="BntSaveFromData()">保　存</button>
                </div>
            </div>
        </div>
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
    <script src="../../Script/layer-v3.1.0/layer/layer.js"></script>
    <script src="../../Script/js/cyfs.js"></script>
    <script>
        $(function () {
            PageConfig.IsPlus = "<%=tableModel.TableModel.IsPlus.ToString()%>";
            PageConfig.IsWhere = "<%=tableModel.TableModel.IsWhere.ToString()%>";
            PageConfig.IsChoice = "<%=tableModel.TableModel.IsChoice.ToString()%>";
            PageConfig.Columns = eval(<%=tableModel.ColumnsJson%>);
            setTimeout(getJsonData("GetDateList"), 50);
        })
        //layer 弹层
        var Index;
        function LayerOpenHtml(title, value) {
            var showHtml = $("#LayerOpenHtml").html();
            //页面层
            Index = layer.open({
                id: value,
                type: 1,
                title: title,
                value: value,
                skin: 'layui-layer-rim', //加上边框
                area: ['620px', '450px'], //宽高
                content: showHtml,
                success: function () {
                    if (value != undefined && value != null && value != "") {
                        var param = {};
                        param.Gettype = 'GetDataView';
                        param.ChoiceValue = value;
                        $.ajax({
                            type: "GET",
                            url: GetPageName(),
                            cache: false,  //禁用缓存
                            data: param,  //传入组装的参数
                            dataType: "json",
                            async: false,
                            success: function (result) {
                                if (result != null && result != "") {
                                    var json = result[0];
                                    $.each(json, function (key, val) {
                                        $(".layui-layer [name=" + key + "]").val(val);
                                    });
                                } else {
                                    layer.msg("系统繁忙，请稍等.....");
                                }
                            },
                            error: function (XMLHttpRequest, textStatus, errorThrown) {
                                layer.msg("系统繁忙，请稍等.....");
                            }
                        });
                    }
                }
            });
        }    
        //保存事件
        function BntSaveFromData() {
            var FromValues = $(".layui-layer #LayerOpenHtmlFrom").find(fromchildren).serializeArray();
            var param = {};
            param.Gettype = 'SaveFromData';
            param.ChoiceValue = $(".layui-layer-content").attr("ID");
            param.FromValues = GetFromJson(FromValues);
            //ajax请求数据
            $.ajax({
                type: "GET",
                url: pageName(),
                cache: false,  //禁用缓存
                data: param,  //传入组装的参数
                dataType: "json",
                async: false,
                success: function (result) {
                    if (result != null && result[0].code == "100") {
                        //setTimeout仅为测试延迟效果
                        setTimeout(function () {
                            layer.msg('保存成功', {
                                icon: 1, time: 1500, end: function () {
                                    layer.close(Index);
                                    location.reload();
                                }
                            });
                        }, 50);
                    } else {
                        layer.msg("系统繁忙，请稍等.....");
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    layer.msg("系统繁忙，请稍等.....");
                }
            });
        }
        //获取数据后，重写一些方法
        function GetDataSuccess() {
            if (jQuery.isFunction(PageLoad)) {
                PageLoad();
            }
        }
        //CustomCodeStart
        function PageLoad() {
            setTimeout(function () {
                $("button[name=InsertItemID]").unbind("click");
                $("button[name=InsertItemID]").click(function () {
                    LayerOpenHtml('新增页面', $(this).val());
                })
                $("button[name=UpdateItemID]").unbind("click");
                $("button[name=UpdateItemID]").click(function () {
                    LayerOpenHtml('修改页面', $(this).val());
                })
                $("button[name=DeleteItemID]").unbind("click");
                $("button[name=DeleteItemID]").click(function () {
                    DeleteItemID($(this).val());
                })
            }, 50);
        }
        //CustomCodeEnd
    </script>
</body>
</html>
