<#import "parts/common.ftl" as c>
<#import "parts/data_user.ftl" as log>
<@c.page>
<br>
${message?ifExists}
<@log.registration "/registration" />
</@c.page>