<!doctype html>
<title>Back page of system</title>
<link href="/static/owners.css" rel="stylesheet">

<form method='get'action='/'><button type='submit'><img src="images/logo.png" width="50"></button></form>


<div class="tble">
    <table>
        <tr>
            <th>Delete</th>
            <th>Edit Property</th>
            <th>Title ID</th>
            <th>Property title</th>
            <th>price per week</th>
            <th>Bathrooms</th>
            <th>Bedrooms</th>
            <th>Suburb</th>
            <th>R or C</th>
            <th>Pets allowed</th>
            <th>Garage</th>
            <th>Fully Furnished</th>
            <th>Available</th>
        </tr>
        <tr>
            <th>
                <div class="minus">
                <form action="/del_prop" method="GET">
                    <button type='submit' >-</button>
                </form>
                </div>
            </th>
            <th>
                <div class="edit">
                    <form method='get'action='/landlords'>
                        <button type="submit">Edit property</button>
                    </form>
                    </div>
            </th>
            <th>1</th>
            <th>123 Sesame St</th>
            <th>$175</th>
            <th>1</th>
            <th>50</th>
            <th>Muppet City</th>
            <th>R</th>
            <th>Yes</th>
            <th>No</th>
            <th>Yes</th>
            <th>No</th>
            
        </tr>

</table>
</div>  

<form action="/new" method="GET">
    <button type="submit">New property</button>
</form>