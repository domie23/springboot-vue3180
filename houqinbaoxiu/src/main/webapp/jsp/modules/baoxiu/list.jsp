<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <!-- font-awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">


    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <!-- layui -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>
</head>
<style>

</style>
<body>




    <!-- Pre Loader -->
    <div class="loading">
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>
    </div>
<!--/Pre Loader -->
    <div class="wrapper">
        <!-- Page Content -->
        <div id="content">
            <!-- Top Navigation -->
            <%@ include file="../../static/topNav.jsp" %>
            <!-- Menu -->
            <div class="container menu-nav">
                <nav class="navbar navbar-expand-lg lochana-bg text-white">
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="ti-menu text-white"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul id="navUl" class="navbar-nav mr-auto">
                        </ul>
                    </div>
                </nav>
            </div>
            <!-- /Menu -->
            <!-- Breadcrumb -->
            <!-- Page Title -->
            <div class="container mt-0">
                <div class="row breadcrumb-bar">
                    <div class="col-md-6">
                        <h3 class="block-title">报修管理</h3>
                    </div>
                    <div class="col-md-6">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="${pageContext.request.contextPath}/index.jsp">
                                    <span class="ti-home"></span>
                                </a>
                            </li>
                            <li class="breadcrumb-item">报修管理</li>
                            <li class="breadcrumb-item active">报修列表</li>
                        </ol>
                    </div>
                </div>
            </div>
            <!-- /Page Title -->

            <!-- /Breadcrumb -->
            <!-- Main Content -->
            <div class="container">
                <div class="row">
                    <!-- Widget Item -->
                    <div class="col-md-12">
                        <div class="widget-area-2 lochana-box-shadow">
                            <h3 class="widget-title">报修列表</h3>
                            <div class="table-responsive mb-3">
                                <div class="col-sm-12">
                                                                                                                                                 
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        报修编号
                                        <div class="layui-input-inline">
                                            <input type="text" id="baoxiuUuidNumberSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="报修编号" aria-controls="tableId">
                                        </div>
                                    </div>
                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        报修名称
                                        <div class="layui-input-inline">
                                            <input type="text" id="baoxiuNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="报修名称" aria-controls="tableId">
                                        </div>
                                    </div>
                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        报修物品
                                        <div class="layui-input-inline">
                                            <input type="text" id="baoxiuWupinNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="报修物品" aria-controls="tableId">
                                        </div>
                                    </div>
                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        报修地点
                                        <div class="layui-input-inline">
                                            <input type="text" id="baoxiuAddressSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="报修地点" aria-controls="tableId">
                                        </div>
                                    </div>
                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        报修类型
                                        <div class="layui-input-inline">
                                            <select name="baoxiuTypesSelectSearch"  style="width: 150px;" id="baoxiuTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                                                                                             
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        报修状态
                                        <div class="layui-input-inline">
                                            <select name="baoxiuZhuangtaiTypesSelectSearch"  style="width: 150px;" id="baoxiuZhuangtaiTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                    
                                                                                                         
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        学生姓名
                                        <div class="layui-input-inline">
                                            <input type="text" id="xueshengNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="学生姓名" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                                                                                                                                                                                                                                                                                                                             
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        后勤人员姓名
                                        <div class="layui-input-inline">
                                            <input type="text" id="houqinrenyuanNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="后勤人员姓名" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                                                                                                                                                                                                                    
                                    <div class="layui-inline" style="margin-left: 30px;margin-bottom: 10px;">
                                        <button onclick="search()" type="button" class="btn btn-primary">查询</button>
                                        <button onclick="add()" type="button" class="btn btn-primary 新增">添加</button>
                                        <button onclick="graph()" type="button" class="btn btn-primary 报表">报表</button>
                                        <button onclick="exportExcel()" type="button" class="btn btn-success 导入导出"><i class="fa fa-file-excel-o" aria-hidden="true"></i>导出</button>
                                        <button onclick="deleteMore()" type="button" class="btn btn-danger 删除">批量删除</button>
                                    </div>
                                </div>
                                <table id="tableId" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th class="no-sort" style="min-width: 35px;">
                                            <div class="custom-control custom-checkbox">
                                                <input class="custom-control-input" type="checkbox" id="select-all"
                                                       onclick="chooseAll()">
                                                <label class="custom-control-label" for="select-all"></label>
                                            </div>
                                        </th>

                                        <th >学生姓名</th>
                                        <th >学生手机号</th>
                                        <th >学生头像</th>
                                        <th >后勤人员姓名</th>
                                        <th >后勤人员手机号</th>
                                        <th >后勤人员头像</th>
                                        <th>报修编号</th>
                                        <th>报修名称</th>
                                        <th>报修物品</th>
                                        <th>报修地点</th>
                                        <th>报修类型</th>
                                        <th>报修时间</th>
                                        <th>报修状态</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody id="thisTbody">
                                    </tbody>
                                </table>
                                <div class="col-md-6 col-sm-3">
                                    <div class="dataTables_length" id="tableId_length">

                                        <select name="tableId_length" aria-controls="tableId" id="selectPageSize"
                                                onchange="changePageSize()">
                                            <option value="10">10</option>
                                            <option value="25">25</option>
                                            <option value="50">50</option>
                                            <option value="100">100</option>
                                        </select>
                                        条 每页

                                    </div>
                                </div>
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-end">
                                        <li class="page-item" id="tableId_previous" onclick="pageNumChange('pre')">
                                            <a class="page-link" href="#" tabindex="-1">上一页</a>
                                        </li>

                                        <li class="page-item" id="tableId_next" onclick="pageNumChange('next')">
                                            <a class="page-link" href="#">下一页</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <!-- /Widget Item -->
                </div>
            </div>
            <!-- /Main Content -->

        </div>
        <!-- /Page Content -->
    </div>
    <!-- Back to Top -->
    <a id="back-to-top" href="#" class="back-to-top">
        <span class="ti-angle-up"></span>
    </a>
    <!-- /Back to Top -->
    <%@ include file="../../static/foot.jsp" %>
    <script language="javascript" type="text/javascript"
            src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
    <script language="javascript" type="text/javascript"
            src="${pageContext.request.contextPath}/resources/js/excel/excel-gen.js"></script>
    <script language="javascript" type="text/javascript"
            src="${pageContext.request.contextPath}/resources/js/excel/jszip.min.js"></script>
    <script language="javascript" type="text/javascript"
            src="${pageContext.request.contextPath}/resources/js/excel/FileSaver.js"></script>
    <script>

        <%@ include file="../../utils/menu.jsp"%>
        <%@ include file="../../static/setMenu.js"%>
        <%@ include file="../../utils/baseUrl.jsp"%>
        <%@ include file="../../static/getRoleButtons.js"%>
        <%@ include file="../../static/crossBtnControl.js"%>
        var tableName = "baoxiu";
        var pageType = "list";
        var searchForm = {key: ""};
        var pageIndex = 1;
        var pageSize = 10;
        var totalPage = 0;
        var dataList = [];
        var sortColumn = '';
        var sortOrder = '';
        var ids = [];
        var checkAll = false;

        <!-- 级联表的级联字典表 -->
        var gongsiTypesOptions = [];

        <!-- 本表的级联字段表 -->
        var baoxiuTypesOptions = [];
        var baoxiuZhuangtaiTypesOptions = [];

        function init() {
            // 满足条件渲染提醒接口
        }

        // 改变每页记录条数
        function changePageSize() {
            var selection = document.getElementById('selectPageSize');
            var index = selection.selectedIndex;
            pageSize = selection.options[index].value;
            getDataList();
        }



        // 查询
        function search() {
            searchForm = {key: ""};

        <!-- 级联表的级联字典表 -->
                                         
                            //学生姓名
            var xueshengNameSearchInput = $('#xueshengNameSearch');
            if( xueshengNameSearchInput != null){
                if (xueshengNameSearchInput.val() != null && xueshengNameSearchInput.val() != '') {
                    searchForm.xueshengName = $('#xueshengNameSearch').val();
                }
            }
                                                                                                                                             
            var gongsiTypesSelectSearchInput = document.getElementById("gongsiTypesSelectSearch");
            if(gongsiTypesSelectSearchInput != null){
                var gongsiTypesIndex = gongsiTypesSelectSearchInput.selectedIndex;
                if( gongsiTypesIndex  != 0){
                    searchForm.gongsiTypes = document.getElementById("gongsiTypesSelectSearch").options[gongsiTypesIndex].value;
                }
            }
                     
                            //后勤人员姓名
            var houqinrenyuanNameSearchInput = $('#houqinrenyuanNameSearch');
            if( houqinrenyuanNameSearchInput != null){
                if (houqinrenyuanNameSearchInput.val() != null && houqinrenyuanNameSearchInput.val() != '') {
                    searchForm.houqinrenyuanName = $('#houqinrenyuanNameSearch').val();
                }
            }
                                                                                                        <!-- 本表的查询条件 -->

                 
            //报修编号
            var baoxiuUuidNumberSearchInput = $('#baoxiuUuidNumberSearch');
            if( baoxiuUuidNumberSearchInput != null){
                if (baoxiuUuidNumberSearchInput.val() != null && baoxiuUuidNumberSearchInput.val() != '') {
                    searchForm.baoxiuUuidNumber = $('#baoxiuUuidNumberSearch').val();
                }
            }
     
            //报修名称
            var baoxiuNameSearchInput = $('#baoxiuNameSearch');
            if( baoxiuNameSearchInput != null){
                if (baoxiuNameSearchInput.val() != null && baoxiuNameSearchInput.val() != '') {
                    searchForm.baoxiuName = $('#baoxiuNameSearch').val();
                }
            }
     
            //报修物品
            var baoxiuWupinNameSearchInput = $('#baoxiuWupinNameSearch');
            if( baoxiuWupinNameSearchInput != null){
                if (baoxiuWupinNameSearchInput.val() != null && baoxiuWupinNameSearchInput.val() != '') {
                    searchForm.baoxiuWupinName = $('#baoxiuWupinNameSearch').val();
                }
            }
     
            //报修地点
            var baoxiuAddressSearchInput = $('#baoxiuAddressSearch');
            if( baoxiuAddressSearchInput != null){
                if (baoxiuAddressSearchInput.val() != null && baoxiuAddressSearchInput.val() != '') {
                    searchForm.baoxiuAddress = $('#baoxiuAddressSearch').val();
                }
            }
     
                //报修类型
            var baoxiuTypesSelectSearchInput = document.getElementById("baoxiuTypesSelectSearch");
            if(baoxiuTypesSelectSearchInput != null){
                var baoxiuTypesIndex = baoxiuTypesSelectSearchInput.selectedIndex;
                if( baoxiuTypesIndex  != 0){
                    searchForm.baoxiuTypes= document.getElementById("baoxiuTypesSelectSearch").options[baoxiuTypesIndex].value;
                }
            }
             
                //报修状态
            var baoxiuZhuangtaiTypesSelectSearchInput = document.getElementById("baoxiuZhuangtaiTypesSelectSearch");
            if(baoxiuZhuangtaiTypesSelectSearchInput != null){
                var baoxiuZhuangtaiTypesIndex = baoxiuZhuangtaiTypesSelectSearchInput.selectedIndex;
                if( baoxiuZhuangtaiTypesIndex  != 0){
                    searchForm.baoxiuZhuangtaiTypes= document.getElementById("baoxiuZhuangtaiTypesSelectSearch").options[baoxiuZhuangtaiTypesIndex].value;
                }
            }
                getDataList();
        }

        // 获取数据列表
        function getDataList() {
            http("baoxiu/page", "GET", {
                page: pageIndex,
                limit: pageSize,
                sort: sortColumn,
                order: sortOrder,
                baoxiuDelete: 1,
                //本表的
                baoxiuUuidNumber: searchForm.baoxiuUuidNumber,
                baoxiuName: searchForm.baoxiuName,
                baoxiuWupinName: searchForm.baoxiuWupinName,
                baoxiuAddress: searchForm.baoxiuAddress,
                baoxiuTypes: searchForm.baoxiuTypes,
                baoxiuZhuangtaiTypes: searchForm.baoxiuZhuangtaiTypes,
            //级联表的
                xueshengName: searchForm.xueshengName,

                gongsiTypes: searchForm.gongsiTypes,
                houqinrenyuanName: searchForm.houqinrenyuanName,


            }, (res) => {
                if(res.code == 0) {
                    clear();
                    $("#thisTbody").html("");
                    dataList = res.data.list;
                    totalPage = res.data.totalPage;
                    for (var i = 0; i < dataList.length; i++) { //遍历一下表格数据  
                        var trow = setDataRow(dataList[i], i); //定义一个方法,返回tr数据 
                        $('#thisTbody').append(trow);
                    }
                    pagination(); //渲染翻页组件
                    getRoleButtons();// 权限按钮控制
                }
            });
        }

        // 渲染表格数据
        function setDataRow(item, number) {
            //创建行 
            var row = document.createElement('tr');
            row.setAttribute('class', 'useOnce');
            //创建勾选框
            var checkbox = document.createElement('td');
            var checkboxDiv = document.createElement('div');
            checkboxDiv.setAttribute("class", "custom-control custom-checkbox");
            var checkboxInput = document.createElement('input');
            checkboxInput.setAttribute("class", "custom-control-input");
            checkboxInput.setAttribute("type", "checkbox");
            checkboxInput.setAttribute('name', 'chk');
            checkboxInput.setAttribute('value', item.id);
            checkboxInput.setAttribute("id", number);
            checkboxDiv.appendChild(checkboxInput);
            var checkboxLabel = document.createElement('label');
            checkboxLabel.setAttribute("class", "custom-control-label");
            checkboxLabel.setAttribute("for", number);
            checkboxDiv.appendChild(checkboxLabel);
            checkbox.appendChild(checkboxDiv);
            row.appendChild(checkbox)


                    //学生姓名
            var xueshengNameCell = document.createElement('td');
            xueshengNameCell.innerHTML = item.xueshengName;
            row.appendChild(xueshengNameCell);


                    //学生手机号
            var xueshengPhoneCell = document.createElement('td');
            xueshengPhoneCell.innerHTML = item.xueshengPhone;
            row.appendChild(xueshengPhoneCell);


                //学生头像
            var xueshengPhotoCell = document.createElement('td');
            var xueshengPhotoImg = document.createElement('img');
            var xueshengPhotoImgValue = item.xueshengPhoto;
            if(xueshengPhotoImgValue !=null && xueshengPhotoImgValue !='' && xueshengPhotoImgValue !='null'){
                    xueshengPhotoImg.setAttribute('src', xueshengPhotoImgValue);
                    xueshengPhotoImg.setAttribute('height', 100);
                    xueshengPhotoImg.setAttribute('width', 100);
                    xueshengPhotoCell.appendChild(xueshengPhotoImg);
            }else{
                    xueshengPhotoCell.innerHTML = "暂无图片";
            }
            row.appendChild(xueshengPhotoCell);


                    //后勤人员姓名
            var houqinrenyuanNameCell = document.createElement('td');
            houqinrenyuanNameCell.innerHTML = item.houqinrenyuanName;
            row.appendChild(houqinrenyuanNameCell);


                    //后勤人员手机号
            var houqinrenyuanPhoneCell = document.createElement('td');
            houqinrenyuanPhoneCell.innerHTML = item.houqinrenyuanPhone;
            row.appendChild(houqinrenyuanPhoneCell);


                //后勤人员头像
            var houqinrenyuanPhotoCell = document.createElement('td');
            var houqinrenyuanPhotoImg = document.createElement('img');
            var houqinrenyuanPhotoImgValue = item.houqinrenyuanPhoto;
            if(houqinrenyuanPhotoImgValue !=null && houqinrenyuanPhotoImgValue !='' && houqinrenyuanPhotoImgValue !='null'){
                    houqinrenyuanPhotoImg.setAttribute('src', houqinrenyuanPhotoImgValue);
                    houqinrenyuanPhotoImg.setAttribute('height', 100);
                    houqinrenyuanPhotoImg.setAttribute('width', 100);
                    houqinrenyuanPhotoCell.appendChild(houqinrenyuanPhotoImg);
            }else{
                    houqinrenyuanPhotoCell.innerHTML = "暂无图片";
            }
            row.appendChild(houqinrenyuanPhotoCell);


            //报修编号
            var baoxiuUuidNumberCell = document.createElement('td');
            baoxiuUuidNumberCell.innerHTML = item.baoxiuUuidNumber;
            row.appendChild(baoxiuUuidNumberCell);


            //报修名称
            var baoxiuNameCell = document.createElement('td');
            baoxiuNameCell.innerHTML = item.baoxiuName;
            row.appendChild(baoxiuNameCell);


            //报修物品
            var baoxiuWupinNameCell = document.createElement('td');
            baoxiuWupinNameCell.innerHTML = item.baoxiuWupinName;
            row.appendChild(baoxiuWupinNameCell);


            //报修地点
            var baoxiuAddressCell = document.createElement('td');
            baoxiuAddressCell.innerHTML = item.baoxiuAddress;
            row.appendChild(baoxiuAddressCell);


            //报修类型
            var baoxiuTypesCell = document.createElement('td');
            baoxiuTypesCell.innerHTML = item.baoxiuValue;
            row.appendChild(baoxiuTypesCell);


            //报修时间
            var insertTimeCell = document.createElement('td');
            insertTimeCell.innerHTML = item.insertTime;
            row.appendChild(insertTimeCell);


            //报修状态
            var baoxiuZhuangtaiTypesCell = document.createElement('td');
            baoxiuZhuangtaiTypesCell.innerHTML = item.baoxiuZhuangtaiValue;
            row.appendChild(baoxiuZhuangtaiTypesCell);



            //每行按钮
            var btnGroup = document.createElement('td');

            //详情按钮
            var detailBtn = document.createElement('button');
            var detailAttr = "detail(" + item.id + ')';
            detailBtn.setAttribute("type", "button");
            detailBtn.setAttribute("class", "btn btn-info btn-sm 查看");
            detailBtn.setAttribute("onclick", detailAttr);
            detailBtn.innerHTML = "查看";
            btnGroup.appendChild(detailBtn);


            //修改按钮
            var editBtn = document.createElement('button');
            var editAttr = 'edit(' + item.id + ')';
            editBtn.setAttribute("type", "button");
            editBtn.setAttribute("class", "btn btn-warning btn-sm 修改");
            editBtn.setAttribute("onclick", editAttr);
            editBtn.innerHTML = "修改";
            btnGroup.appendChild(editBtn);

            if (window.sessionStorage.getItem('role') == '后勤人员' && item.baoxiuZhuangtaiTypes ==1 && item.houqinrenyuanId==null) {


                var jiedanBtn = document.createElement('button');
                var jiedanAttr = 'jiedan(' + item.id + ')';
                jiedanBtn.setAttribute("type", "button");
                jiedanBtn.setAttribute("class", "btn btn-warning btn-sm");
                jiedanBtn.setAttribute("onclick", jiedanAttr);
                jiedanBtn.innerHTML = "接单";
                btnGroup.appendChild(jiedanBtn);
            }

            if (window.sessionStorage.getItem('role') == '后勤人员' && item.baoxiuZhuangtaiTypes ==2 && item.houqinrenyuanId==window.sessionStorage.getItem('userId')) {


                var xiuhaoBtn = document.createElement('button');
                var xiuhaoAttr = 'xiuhao(' + item.id + ')';
                xiuhaoBtn.setAttribute("type", "button");
                xiuhaoBtn.setAttribute("class", "btn btn-warning btn-sm");
                xiuhaoBtn.setAttribute("onclick", xiuhaoAttr);
                xiuhaoBtn.innerHTML = "确认修好";
                btnGroup.appendChild(xiuhaoBtn);
            }


            //删除按钮
            var deleteBtn = document.createElement('button');
            var deleteAttr = 'remove(' + item.id + ')';
            deleteBtn.setAttribute("type", "button");
            deleteBtn.setAttribute("class", "btn btn-danger btn-sm 删除");
            deleteBtn.setAttribute("onclick", deleteAttr);
            deleteBtn.innerHTML = "删除";
            btnGroup.appendChild(deleteBtn);

            row.appendChild(btnGroup);

            return row;
    }


        // 翻页
        function pageNumChange(val) {
            if (val == 'pre') {
                pageIndex--;
            } else if (val == 'next') {
                pageIndex++;
            } else {
                pageIndex = val;
            }
            getDataList();
        }

        // 下载
        function download(url) {
            window.open(url);
        }
        // 打开新窗口播放媒体
        function mediaPlay(url){
            window.open(url);
        }

        // 渲染翻页组件
        function pagination() {
            var beginIndex = pageIndex;
            var endIndex = pageIndex;
            var point = 4;
            //计算页码
            for (var i = 0; i < 3; i++) {
                if (endIndex == totalPage) {
                    break;
                }
                endIndex++;
                point--;
            }
            for (var i = 0; i < 3; i++) {
                if (beginIndex == 1) {
                    break;
                }
                beginIndex--;
                point--;
            }
            if (point > 0) {
                while (point > 0) {
                    if (endIndex == totalPage) {
                        break;
                    }
                    endIndex++;
                    point--;
                }
                while (point > 0) {
                    if (beginIndex == 1) {
                        break;
                    }
                    beginIndex--;
                    point--
                }
            }
            // 是否显示 前一页 按钮
            if (pageIndex > 1) {
                $('#tableId_previous').show();
            } else {
                $('#tableId_previous').hide();
            }
            // 渲染页码按钮
            for (var i = beginIndex; i <= endIndex; i++) {
                var pageNum = document.createElement('li');
                pageNum.setAttribute('onclick', "pageNumChange(" + i + ")");
                if (pageIndex == i) {
                    pageNum.setAttribute('class', 'paginate_button page-item active useOnce');
                } else {
                    pageNum.setAttribute('class', 'paginate_button page-item useOnce');
                }
                var pageHref = document.createElement('a');
                pageHref.setAttribute('class', 'page-link');
                pageHref.setAttribute('href', '#');
                pageHref.setAttribute('aria-controls', 'tableId');
                pageHref.setAttribute('data-dt-idx', i);
                pageHref.setAttribute('tabindex', 0);
                pageHref.innerHTML = i;
                pageNum.appendChild(pageHref);
                $('#tableId_next').before(pageNum);
            }
            // 是否显示 下一页 按钮
            if (pageIndex < totalPage) {
                $('#tableId_next').show();
                $('#tableId_next a').attr('data-dt-idx', endIndex + 1);
            } else {
                $('#tableId_next').hide();
            }
            var pageNumInfo = "当前第 " + pageIndex + " 页，共 " + totalPage + " 页";
            $('#tableId_info').html(pageNumInfo);
        }

        // 跳转到指定页
        function toThatPage() {
            //var index = document.getElementById('pageIndexInput').value;
            if (index < 0 || index > totalPage) {
                alert('请输入正确的页码');
            } else {
                pageNumChange(index);
            }
        }

        // 全选/全不选
        function chooseAll() {
            checkAll = !checkAll;
            var boxs = document.getElementsByName("chk");
            for (var i = 0; i < boxs.length; i++) {
                boxs[i].checked = checkAll;
            }
        }

        // 批量删除
        function deleteMore() {
            ids = []
            var boxs = document.getElementsByName("chk");
            for (var i = 0; i < boxs.length; i++) {
                if (boxs[i].checked) {
                    ids.push(boxs[i].value)
                }
            }
            if (ids.length == 0) {
                alert('请勾选要删除的记录');
            } else {
                remove(ids);
            }
        }

        // 删除
        function remove(id) {
            var mymessage = confirm("真的要删除吗？");
            if (mymessage == true) {
                var paramArray = [];
                if (id == ids) {
                    paramArray = id;
                } else {
                    paramArray.push(id);
                }
                httpJson("baoxiu/delete", "POST", paramArray, (res) => {
                    if(res.code == 0){
                        getDataList();
                        alert('删除成功');
                    }
                });
            } else {
                alert("已取消操作");
            }
        }

        // 用户登出
        <%@ include file="../../static/logout.jsp"%>

        //修改
        function edit(id) {
            window.sessionStorage.setItem('updateId', id)
            window.location.href = "add-or-update.jsp"
        }

        //接单
        function jiedan(id) {
            var mymessage = confirm("确定要接此单么？");
            if (mymessage == true) {
                httpJson("baoxiu/update", "POST", {
                    id:id,
                    baoxiuZhuangtaiTypes:2,
                    houqinrenyuanId:window.sessionStorage.getItem('userId') ,
                }, (res) => {
                    if(res.code == 0){
                        getDataList();
                        alert('接单成功');
                    }
                });
            } else {
                alert("已取消操作");
            }
        }

        //修好
        function xiuhao(id) {
            var mymessage = confirm("确定此报修修好了么？");
            if (mymessage == true) {
                httpJson("baoxiu/update", "POST", {
                    id:id,
                    baoxiuZhuangtaiTypes:3
                }, (res) => {
                    if(res.code == 0){
                        getDataList();
                        alert('维修完成');
                    }
                });
            } else {
                alert("已取消操作");
            }
        }

        //清除会重复渲染的节点
        function clear() {
            var elements = document.getElementsByClassName('useOnce');
            for (var i = elements.length - 1; i >= 0; i--) {
                elements[i].parentNode.removeChild(elements[i]);
            }
        }

        //添加
        function add() {
            window.sessionStorage.setItem("addbaoxiu", "addbaoxiu");
            window.location.href = "add-or-update.jsp"
        }

        //报表
        function graph() {
            window.location.href = "graph.jsp"
        }
        function exportExcel() {
            excel = new ExcelGen({
                "src_id": "tableId",
                "show_header": true,
                "file_name": 'baoxiu.xlsx'
            });
            excel.generate();
        }

        // 查看详情
        function detail(id) {
            window.sessionStorage.setItem("updateId", id);
            window.location.href = "info.jsp";
        }


    //填充级联表搜索下拉框
                                         
                                                                                                                                             
        function gongsiTypesSelectSearch() {
            var gongsiTypesSelectSearch = document.getElementById('gongsiTypesSelectSearch');
            if(gongsiTypesSelectSearch != null) {
                gongsiTypesSelectSearch.add(new Option('-请选择-',''));
                if (gongsiTypesOptions != null && gongsiTypesOptions.length > 0){
                    for (var i = 0; i < gongsiTypesOptions.length; i++) {
                            gongsiTypesSelectSearch.add(new Option(gongsiTypesOptions[i].indexName, gongsiTypesOptions[i].codeIndex));
                    }
                }
            }
        }
                     
                                                                                                    
    //填充本表搜索下拉框
                 
     
     
     
     
        function baoxiuTypesSelectSearch() {
            var baoxiuTypesSelectSearch = document.getElementById('baoxiuTypesSelectSearch');
            if(baoxiuTypesSelectSearch != null) {
                baoxiuTypesSelectSearch.add(new Option('-请选择-',''));
                if (baoxiuTypesOptions != null && baoxiuTypesOptions.length > 0){
                    for (var i = 0; i < baoxiuTypesOptions.length; i++) {
                            baoxiuTypesSelectSearch.add(new Option(baoxiuTypesOptions[i].indexName,baoxiuTypesOptions[i].codeIndex));
                    }
                }
            }
        }
             
        function baoxiuZhuangtaiTypesSelectSearch() {
            var baoxiuZhuangtaiTypesSelectSearch = document.getElementById('baoxiuZhuangtaiTypesSelectSearch');
            if(baoxiuZhuangtaiTypesSelectSearch != null) {
                baoxiuZhuangtaiTypesSelectSearch.add(new Option('-请选择-',''));
                if (baoxiuZhuangtaiTypesOptions != null && baoxiuZhuangtaiTypesOptions.length > 0){
                    for (var i = 0; i < baoxiuZhuangtaiTypesOptions.length; i++) {
                            baoxiuZhuangtaiTypesSelectSearch.add(new Option(baoxiuZhuangtaiTypesOptions[i].indexName,baoxiuZhuangtaiTypesOptions[i].codeIndex));
                    }
                }
            }
        }
    
    //查询级联表搜索条件所有列表
            function gongsiTypesSelect() {
                //填充下拉框选项
                http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=gongsi_types", "GET", {}, (res) => {
                    if(res.code == 0){
                        gongsiTypesOptions = res.data.list;
                    }
                });
            }

    //查询当前表搜索条件所有列表
            function baoxiuTypesSelect() {
                //填充下拉框选项
                http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=baoxiu_types", "GET", {}, (res) => {
                    if(res.code == 0){
                        baoxiuTypesOptions = res.data.list;
                    }
                });
            }
            function baoxiuZhuangtaiTypesSelect() {
                //填充下拉框选项
                http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=baoxiu_zhuangtai_types", "GET", {}, (res) => {
                    if(res.code == 0){
                        baoxiuZhuangtaiTypesOptions = res.data.list;
                    }
                });
            }












        layui.use(['layer', 'carousel', 'jquery', 'form', 'upload', 'laydate', 'rate'], function () {
            var rate = layui.rate;//评分
            var jquery = layui.jquery;//jquery
            var $=jquery;

        });


        $(document).ready(function () {
            //激活翻页按钮
            $('#tableId_previous').attr('class', 'paginate_button page-item previous')
            $('#tableId_next').attr('class', 'paginate_button page-item next')
            //隐藏原生搜索框
            $('#tableId_filter').hide()
            //设置右上角用户名
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
            //设置项目名
            $('.sidebar-header h3 a').html(projectName)
            setMenu();
            init();

            //查询级联表的搜索下拉框
            gongsiTypesSelect();

            //查询当前表的搜索下拉框
            baoxiuTypesSelect();
            baoxiuZhuangtaiTypesSelect();
            getDataList();

        //级联表的下拉框赋值
                                                 
                                                                                                                                                                         
            gongsiTypesSelectSearch();
                         
                                                                                                                        
        //当前表的下拉框赋值
                                                 
             
             
             
             
            baoxiuTypesSelectSearch();
                                     
            baoxiuZhuangtaiTypesSelectSearch();
            
        <%@ include file="../../static/myInfo.js"%>
    });
</script>
</body>

</html>
