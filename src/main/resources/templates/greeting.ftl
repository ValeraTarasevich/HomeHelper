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
 <div class="advantages">
     <br>
     <h3><strong>НАШИ ПРЕИМУЩЕСТВА</strong></h3>
     <div class="row">
         <div class="col-md-6">
             <a class="icon icon-primary icon-lg" style="margin: 35px;">
                 <i class="fa fa-car" style="margin: 35px;"></i>
             </a>
             <p>
                 ВЫЕЗД СПЕЦИАЛИСТОВ И РАСЧЕТ СМЕТЫ БЕСПЛАТНО
             </p>
         </div>
         <div class="col-md-6">
             <a class="icon icon-primary icon-lg" style="margin: 35px;">
                 <i class="fa fa-users" style="margin: 35px;"></i>
             </a>
             <p>
                 БРИГАДА МАСТЕРОВ: ДЕЛАЕМ КАЧЕСТВЕННО И В СРОК
             </p>
         </div>
         <div class="col-md-6">
             <a class="icon icon-primary icon-lg" style="margin: 35px;">
                 <i class="fa fa-check-square-o" style="margin: 35px;"></i>
             </a>
             <p>
                 ПОЭТАПНАЯ ОПЛАТА РАБОТ
             </p>
         </div>
         <div class="col-md-6">
             <a class="icon icon-primary icon-lg" style="margin: 35px;">
                 <i class="fa fa-gift" style="margin: 35px;"></i>
             </a>
             <p>
                 ДОПОЛНИТЕЛЬНЫЕ СКИДКИ
             </p>
         </div>
     </div>
 </div>
<div class="price">
    <br><br>
    <table>
        <h3><strong>НАШИ ЦЕНЫ</strong></h3>
        <tr>
            <th>Наименование работ</th>
            <th>Цена</th>
        </tr>
        <tr>
            <td>Глянцевый натяжной потолок</td>
            <td>20 руб. м²</td>
        </tr>
        <tr>
            <td>Матовый натяжной потолок</td>
            <td>20 руб. м²</td>
        </tr>
        <tr>
            <td>Сатиновый натяжной потолок</td>
            <td>20 руб. м²</td>
        </tr>
        <tr>
            <td>Тканевый натяжной потолок</td>
            <td>35 руб. м²</td>
        </tr>
    </table>
</div>
</@c.page>