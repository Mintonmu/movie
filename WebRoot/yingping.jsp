<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.Info" %>
<%@ page import="com.spring.entity.Pingjia" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--CSS RESET-->
<script src="js/jsRapStar.js"></script>

<!--- latest-posts --->
<div id="blog" class="latest-posts">
    <!--- container --->
    <div class="container">
        给电影评个分吧~
        <div id="demo1" start="3"></div>

        <div class="latest-posts-grids wow bounceIn" data-wow-delay="0.4s">
            <div class="clearfix">
                <textarea id="pinglunkuang"></textarea>
                <button type="submit" onclick="sumbitpinglun()">提交</button>

                <style>
                    .pinglun {
                        padding: 10px;
                    }

                    .pinglun .pinglunneirong {
                        padding-bottom: 10px;
                        margin-bottom: 10px;
                        border-bottom: 1px #dedede dashed;
                    }

                    .headerimgurl {
                        float: left;
                        width: 64px;
                    }

                    .pinglun-text {
                        margin-left: 74px;
                    }

                </style>
                <br>
                <div class="pinglun">
                    <c:forEach items="${list}" var="map">
                        <%--                        <% Pingjia map = (Pingjia) pageContext.getAttribute("map"); %>--%>
                        <%--                        <% HashMap yonghu = Query.make("zhuceyonghu").where("yonghuming", map.getPingjiaren()).find();%>--%>
                        <div class="pinglunneirong clearfix">
                            <div class="pinglun-text">
                                <ssm:sql var="namelist"
                                         type="find">SELECT xingming FROM zhuceyonghu where id=${map.uid}</ssm:sql>
                                @${namelist.xingming}

                                <p style="margin-top: 10px">${map.content}
                                </p>
                                    <%--                                <p>管理员回复：${map.huifuneirong}--%>
                                    <%--                                </p>--%>
                            </div>
                        </div>
                    </c:forEach>
                </div>


                ${ page.info }

            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!--- container --->
</div>
<script>

    $(document).ready(function () {
        $("#demo1").attr("start", localStorage.getItem("score") === undefined ? 3 : localStorage.getItem("score"))
        $('#demo1').jsRapStar({
            colorFront: '#0f0', length: 5,
            onClick: function (score) {
                $(this)[0].StarF.css({color: 'red'});
                localStorage.setItem("score", score);

            },
            onMousemove: function (score) {
                $(this).attr('title', 'Ocena ' + score);
            }
        });
    });

    function getQueryVariable(variable) {
        var query = window.location.search.substring(1);
        var vars = query.split("&");
        for (var i = 0; i < vars.length; i++) {
            var pair = vars[i].split("=");
            if (pair[0] == variable) {
                return pair[1];
            }
        }
        return (false);
    }

    function sumbitpinglun() {
        var rankscore = localStorage.getItem("score")
        console.log(rankscore)
        var vid = getQueryVariable("id");
        var uid =
        <%=request.getSession().getAttribute("id")%>
        var content = $("#pinglunkuang").val();

        $.post("commentadd.do", {rankscore: rankscore, content: content, vid: vid, uid: uid}, function (result) {
            console.log(result);

            location.reload();

        });
    }
</script>
