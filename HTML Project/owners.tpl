<!doctype html>
<title>Back page of system</title>
<link href="/static/owners.css" rel="stylesheet">

<form method='get'action='/'><button type='submit'><img src="images/logo.png" width="50"></button></form>


<div class="tble">
    <table>
        <tr>
            <th>Property title</th>
            <th>price per week</th>
            <th>Bathrooms</th>
            <th>Bedrooms</th>
            <th>Suburb</th>
            <th>Pets allowed</th>
            <th>Garage</th>
            <th>Fully Furnished</th>
            <th>Available</th>
        </tr>
        %for row in rows:
        <tr>
        %for col in row:
            <td>{{col}}</td>
        %end
        <td>
                <form action="/edit" method="GET">
                    <button type="submit">Edit Property</button>
                </form>
        </td>

    %end

</table>
</div>
<br>
 
<div class="endbutt">
<form action="/new" method="GET">
    <button type="submit">New property</button>
</form>
<div class="minus">
    <form action="/del_prop" method="GET">
        <button type='submit' name="delplease" value="delplease">-</button>
    </form>
</div>

<br>
<form action="/owners">
    <button type="submit">Refresh</button>
</form>
        <form action="/edit" method="GET">
                <button type="submit">Edit Property</button>
        </form>
</div>

<!-- what to do
do the delete property
get an edit button at end of each row that when sent to edit property page displays current values for them which then get changed
get all that to display in property page when searching for specific variables in specific format -->
