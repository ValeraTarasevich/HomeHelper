<#include "security.ftl">
<#import "modalWin.ftl" as mod>

<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav header-place">
            <a class="nav-item nav-link active" href="/"><i class="fa fa-home"></i>Главная</a>
            <a class="nav-item nav-link" href="/">Каталог услуг</a>
            <a class="nav-item nav-link" href="Works.jsp">Наши работы</a>
            <a class="nav-item nav-link" href="Contact.jsp">Контакты</a>
            <#if isAdmin>
            <a class="nav-item nav-link" href="/user">Список пользователей</a>
            </#if>
        </div>

        <div class="navbar-nav header-place-two">
            <#if name != "unknown">
                <div class="navbar-text">${name}</div>
                <form action="/logout" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}" />
                    <input type="submit" value="Выйти" />
                </form>
            <#else>
                <a class="nav-item nav-link" href="/registration">Регистрация</a>
                <a class="nav-item nav-link" href="/login">Войти</a>
            </#if>
        </div>
    </div>
</nav>
