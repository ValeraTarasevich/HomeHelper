<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>HomeHelper</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<div class="container mt-3">
    <form action="/user" method="post">
        <div class="form-group row">
            <label class="col-sm-1 col-form-label">Логин:</label>
            <div class="col-sm-4">
                <input type="text" readonly class="form-control-plaintext" name="username" value="${user.username}">
            </div>
        </div>

    <#list roles as role>
        <div>
            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label
        </div>
    </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button type="submit">Save</button>
    </form>
</div>
</body>
</html>