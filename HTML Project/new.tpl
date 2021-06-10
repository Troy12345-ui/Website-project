<form action="/new" method="GET">
    <input type="text" size="50" maxlength="50" name="property_title">
    <label for= "property_title">Property name</label> <br>
    
    <input type="text" size="50" maxlength="50" name="price">
    <label for= "price">Price</label> <br>

    <label for="bathrooms">bathrooms:</label>
    <input type="number" id="bathrooms" name="bathrooms" min="0" max="10"> <br>

    <label for="bedrooms">bedrooms:</label>
    <input type="number" id="bedrooms" name="bedrooms" min="0" max="10"> <br>

    <input type="text" size="50" maxlength="50" name="suburbs">
    <label for= "suburbs">Suburb</label> <br>

    <input type="radio" id="residential" name="r_or_c" value="1">
    <label for= "residential">Residential</label> <br>
    OR <br>
    <input type="radio" id="commercial" name="r_or_c" value="0">
    <label for= "commercial">Commercial</label> <br>

    <input type="checkbox" name="pets_allowed" value="yes1">
    <label for= "pets_allowed">Pets allowed</label> <br>
    <input type="checkbox" name="garage" value="yes2">
    <label for= "garage">Garage(s) avaiable</label> <br>
    <input type="checkbox" name="furnished" value="yes3">
    <label for= "furnished">Fully furnished</label> <br>

    <label for="available">available:</label>
    <input type="number" id="available" name="available" min="0" max="1"> <br>

    <input type="submit" name="save" value="Save the property">
</form>