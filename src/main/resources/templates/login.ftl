<#import "parts/common.ftl" as c>
<#import "parts/data_user.ftl" as log>
<@c.page>
<br>
<#if Session?? && Session.SPRING_SECURITY_LAST_EXCEPTION??>
    <div class="alert alert-danger" role="alert">
        ${Session.SPRING_SECURITY_LAST_EXCEPTION.message}
    </div>
</#if>
<@log.login "/login" />
</@c.page>