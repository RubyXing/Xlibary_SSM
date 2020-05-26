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
        })
    </script>
</head>
<body>
<div id="app-view-wrapper">
    <!-- Navigation panel -->
    <jsp:include page="Sidebar.jsp"/>
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
    <c:forEach items="${requestScope.get('books')}" var="book">
        ${book.bid}
        ${book.bname}
        ${book.bcover}
    </c:forEach>

    <!-- Page content -->
    <section id="content">
        <section class="hero relative">

            <div class="block relative mobile-hidden">
                <a href="#lto-items">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/kv.jpg"
                         class="img">
                </a>
            </div>
            <div class="block relative show-mobile tablet-hidden">
                <a href="#lto-items">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/kv-mobile.jpg"
                         class="img">
                </a>
            </div>

            <div class="wrapper">
                <h2>“甜品”派对 夏天由你</h2>
                <p class="text description" style="padding:0 20px">
                    全新夏季限定星冰乐，带来属于夏天的那份自由放肆。<br> 经典“甜品”的全新演绎，佐以丰盛食材，带给你大快朵颐的味蕾体验。<br> 可盐可甜的草莓轻乳酪星冰乐，牛乳轻芝士与饱满香甜的草莓果肉奇妙碰撞。<br>
                    提拉米苏风味星冰乐创新演绎意式经典甜品，美味层层递进，浓香口口沁心。<br> 杨枝甘露星冰乐，芒果浓郁 ，粒粒饱满的白柚果粒更增添丰富口感。
                </p>
            </div>
        </section>
        <section class="featured-items">
            <div class="item">
                <div class="mobile-hidden">
                    <a href="#lto-items" class="block relative">
                        <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/merch.jpg"
                             class="img">
                    </a>
                    <div class="description text wrapper">
                        <h2>非洲的咖啡奇幻故事</h2>
                        <p>作为重要的咖啡产区之一，非洲大陆充满了传奇和神秘。<br> 这个夏天和星巴克全新夏日星杯一起，<br> 探寻非洲的咖啡奇幻故事。</p>
                    </div>
                </div>
                <div class="show-mobile tablet-hidden">
                    <a href="#lto-items" class="block relative">
                        <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/merch-mobile.jpg"
                             class="img">
                    </a>
                    <div class="description text wrapper collapsed">
                        <h2>非洲的咖啡奇幻故事</h2>
                        <div class="body">
                            <p>作为重要的咖啡产区之一，非洲大陆充满了传奇和神秘。<br> 这个夏天和星巴克全新夏日星杯一起，<br> 探寻非洲的咖啡奇幻故事。</p>
                        </div>
                        <span class="icon"></span>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="mobile-hidden">
                    <a href="#lto-items" class="block relative">
                        <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/cloud-coffee.jpg"
                             class="img">
                    </a>
                    <div class="description text wrapper">
                        <h2>大溪地风情绵云冷萃</h2>
                        <p>大溪地香草风味调和脱脂奶制成轻盈奶沫。<br> 每一口，云朵般的绵柔质地包裹着14小时慢速萃取的冷萃冰咖啡，<br> 轻柔地滑过舌尖，绵密而细腻。<br></p>
                    </div>
                </div>
                <div class="show-mobile tablet-hidden">
                    <a href="#lto-items" class="block relative">
                        <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/cloud-coffee-mobile.jpg"
                             class="img">
                    </a>
                    <div class="description text wrapper collapsed">
                        <h2>大溪地风情绵云冷萃</h2>
                        <div class="body">
                            <p>大溪地香草风味调和脱脂奶制成轻盈奶沫。<br> 每一口，云朵般的绵柔质地包裹着14小时慢速萃取的冷萃冰咖啡，<br> 轻柔地滑过舌尖，绵密而细腻。<br></p>
                        </div>
                        <span class="icon"></span>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="mobile-hidden">
                    <a href="#lto-items" class="block relative">
                        <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/coffee.jpg"
                             class="img">
                    </a>
                    <div class="description text wrapper">
                        <h2>卡提卡提综合咖啡豆</h2>
                        <p>其中肯亚咖啡豆带来前段醇度和独特的柑橘风味，<br> 而埃塞俄比亚咖啡豆让这款咖啡变得柔和，<br> 增加了风味复杂性和香气的层次，<br> 咖啡的烘焙程度，使酸度，醇度和风味达到平衡。<br>
                            风味融合了柑橘、花香以及香料味。<br> 精致的酸质与烘焙所带来的甘甜<br> 为这一炎热的夏天带来沁爽的夏日冰饮体验</p>
                    </div>
                </div>
                <div class="show-mobile tablet-hidden">
                    <a href="#lto-items" class="block relative">
                        <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/coffee-mobile.jpg"
                             class="img">
                    </a>
                    <div class="description text wrapper collapsed">
                        <h2>卡提卡提综合咖啡豆</h2>
                        <div class="body">
                            <p>其中肯亚咖啡豆带来前段醇度和独特的柑橘风味，<br> 而埃塞俄比亚咖啡豆让这款咖啡变得柔和，<br> 增加了风味复杂性和香气的层次，<br>
                                咖啡的烘焙程度，使酸度，醇度和风味达到平衡。<br> 风味融合了柑橘、花香以及香料味。<br> 精致的酸质与烘焙所带来的甘甜<br> 为这一炎热的夏天带来沁爽的夏日冰饮体验
                            </p>
                        </div>
                        <span class="icon"></span>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="mobile-hidden">
                    <a href="#lto-items" class="block relative">
                        <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/food.jpg"
                             class="img">
                    </a>
                    <div class="description text wrapper">
                        <h2>咖啡好食光</h2>
                        <p>可爱小蜜蜂造型，搭配橙花风味内馅，<br> 配上巧克力味淋酱，香味清新，口感绵密，<br> 再配以大麦苗及抹茶的蛋糕胚，清新淡雅。<br> 和小蜜蜂一起，开启夏日体验。</p>
                    </div>
                </div>
                <div class="show-mobile tablet-hidden">
                    <a href="#lto-items" class="block relative">
                        <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/food-moblie.jpg"
                             class="img">
                    </a>
                    <div class="description text wrapper collapsed">
                        <h2>咖啡好食光</h2>
                        <div class="body">
                            <p>可爱小蜜蜂造型，搭配橙花风味内馅，<br> 配上巧克力味淋酱，香味清新，口感绵密，<br> 再配以大麦苗及抹茶的蛋糕胚，清新淡雅。<br> 和小蜜蜂一起，开启夏日体验。</p>
                        </div>
                        <span class="icon"></span>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="mobile-hidden">
                    <a href="#lto-items" class="block relative">
                        <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/beans.jpeg"
                             class="img">
                    </a>
                    <div class="description text wrapper">
                        <h2>夏日乐悠悠 不负这杯好咖啡</h2>
                        <p>日晒埃塞俄比亚耶加雪菲雪冽图咖啡豆<br> 拥有花朵与热带水果般的香气，伴随着红莓般的酸甜。<br> 肯尼亚芭拉吉山咖啡豆黑加仑般的酸甜，<br>
                            花朵般的香气，糖浆般的尾韵让人印象深刻。<br> 卢旺达穆洪多咖啡豆具有可可粉和红糖般的风味，<br> 伴有麦芽般的底韵，口感平衡。<br> 巴西加利福尼亚庄园的咖啡豆，<br>
                            香浓的牛奶巧克力般的风味，伴有烤榛子般的口感。</p>
                    </div>
                </div>
                <div class="show-mobile tablet-hidden">
                    <a href="#lto-items" class="block relative">
                        <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/beans-mobile.jpeg"
                             class="img">
                    </a>
                    <div class="description text wrapper collapsed">
                        <h2>夏日乐悠悠 不负这杯好咖啡</h2>
                        <div class="body">
                            <p>日晒埃塞俄比亚耶加雪菲雪冽图咖啡豆<br> 拥有花朵与热带水果般的香气，伴随着红莓般的酸甜。<br> 肯尼亚芭拉吉山咖啡豆黑加仑般的酸甜，<br>
                                花朵般的香气，糖浆般的尾韵让人印象深刻。<br> 卢旺达穆洪多咖啡豆具有可可粉和红糖般的风味，<br> 伴有麦芽般的底韵，口感平衡。<br>
                                巴西加利福尼亚庄园的咖啡豆，<br> 香浓的牛奶巧克力般的风味，伴有烤榛子般的口感。</p>
                        </div>
                        <span class="icon"></span>
                    </div>
                </div>
            </div>
        </section>
        <section class="lto-items wrapper" id="lto-items">
            <h2>所有新品</h2>
            <div class="grid columns-3 padded-2">


                <div class="item" style="height: 305px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/1.jpg">
                    <p>草莓轻乳酪星冰乐</p>
                </div>


                <div class="item" style="height: 305px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/2.jpg">
                    <p>提拉米苏风味星冰乐</p>
                </div>


                <div class="item" style="height: 305px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/3.jpg">
                    <p>杨枝甘露星冰乐</p>
                </div>


                <div class="item" style="height: 330px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/4.jpg">
                    <p>大溪地风情绵云冷萃</p>
                </div>


                <div class="item" style="height: 330px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/5.jpg">
                    <p>星巴克®卡提卡提综合咖啡豆</p>
                </div>


                <div class="item" style="height: 330px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/6.jpg">
                    <p>星巴克臻选™日晒埃塞俄比亚 耶加雪菲雪冽图咖啡豆</p>
                </div>


                <div class="item" style="height: 330px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/7.jpg">
                    <p>星巴克臻选™巴西 加利福尼亚庄园咖啡豆</p>
                </div>


                <div class="item" style="height: 330px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/8.jpg">
                    <p>星巴克臻选™肯尼亚 芭拉吉山咖啡豆</p>
                </div>


                <div class="item" style="height: 330px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/9.jpg">
                    <p>星巴克臻选™卢旺达 穆洪多咖啡豆</p>
                </div>


                <div class="item" style="height: 305px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/10.jpg">
                    <p>绿色大使会员星礼包</p>
                </div>


                <div class="item" style="height: 305px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/11.jpg">
                    <p>绿色大使会员星礼包</p>
                </div>


                <div class="item" style="height: 305px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/12.jpg">
                    <p>300ml跷跷板款马克杯组</p>
                </div>


                <div class="item" style="height: 330px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/13.PNG">
                    <p>200ml虎牌小熊款保温杯</p>
                </div>


                <div class="item" style="height: 330px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/14.PNG">
                    <p>414ml咖啡动物款玻璃杯套装</p>
                </div>


                <div class="item" style="height: 330px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/15.jpg">
                    <p>591ml欢乐非洲动物款塑料吸管杯</p>
                </div>


                <div class="item" style="height: 330px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/16.png">
                    <p>100ml丛林动物款马克杯</p>
                </div>


                <div class="item" style="height: 330px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/17.PNG">
                    <p>414ml豹纹小熊款玻璃杯套装</p>
                </div>


                <div class="item" style="height: 330px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/18.PNG">
                    <p>500mlContigo河马小熊款吸管杯</p>
                </div>


                <div class="item" style="height: 305px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/19.PNG">
                    <p>384ml豹纹小熊款马克杯</p>
                </div>


                <div class="item" style="height: 305px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/20.PNG">
                    <p>444ml斑马小熊款水瓶套装</p>
                </div>


                <div class="item" style="height: 305px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/21.PNG">
                    <p>384ml豹脚款玻璃杯</p>
                </div>


                <div class="item" style="height: 305px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/22.jpg">
                    <p>350ml膳魔师豹纹款保温杯</p>
                </div>


                <div class="item" style="height: 305px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/23.PNG">
                    <p>473ml粉色豹纹款保温瓶</p>
                </div>


                <div class="item" style="height: 305px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/24.PNG">
                    <p>450ml Contigo豹纹款吸管杯</p>
                </div>


                <div class="item" style="height: 305px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/25.png">
                    <p>473ml粉色豹纹款吸管杯</p>
                </div>


                <div class="item" style="height: 305px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/26.png">
                    <p>340ml粉色豹纹款马克杯</p>
                </div>


                <div class="item" style="height: 305px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/27.jpg">
                    <p>210ml长颈鹿和小熊款保温杯</p>
                </div>


                <div class="item" style="height: 330px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/28.jpg">
                    <p>220ml迷你长颈鹿款不锈钢胶囊杯</p>
                </div>


                <div class="item" style="height: 330px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/29.jpg">
                    <p>370ml膳魔师可爱长颈鹿款吸管杯</p>
                </div>


                <div class="item" style="height: 330px;">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/featured/2020summer/small-pics/30.jpg">
                    <p>初绽蛋糕（橙花味）</p>
                </div>


            </div>
        </section>

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
                        <strong>蓝莓曲奇风轻乳酪蛋糕</strong> </a></li>
                    <li><a class="overlay-close thumbnail" href="">
                        <div class="preview circle"
                             style="background-image: url(staticStyle/imgs/2.jpg)"></div>
                        <strong>焦糖玛奇朵（热/冷）</strong> </a></li>
                    <li><a class="overlay-close thumbnail" href="">
                        <div class="preview circle"
                             style="background-image: url(staticStyle/imgs/3.jpg)"></div>
                        <strong>星巴克®首选咖啡豆</strong> </a></li>
                    <li><a class="overlay-close thumbnail" href="">
                        <div class="preview circle"
                             style="background-image: url(staticStyle/imgs/4.jpg)"></div>
                        <strong>星巴克®肯亚咖啡豆</strong> </a></li>
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
