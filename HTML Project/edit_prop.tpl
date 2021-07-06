<link href="/static/generic.css" rel="stylesheet">
<p>Edit the property with title = {{old1}}</p>
<form action="/edit/{{old1}}" method="get">
    <label for= "property_title">{{old1}}</label> <br>
    <input type="text" size="50" maxlength="50" name="property_title">

    <br>
    <label>Price</label>
    <select id="price" name="price" placeholder="{{old}}">
            <option value="Any" name="Any">Any</option>

            #for i in range(1,14):

                <option value="{{i*50}}" name="{{i*50}}">{{i*50}}±</option>

            %end

            <!--<option value="50" name="50">50±</option>
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
            <option value="650" name="650">650±</option>-->
    </select>
    </label>
    <br>
    <!-- change to slider bar-->
    <label for="bathrooms">bathrooms:</label>
    <input type="number" id="bathrooms" name="bathrooms" min="0" max="10" placeholder="{{old2}}"> <br>

    <label for="bedrooms">bedrooms:</label>
    <input type="number" id="bedrooms" name="bedrooms" min="0" max="10" placeholder="{{old3}}"><br>


    <label>Suburb
    <select id="suburbs" name="suburbs">
        <option value="{{old4}}" name="{{old4}}">{{old4}}</option>
        %suburbs = ["Any","Manakau","Epsom","One Tree Hill","Howick","Pakuranga","Henderson","Botany Downs","Glen Innes","Glendowie","Ellerslie","Papakura","St Johns","Grey Lynn","Remuera","Mt Wellington","Meadowbank","St Heliers"] 
        %suburbs.remove(old4)
        %for i in suburbs:
        <option value="{{i}}" name="{{i}}">{{i}}</option>
        %end
        <!--<option value="" name=""></option>-->

<!--"Manakau","Epsom","One Tree Hill","Howick","Pakuranga","Henderson","Botany Downs","Glen Innes","Glendowie","Ellerslie","Papakura","St Johns","Grey Lynn","Remuera","Mt Wellington","Meadowbank","St Heliers"-->
    </select>
    </label>
    <br>

    <!-- change to dropdown-->

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