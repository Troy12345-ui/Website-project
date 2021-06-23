<link href="/static/generic.css" rel="stylesheet">

<h1>
Select a property title to delete 
</h1>


<form>
    <select name="property_title">
    %for i in proptitle:
        <option value="{{i}}" name="{{i}}">{{i}}</option>
        %end
    </select>
</form>

<h1>Are You Sure you Want to delete this property</h1>

<div class="accept">
<form action="/del_prop" method="GET">
    <button type="submit" name="delprop" value="delete this property">Yes</button>
</form>
</div>

<div class="decline">
<form action="/owners" method="GET">
    <button type="submit">No</button>
</form>
</div>