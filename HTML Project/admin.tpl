<!doctype html>
<title>Admin Login</title>
<link href="/static/admin.css" rel="stylesheet">

<h1>Login Screen</h1>
<div class="usr">
<form action="/admin" method="POST">
<label for="username"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username" id="username"  required>
</div>
<div class="psw">
<label for="password"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" id="password" required>
</div> <!-- whatever they enter i want to save as variable then route it back to python file-->
    <p>
<div class="signin">
<h2>
    <input type="submit" value="Login" >
</form>
</h2>
</div>
<div class='home'>
<form method='get'action='/'><button type='submit'><img src="images/logo.png" width="100px" height="100px"></button></form>
<br>
</div>