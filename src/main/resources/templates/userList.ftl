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
<div class="container userList mt-4">
    <table>
        <thead>
        <tr>
            <th>Логин</th>
            <th>Имя</th>
            <th>Фамилия</th>
            <th>Пароль</th>
            <th>Электронный адрес</th>
            <th>Роль</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
        <tr>
            <td>${user.username}</td>
            <td>${user.name}</td>
            <td>${user.surname}</td>
            <td>${user.password}</td>
            <td>${user.email}</td>
            <td><#list user.roles as role>${role}<#sep>, </#list></td>
            <td><a href="/user/${user.id}">Изменить роль</a></td>
        </tr>
        </#list>
        </tbody>
    </table>
    <a href="/">
        <button class="btn btn-default">На главную</button>
    </a>
</div>

</body>
</html>
