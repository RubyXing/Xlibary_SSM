<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/25 0025
  Time: 下午 3:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String baseUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<base href="<%=baseUrl%>">
<meta charset="utf-8">
<head>
    <title>图书列表页</title>
    <link rel="stylesheet" href="staticStyle/css/bootstrap_3.3.7.css">
    <link rel="stylesheet" type="text/css" href="staticStyle/css/styles_stars.css">
    <script src="staticStyle/js/jquery_2.1.4.js"></script>
    <script>
        $(document).ready(function () {
            //搜索展开按钮
            $("#featured-campaign-search").click(function () {
                $("#menu-search-overlay").addClass("active");
            })

            $("#menu-search-close").click(function () {
                $("#menu-search-overlay").removeClass("active");
            })

            $("[id=borrow]").click(function () {
                var message = $(this).attr("value");
                var num = $("#bookstock" + $(this).attr("value") + "").text() - 1;

                alert(num);
                $("[id=bookstock" + $(this).attr("value") + "]").text(num);
            })
        })
    </script>
    <style>
        @media (min-width: 1024px) {
            #myCarousel {
                margin-left: 30%;
            }
        }
    </style>
</head>
<body>
<jsp:include page="Sidebar.jsp"/>
<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner" style="height: 300px">
        <div class="item active">
            <img src="staticStyle/imgs/rwby1.jpg" alt="First slide">
        </div>
        <div class="item">
            <img src="staticStyle/imgs/rwby2.jpg" alt="Second slide">
        </div>
        <div class="item">
            <img src="staticStyle/imgs/rwby3.jpg" alt="Third slide">
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<div id="app-view-wrapper">
    <!-- Navigation panel -->
    <style>
        @media (min-width: 1025px) {
            #terms-notes {
                margin-left: 30%;
                width: 69%;
            }

            #placeholder-element {
                display: none;
            }
        }

        .terms-notes {
            position: fixed;
            display: none;
            width: 100%;
            padding: 4px 16px;
            background-color: #0bac69;
            z-index: 999;
        }

        .terms-notes p {
            margin: 0;
            padding-right: 18px
        }

        .terms-notes p a {
            width: 100%;
            margin: 0;
            color: #ffffff;
        }

        #menu-search-input {
            background: none;
            border: 0;
            border-bottom: 1px solid rgba(0, 0, 0, 0.12);
            -ms-border-bottom: 1px solid #edebe9;
            border-radius: 0;
            box-sizing: border-box;
            display: block;
            padding: 4px 0;
            transition-property: border;
            transition-duration: 0.2s;
            position: relative;
            font-family: inherit;
            font-size: inherit;
            font-weight: 700;
            line-height: inherit;
            width: 100%;
            z-index: 500;
        }
    </style>


    <!-- Page content -->
    <section id="content">
        <div class="wrapper fluid margin page-menu-list">
            <h3 class="caption">今日上新</h3>
            <ul class="grid padded-3 product">
                <c:forEach items="${requestScope.get('books')}" var="book" begin="0" end="2">
                    <li>
                        <a id="menu-product-related-affogato" href="/book/showBook/${book.bid}"
                           class="thumbnail">
                            <div class="preview circle"
                                 style="background-image: url(${book.bcover})"></div>
                            <strong>${book.bname}</strong>
                        </a>
                        作者：${book.bauthor}
                        <p>${book.bdescription}</p>
                        <button id="borrow" value="${book.bid}">借阅</button>
                        <text style="float: right;">库存:<b id="bookstock${book.bid}">${book.bkeepnum-book.boutnum}</b>
                        </text>
                    </li>
                </c:forEach>
            </ul>

            <hr>

            <h3 class="caption">推荐阅读</h3>
            <ul class="grid padded-3 product">
                <c:forEach items="${requestScope.get('books')}" var="book" begin="3" end="6">
                    <li>
                        <a id="menu-product-related-affogato" href="/book/showBook/${book.bid}"
                           class="thumbnail">
                            <div class="preview circle"
                                 style="background-image: url(${book.bcover})"></div>
                            <strong>${book.bname}</strong>
                        </a>
                        作者：${book.bauthor}
                        <p>${book.bdescription}</p>
                        <button id="borrow" value="${book.bid}">借阅</button>
                        <text style="float: right;">库存:<b id="bookstock${book.bid}">${book.bkeepnum-book.boutnum}</b>
                        </text>
                    </li>
                </c:forEach>
            </ul>

            <hr>

            <h3 class="caption">全部馆藏</h3>
            <ul class="grid padded-3 product">
                <c:forEach items="${requestScope.get('books')}" var="book">
                    <li>
                        <a id="menu-product-related-affogato" href="/book/showBook/${book.bid}"
                           class="thumbnail">
                            <div class="preview circle"
                                 style="background-image: url(${book.bcover})"></div>
                            <strong>${book.bname}</strong>
                        </a>
                        作者：${book.bauthor}
                        <p>${book.bdescription}</p>
                        <button id="borrow" value="${book.bid}">借阅</button>
                        <text style="float: right;">库存:<b id="bookstock${book.bid}">${book.bkeepnum-book.boutnum}</b>
                        </text>
                    </li>
                </c:forEach>
            </ul>
        </div>


        <%--        搜索菜单 --%>
        <div class="overlay" id="menu-search-overlay">
            <header class="header">
                <button id="menu-search-close" class="icon close">关闭</button>
            </header>
            <div class="body">
                <div class="field search">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/icons/icon-search.svg"
                         class="icon">
                    <input type="text" id="menu-search-input" placeholder="搜索菜单">
                </div>
                <div id="menu-search-empty">
                    <div class="tag"
                         style="display: inline-block;padding: 2px 12px;background: #00A862;font-size: 14px;color: #FFF;">
                        大家都在搜
                    </div>
                </div>
                <ul class="grid columns-4 padded-2" id="menu-search-results">
                    <li><a class="overlay-close thumbnail" href="">
                        <div class="preview circle"
                             style="background-image: url(staticStyle/imgs/1.jpg)"></div>
                        <strong>黑天鹅</strong> </a></li>
                    <li><a class="overlay-close thumbnail" href="">
                        <div class="preview circle"
                             style="background-image: url(staticStyle/imgs/2.jpg)"></div>
                        <strong>人类简史</strong> </a></li>
                    <li><a class="overlay-close thumbnail" href="">
                        <div class="preview circle"
                             style="background-image: url(staticStyle/imgs/3.jpg)"></div>
                        <strong>三体</strong> </a></li>
                    <li><a class="overlay-close thumbnail" href="">
                        <div class="preview circle"
                             style="background-image: url(staticStyle/imgs/4.jpg)"></div>
                        <strong>杀死一只知更鸟</strong> </a></li>
                </ul>
            </div>
        </div>
        <div class="frap">
            <button id="featured-campaign-search" class="button primary trigger" rel="menu-search-overlay">搜索菜单</button>
        </div>
        <div id="app-notification">
            <div data-reactroot=""></div>
        </div>
    </section>


    <div id="app-loading">
        <div data-reactroot="" class="loading"></div>
    </div>
    <div id="app-auth"><span data-reactroot=""></span></div>
</div>

<script src="staticStyle/js/bootstrap_3.3.7_js.js"></script>
</body>
</html>
