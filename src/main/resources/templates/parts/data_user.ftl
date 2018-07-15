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
                    <input type="text" class="form-control ${(surnameError??)?string('is-invalid', '')}"
                           name="surname" placeholder="Фамилия" value="<#if user??>${user.surname}</#if>">
                    <#if surnameError??>
                        <div class="invalid-feedback">
                            ${surnameError}
                        </div>
                    </#if>
                </div>
            </div>
            <div class="form-group ">
                <label class="col-sm-3">Имя</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control ${(nameError??)?string('is-invalid', '')}"
                           name="name" placeholder="Имя" value="<#if user??>${user.name}</#if>">
                     <#if nameError??>
                        <div class="invalid-feedback">
                            ${nameError}
                        </div>
                     </#if>
                </div>
            </div>
            <div class="form-group ">
                <label class="col-sm-3">Логин</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control ${(usernameError??)?string('is-invalid', '')}"
                           name="username" placeholder="Логин" value="<#if user??>${user.username}</#if>">
                    <#if usernameError??>
                        <div class="invalid-feedback">
                            ${usernameError}
                        </div>
                    </#if>
                </div>
            </div>
            <div class="form-group ">
                <label class="col-sm-3">Пароль</label>
                <div class="col-sm-8">
                    <input type="password" class="form-control ${(passwordError??)?string('is-invalid', '')}"
                           name="password" placeholder="Пароль">
                    <#if passwordError??>
                        <div class="invalid-feedback">
                            ${passwordError}
                        </div>
                    </#if>
                </div>
            </div>
            <div class="form-group ">
                <label class="col-sm-5">Повторите пароль</label>
                <div class="col-sm-8">
                    <input type="password" class="form-control ${(passwordError??)?string('is-invalid', '')}"
                           name="password2" placeholder="Пароль">
                    <#if password2Error??>
                        <div class="invalid-feedback">
                            ${password2Error}
                        </div>
                    </#if>
                </div>
            </div>
            <div class="form-group ">
                <label class="col-sm-6">Адрес электронной почты</label>
                <div class="col-sm-8">
                    <input type="email" class="form-control ${(emailError??)?string('is-invalid', '')}"
                           name="email" aria-describedby="emailHelp" placeholder="Адрес электронной почты"
                           value="<#if user??>${user.email}</#if>">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    <#if emailError??>
                        <div class="invalid-feedback">
                            ${emailError}
                        </div>
                    </#if>
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