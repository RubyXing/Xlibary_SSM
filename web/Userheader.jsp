<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<header class="header">
    <a class="logo" href="/Xlibrary/">
        <img src="staticStyle/imgs/library_icon.svg" alt="图书馆">
    </a>
    <div class="primary">
        <ul>
            <li class="account">
                <a id="account-primary" href=""><span data-reactroot="" class="">我的借阅</span></a>
            </li>
            <li class="menu">
                <a id="menu-primary" href="/user/detail/${sessionScope.id}" class="active">
                    ${sessionScope.name}
                </a>
            </li>
            <li class="stores">
                <img src="staticStyle/imgs/member${sessionScope.authority}.svg" width="20px" height="20px"
                     style="margin-top: 6px;">
            </li>
        </ul>
    </div>

</header>
