<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.Info" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
<!--- latest-posts --->
<div id="blog" class="latest-posts">
    <!--- container --->
    <div class="container">
        <div class="latest-posts-text wow bounceIn" data-wow-delay="0.4s">
            <h2>影院列表</h2>
        </div>
        <div class="latest-posts-grids wow bounceIn" data-wow-delay="0.4s">

            <br>
            <div id="portfoliolist">

                <c:forEach items="${dianyingyuan}" var="t">
                    <div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
                        <div>
                            <a href="dianyingxinxilist.do">
                                <div class="b-wrapper">
                                    <h3 >${t.yingyuanmingcheng}</h3>
                                    <p>${t.yingyuandizhi}</p>
                                        <br><br>
                                        <button class="btn btn-primary">查看详情</button>
                                    </p>
                                </div>
                            </a>
                        </div>
                    </div>
                </c:forEach>

                <div class="clearfix"></div>
            </div>

            ${ page.info }

        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!--- container --->
</div>

<!--- latest-posts --->
<%@ include file="footer.jsp" %>
