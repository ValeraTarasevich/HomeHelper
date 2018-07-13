<#import "parts/common.ftl" as c>
<#import "parts/data_user.ftl" as log>
<@c.page>
<div>
    <@log.logout />
    <span><a href="/user">User list</a></span>
</div>
 <div>
    <form method="post">
        <input type="text" name="text" placeholder="Enter msg"/>
        <input type="text" name="tag" placeholder="Enter tag">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit">Add</button>
    </form>
</div>
<div>Список сообщений</div>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
        </div>
    <#else> No message
    </#list>
</@c.page>