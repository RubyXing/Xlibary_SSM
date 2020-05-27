<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                            <a id="side_menu_default" href="/book/listBooks/1" class="active">
                                图书列表
                            </a>
                        </li>

                        <li>
                            <a id="side_menu_beverages" href="/menu/beverages/">
                                借阅记录
                            </a>
                        </li>

                        <li>
                            <a id="side_menu_food" href="${baseUrl}/UserSelf.jsp">
                                个人信息
                            </a>
                        </li>
                        <c:if test="${sessionScope.authority==3}">
                            <li>
                                <a id="side_menu_coffee" href="/book/coffee">
                                    图书管理
                                </a>
                            </li>

                            <li>
                                <a id="side_menu_merchandise" href="/user/merchandise">
                                    用户管理
                                </a>
                            </li>
                        </c:if>


                    </ul>
                </div>

            </nav>

        </div>
    </div>

</nav>