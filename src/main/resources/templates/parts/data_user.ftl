<#macro login path>
<form action="${path}" method="post">
        <div class="form-group">
            <label class="col-sm-3">Логин</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="username" placeholder="Логин">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3">Пароль</label>
            <div class="col-sm-4">
                <input type="password" class="form-control" name="password" placeholder="Пароль">
            </div>
        </div>

        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <div class="col-sm-5">
            <input type="submit" value="Войти"/>
            <a class="col-sm-2" href="/registration">Add new user</a>
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
    <div class="form-group ">
        <label class="col-sm-3">Фамилия</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="surname" placeholder="Фамилия">
        </div>
    </div>
    <div class="form-group ">
        <label class="col-sm-3">Имя</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="name" placeholder="Имя">
        </div>
    </div>
    <div class="form-group ">
        <label class="col-sm-3">Логин</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="username" placeholder="Логин">
        </div>
    </div>
    <div class="form-group ">
        <label class="col-sm-3">Пароль</label>
        <div class="col-sm-4">
            <input type="password" class="form-control" name="password" placeholder="Пароль">
        </div>
    </div>
    <div class="form-group ">
        <label class="col-sm-3">Повторите пароль</label>
        <div class="col-sm-4">
            <input type="password" class="form-control" name="passwordRP" placeholder="Пароль">
        </div>
    </div>
    <div class="form-group ">
        <label class="col-sm-3">Адрес электронной почты</label>
        <div class="col-sm-4">
            <input type="email" class="form-control" name="email" aria-describedby="emailHelp" placeholder="Адрес электронной почты">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
    </div>

    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <div class="col-sm-5">
        <input type="submit" value="Зарегистрироваться"/>
    </div>
</form>
</#macro>