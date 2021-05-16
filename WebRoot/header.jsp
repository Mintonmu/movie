<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.Info" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head><title>Home</title>
    <link href="qtstyle/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="qtstyle/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <link rel="stylesheet" type="text/css" href="css/normalize.css"/><!--CSS RESET-->
    <link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css"><!--演示页面样式，使用时可以不引用-->
    <link rel="stylesheet" href="css/jsRapStar.css"/>
    <link rel="stylesheet" href="//unpkg.com/layui@2.6.6/dist/css/layui.css">
    <!------ js ------>
    <script src="qtstyle/js/jquery.js"></script>
    <script src="//unpkg.com/layui@2.6.6/dist/layui.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="js/jsRapStar.js"></script>
    <!------ js ------>
    <!---- animated-css ---->
    <link href="qtstyle/css/animate.css" rel="stylesheet" type="text/css" media="all">
    <script src="qtstyle/js/wow.min.js"></script>
    <script src="qtstyle/js/bootstrap.js"></script>
    <script>
        new WOW().init();
    </script>
    <!---- animated-css ---->
</head>
<body>
<!--- header ---->
<div id="to-top" class="header-bg">
    <div id="home" class="header">
        <!--- container ---->
        <div class="header-menu-box">
            <div class="container">
                <div class="header-quanxian">
                    <c:choose>
                        <c:when test="${sessionScope.username != null && '' !=  sessionScope.username }">
                            欢迎${sessionScope.username}登录，
                            <a href="main.do" class="btn btn-primary btn-xs"> 个人中心</a>
                            <a href="logout.do" class="btn btn-default btn-xs" onclick="return confirm('你确定退出？')">
                                退出</a>
                        </c:when><c:otherwise>
                        <div class="btn-group">
                            <a href="javascript:" class="btn btn-primary btn-xs" data-toggle="modal"
                               data-target="#LoginModal">登录</a>
                            <a href="javascript:" class="btn btn-primary btn-xs" data-toggle="modal"
                               data-target="#ReModal">注册</a>
                        </div>
                    </c:otherwise></c:choose>

                </div>
                <div class="header-logo">
                    <h2><a href="./">影院票务系统</a></h2>
                </div>
                <div class="header-nav">
                    <span class="menu"><label> <i class="glyphicon glyphicon-expand"></i> </label> </span>
                    <ul>
                        <li>
                            <span class="ui-icon-home">地区：南京</span>

                        </li>
                        <li class="active"><a href="./">首页</a></li>
                        <li>
                            <a href="dianyingxinxilist.do">在播影片</a>
                        </li>

                        <li>
                            <a href="dianyingyuanlist.do">电影院</a>
                            <%--                            <a href="zhuceyonghuadd.do">用户注册</a>--%>
                        </li>
                        <li class="xinsuo_menu">
                            <a href="login.do">后台管理</a>
                        </li>
                        <li>
                            <a href="javascript:">评价反馈</a>
                            <div class="header-nav-sub">
                                <a href="pingjiafankuiadd.do">我要评价</a>
                                <a href="pingjiafankuilist.do">评论区</a>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="clearfix"></div>
                <!----- script-for-menu ---->
                <script>
                    $("span.menu").click(function () {
                        $(".header-nav ul").slideToggle("slow", function () {
                        });
                    });
                </script>
                <!----- script-for-menu ---->
                <div class="clearfix"></div>
            </div>
        </div>
        <!--- container --->
    </div>
</div>

<link rel="stylesheet" href="qtstyle/css/swipe.css">
<script src="qtstyle/css/swipe.js"></script>
    <% ArrayList<HashMap> bhtList = Query.make("lunbotu").order("id desc").limit(10).select();
request.setAttribute("bhtList" , bhtList);
 %>

<!-- Login Modal -->
<div class="modal fade bs-example-modal-sm" id="LoginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">登录</h4>
            </div>
            <div class="modal-body">
                <div class="pa10">
                    <form action="authLogin.do?a=a" method="post" class="form-horizontal">
                        <div>
                            <div class="form-group">
                                <label for="username">用户名
                                    <input type="text" placeholder="用户名" class="form-control" name="username"
                                           id="username" value=""/>
                                </label>
                            </div>
                            <div class="form-group">
                                <label for="pwd">密码
                                    <input type="password" placeholder="密码" class="form-control" name="pwd" id="pwd"
                                           value=""/>
                                </label>
                            </div>
                            <div class="form-group">
                                <select name="cx" class="form-control" id="cx">
                                    <option value="注册用户">注册用户</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="验证码" name="pagerandom"
                                           value=""/>
                                    <span class="input-group-addon">
                                        <img src="captcha.do"
                                             style="width: 60px;height: 20px;max-width: 60px;max-height: 20px"
                                             onclick="this.src='captcha.do?rand='+new Date().getTime()"/>
                                    </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-block">登录</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%--Register Model--%>
<div class="modal fade bs-example-modal-sm" id="ReModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="registerModalLabel">注册</h4>
            </div>
            <div class="modal-body">
                <div class="pa10">
                    <form action="zhuceyonghuinsert.do" method="post" name="form1" id="form1" class="form-horizontal">
                        <div>
                            <div class="form-group">
                                <label for="yonghuming">用户名
                                    <input style="width:150px;" required="required" data-rule-required="true" data-msg-required="请填写用户名"
                                           remote="checkno.do?checktype=insert&table=zhuceyonghu&col=yonghuming"
                                           data-msg-remote="内容重复了" id="yonghuming" name="yonghuming" value=""
                                           type="text"/>
                                    <span style="color: red;">*</span>
                                </label>
                            </div>
                            <div class="form-group">
                                <label for="mima">密码
                                    <input style="width:150px;" required="required" data-rule-required="true" data-msg-required="请填写密码"
                                           id="mima" name="mima" value="" type="password"/> <span
                                            style="color: red;">*</span>
                                </label>
                            </div>

                            <div class="form-group">
                                <label for="xingming">真实姓名
                                    <input style="width:150px;" required="required" data-rule-required="true" data-msg-required="请填写姓名"
                                           id="xingming" name="xingming" value="" type="text"/> <span
                                            style="color: red;">*</span>
                                </label>
                            </div>

                            <div class="form-group">
                                <label for="xingbie">性别
                                    <select data-value="" id="xingbie" name="xingbie" class="class_xingbie4">
                                        <option value="男">男</option>
                                        <option value="女">女</option>
                                    </select>
                                </label>
                            </div>

                            <div class="form-group">
                                <label for="shoujihao">手机号
                                    <input style="width:150px;" data-rule-phone="true" data-msg-phone="请输入正确手机号码"
                                           id="shoujihao" name="shoujihao" value="" type="text"/></label></div>

                            <div class="form-group">
                                <label for="touxiang">头像
                                    <input type="text" id="touxiang" name="touxiang" value=""/></label>l
                                <input type="button"
                                       onclick="layer.open({type:2,title:'上传图片',fixed:true,shadeClose:true,shade:0.5,area:['320px','150px'],content:'upload.html?result=touxiang'})"
                                       value="上传"/></td>
                            </div>
                            <div class="form-group"><input type="submit" name="Submit" value="提交"
                                                           style='border:solid 1px #000000; color:#666666'/>
                                <input type="reset" name="Submit2" value="重置"
                                       style='border:solid 1px #000000; color:#666666'/></td>
                            </div>
                        </div>
                    </form>
                </div>
                <script>
                    $(function () {
                        $('#form1').validate();
                    })

                </script>
            </div>
        </div>
    </div>
</div>
</div>

<!--- header ---->
<div class="clearfix"></div>