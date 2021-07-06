<link href="/static/generic.css" rel="stylesheet">

<h1>
Select a property title to delete 
</h1>

<div class="choose">
<form action="/del_prop" method="GET">
    <select name="id">
    %for i in ids:
        <option value="{{i[0]}}">{{i[0]}}</option>
        %end
    </select>
    <h1>Are You Sure you Want to delete this property</h1>
    <div class="accept">
    <input type="submit" name="delprop" value="Yes">
    </div>
</form>
</div>





<div class="decline">
<form action="/owners" method="GET">
    <button type="submit">No</button>
</form>
</div>

<div class="backboy">
<form action="/owners">
    <input type="submit" value="Back To Admin Page">
</form>
</div>