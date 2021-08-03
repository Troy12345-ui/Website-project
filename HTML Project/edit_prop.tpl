<link href="/static/generic.css" rel="stylesheet">
<p>Edit the property with title = {{old1}}</p>
<form action="/edit_prop" method="GET">
    <label for= "property_title">Property Title</label> <br>
    <input type="text" size="50" maxlength="50" value="{{old1}}"name="property_title">

    <br>
    <label>Price</label>
    <select id="price" name="price" placeholder="{{old}}">
            %i = 10
            #for i[0] in range(1,14):
                <option value="{{i*50}}" name="{{i*50}}">{{i*50}}±</option>
            %end


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