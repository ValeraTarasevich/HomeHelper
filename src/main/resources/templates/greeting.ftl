<#import "parts/common.ftl" as c>
<#import "parts/modalWin.ftl" as mod>

<@c.page>
<div class="main">
    <div class="logo-position">
        <img src="/img/newlogo.png">
    </div>
    <br><br>
    <div class="content">
        <p>Компания "Home Helper" более 10 лет занимается ремонтом и отделкой квартир и коттеджей в Республике Беларусь под ключ.
            Высокие стандарты качества и низкие цены позволили нам занять лидирующие позиции на рынке.</p>
        <p>Наше кредо - <strong>"Любую работу нужно делать хорошо или не делать вовсе".</strong></p>
    </div>
    <br>
    <div class="content">
        <a href="#call">
            <button class="mybtn btn-default">Заказать звонок</button>
        </a>
        <@mod.modal "call" />
        <button class="mybtn btn-default" type="button">Каталог услуг</button>
    </div>
</div>
</@c.page>