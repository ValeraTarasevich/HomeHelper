<#import "parts/common.ftl" as c>
<@c.page>
<br>
    <h5>${username}</h5>
    ${message?ifExists}
<form method="post">
    <div class="row">
        <div class="col-md-6">
            <div class="form-group ">
                <label class="col-sm-3">Фамилия</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" name="surname" placeholder="Фамилия">
                </div>
            </div>
            <div class="form-group ">
                <label class="col-sm-3">Имя</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" name="name" placeholder="Имя">
                </div>
            </div>
            <div class="form-group ">
                <label class="col-sm-3">Пароль</label>
                <div class="col-sm-8">
                    <input type="password" class="form-control" name="password" placeholder="Пароль">
                </div>
                <div class="form-group ">
                    <label class="col-sm-6">Адрес электронной почты</label>
                    <div class="col-sm-8">
                        <input type="email" class="form-control" name="email" placeholder="Адрес электронной почты">
                    </div>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <div class="col-sm-5">
                    <button class="btn btn-default" type="submit">Сохранить</button>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <img src="/img/profile.jpg" width="400" height="400">
        </div>
</form>

</@c.page>