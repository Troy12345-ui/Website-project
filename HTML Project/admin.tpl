<!doctype html>
<title>Admin Login</title>
<link href="/static/admin.css" rel="stylesheet">

<h1>Login Screen</h1>
<form class="login" action="/admin" method="POST">
    <div class="usr">
        <label for="username">
            <b>Username</b>
        </label>
        <input type="text" placeholder="Enter Username" name="username" id="username"  required>
    </div>
    <div class="psw">
        <label for="password">
            <b>Password</b>
        </label>
        <input type="password" placeholder="Enter Password" name="password" id="password" required>
    </div> <!-- whatever they enter i want to save as variable then route it back to python file-->
    <div class="signin">
        <h2>
            <input type="submit" value="Login" >
        </h2>
    </div>
</form>
<div class='home'>
    <form method='get'action='/'><button type='submit'><img src="/images/rpml.png" width="100px" height="100px"></button></form>
    <br>
</div>