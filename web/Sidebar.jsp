<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav id="nav">
    <div id="placeholder-element"></div>
    <div class="container">
        <jsp:include page="Userheader.jsp"/>

        <div class="body">
            <nav class="container middle secondary">
                <div class="tabs-wrapper">
                    <ul class="subcategories">

                        <li>
                            <a id="side_menu_default" href="/menu/" class="active">
                                季度精选
                            </a>
                        </li>

                        <li>
                            <a id="side_menu_beverages" href="/menu/beverages/">
                                饮料
                            </a>
                        </li>

                        <li>
                            <a id="side_menu_food" href="/menu/food/">
                                美食
                            </a>
                        </li>

                        <li>
                            <a id="side_menu_coffee" href="/menu/coffee/">
                                咖啡产品
                            </a>
                        </li>

                        <li>
                            <a id="side_menu_merchandise" href="/menu/merchandise/">
                                商品
                            </a>
                        </li>

                    </ul>
                </div>

            </nav>

        </div>
    </div>


    <div class="overlay " id="nav-overlay">
        <div class="container">
            <header class="header">
                <a class="logo" href="/">
                    <img src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/images/logo.svg" alt="星巴克">
                </a>
                <button class="icon close">Close</button>
            </header>
            <section class="body">
                <div class="container middle">
                    <ul>

                        <li>
                            <a id="stores-overlay" href="/stores/">
                                门店
                            </a>
                        </li>


                        <li>
                            <a id="account-overlay" href="/account/starbucks-rewards/"><span data-reactroot="" class="">星享俱乐部</span></a>
                        </li>


                        <li>
                            <a id="menu-overlay" href="/menu/" class="active">
                                菜单
                            </a>
                        </li>
                        <li>
                            <hr>
                        </li>

                        <li>
                            <a id="apps-overlay" href="/apps/">
                                星巴克移动应用
                            </a>
                        </li>


                        <li>
                            <a id="svc-overlay" href="/starbucks-gift-card/">
                                星礼卡
                            </a>
                        </li>


                        <li>
                            <a id="starbucks_reserve-overlay" href="/starbucks-reserve/">
                                星巴克臻选™
                            </a>
                        </li>


                        <li>
                            <a id="starbucks_mop-overlay" href="/starbucks-now/">
                                啡快™ － 在线点 到店取
                            </a>
                        </li>


                        <li>
                            <a id="starbucks_delivery-overlay" href="/starbucks-delivers-info/">
                                专星送™
                            </a>
                        </li>


                        <li>
                            <a id="coffeehouse-overlay" href="/coffee-blog" target="_blank">
                                咖啡星讲堂
                            </a>
                        </li>


                        <li>
                            <a id="roastery-overlay" href="https://roastery.starbucks.com.cn/" target="_blank">
                                上海烘焙工坊
                            </a>
                        </li>


                        <li>
                            <a id="about-overlay" href="/about/">
                                关于星巴克
                            </a>
                        </li>


                        <li>
                            <a id="help-overlay" href="/help/">
                                帮助中心
                            </a>
                        </li>


                        <li>
                            <hr>
                        </li>
                    </ul>
                    <footer class="account">
                        <div id="account-logout"><span data-reactroot=""><a id="menu-login" class="sign-in"
                                                                            href="/account/"><img
                                src="/assets/icons/icon-account.svg"><span><span>登录</span></span></a><a id="menu-join"
                                                                                                        class="button small register"
                                                                                                        href="/account/register/"><span><span>注册</span></span></a></span>
                        </div>
                    </footer>
                </div>
            </section>
            <footer class="footer">
                <div class="container">


                    <a id="en-collapse" class="lang" href='javascript:void(window.location.pathname = "/en/menu/")'>
                        English
                    </a>


                    |
                    <a id="privacy-collapse" href="/help/legal/privacy-policy">
                        隐私政策
                    </a>
                    |
                    <a id="terms-collapse" href="/help/legal/terms-of-starbucks-website/">
                        使用条款
                    </a>
                </div>
            </footer>
        </div>
    </div>

</nav>