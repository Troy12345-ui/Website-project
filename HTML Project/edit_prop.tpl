<link href="/static/generic.css" rel="stylesheet">
<div class='editstuff'>
<p>Edit the property with title = {{old1}}</p>
<form action="/edit_prop" method="GET">
    <label for= "property_title">Property Title</label> <br>
    <input type="text" size="50" maxlength="50" value="{{old1}}"name="property_title">

    <br>
    <label>Price</label>
    <select id="price" name="price" placeholder="{{old}}">
            <option value="50" name="50">50±</option>
            <option value="100" name="100">100±</option>
            <option value="150" name="150">150±</option>
            <option value="200" name="200">200±</option>
            <option value="250" name="250">250±</option>
            <option value="300" name="300">300±</option>
            <option value="350" name="350">350±</option>
            <option value="400" name="400">400±</option>
            <option value="450" name="450">450±</option>
            <option value="500" name="500">500±</option>
            <option value="550" name="550">550±</option>
            <option value="600" name="600">600±</option>
            <option value="650" name="650">650±</option>


    </select>
    </label>
    <br>

    <label for="bathrooms">bathrooms:</label>
    <input type="number" id="bathrooms" name="bathrooms" min="0" max="10" placeholder="{{old2}}"> <br>

    <label for="bedrooms">bedrooms:</label>
    <input type="number" id="bedrooms" name="bedrooms" min="0" max="10" placeholder="{{old3}}"><br>





    <input type="checkbox" name="pets_in2" value="pets_in2" checked="checked">
    <label for= "pets_allowed">Pets allowed</label> <br>
    <input type="checkbox" name="cars2_allowed" value="cars2_allowed">
    <label for= "garage">Garage(s) available</label> <br>
    <input type="checkbox" name="chairs2" value="chairs2">
    <label for= "furnished">Fully furnished</label> <br>

    <label for="available">available:</label>
    <select id="available" name="available">
        <option name="yes" value="yes">yes<option>
        <option name="no" value="no">no<option>
    </select>
    <input type="submit" name="correct" value="Save the property">
</form>

<div class="backboy">
<form action="/owners">
    <input type="submit" value="Back To Admin Page">
</form>
</div>
</div>