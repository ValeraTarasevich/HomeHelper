<#macro login path>
<form action="${path}" method="post">
    <div class="row">
    <div class="col-md-6">
        <div class="form-group">
            <label class="col-sm-3">Логин</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="username" placeholder="Логин">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3">Пароль</label>
            <div class="col-sm-8">
                <input type="password" class="form-control" name="password" placeholder="Пароль">
            </div>
        </div>

        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <div class="col-sm-6">
            <button class="btn btn-default" type="submit">Войти</button>
            <a class="col-sm-6" href="/registration">Add new user</a>
        </div>
    </div>
    <div class="col-md-6">
        <img src="/img/log.jpg" width="420" height="350">
    </div>
    </div>
</form>
</#macro>

<#macro logout>
  <form action="/logout" method="post">
      <input type="hidden" name="_csrf" value="${_csrf.token}" />
      <input type="submit" value="Выйти" />
  </form>
</#macro>

<#macro registration path>
<form action="${path}" method="post">
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
                <label class="col-sm-3">Логин</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" name="username" placeholder="Логин">
                </div>
            </div>
            <div class="form-group ">
                <label class="col-sm-3">Пароль</label>
                <div class="col-sm-8">
                    <input type="password" class="form-control" name="password" placeholder="Пароль">
                </div>
            </div>
            <div class="form-group ">
                <label class="col-sm-5">Повторите пароль</label>
                <div class="col-sm-8">
                    <input type="password" class="form-control" name="passwordRP" placeholder="Пароль">
                </div>
            </div>
            <div class="form-group ">
                <label class="col-sm-6">Адрес электронной почты</label>
                <div class="col-sm-8">
                    <input type="email" class="form-control" name="email" aria-describedby="emailHelp" placeholder="Адрес электронной почты">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>
            </div>

            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <div class="col-sm-5">
                <button class="btn btn-default" type="submit">Войти</button>
            </div>
        </div>
        <div class="col-md-6">
            <img src="/img/reg.jpg" width="400" height="500">
        </div>
    </div>
</form>
</#macro>