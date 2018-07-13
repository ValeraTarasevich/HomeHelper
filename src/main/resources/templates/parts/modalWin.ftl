<#macro modal path>
        <div id="${path}" class="modalDialog">
            <div>
                <a href="#close" title="Закрыть" class="close">X</a>
                <h2>Заказать звонок</h2>
                <input type="text" id="inputName" name="inputName" class="form-control" placeholder="Введите имя" required=""><br>
                <input type="text" id="inputPhone" name="inputPhone" class="form-control" placeholder="Введите телефон" required=""><br>
                <input class="mybtn btn-default" type="submit" value="Заказать звонок">
            </div>
        </div>
</#macro>