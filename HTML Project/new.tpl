
<link href="/static/generic.css" rel="stylesheet" >
<div class="newstuff">
<form action="/new" method="GET">
    <label for= "property_title">Property name</label> <br>
    <input type="text" size="50" maxlength="50" name="property_title">

    <br>
    <label>Price per Week</label>
    <select id="price" name="price">
            <option value="Any" name="Any">Any</option>
            <option value="$500" name="$500">$500</option>
            <option value="$600" name="$600">$600</option>
            <option value="$700" name="$700">$700</option>
            <option value="$800" name="$800">$800</option>
            <option value="$900" name="$900">$900</option>
            <option value="$1000" name="$1000">$1000</option>
            <option value="$1100" name="$1100">$1100</option>
            <option value="$1200" name="$1200">$1200</option>



        

    </select>
    </label>
    <br>
    <!-- change to slider bar-->
    <label for="bathrooms">bathrooms:</label>
    <input type="number" id="bathrooms" name="bathrooms" min="0" max="10"> <br>

    <label for="bedrooms">bedrooms:</label>
    <input type="number" id="bedrooms" name="bedrooms" min="0" max="10"> <br>


    <label>Suburb
    <select id="suburbs" name="suburbs">
        <option value="Manakau" name="Manakau">Manakau</option>
        <option value="Epsom" name="Epsom">Epsom</option>
        <option value="One Tree Hill" name="One Tree Hill">One Tree Hill</option>
        <option value="Howick" name="Howick">Howick</option>
        <option value="Pakuranga" name="Pakuranga">Pakuranga</option>
        <option value="Henderson" name="Henderson">Henderson</option>
        <option value="Botany Downs" name="Botany Downs">Botany Downs</option>
        <option value="Glen Innes" name="Glen Innes">Glen Innes</option>
        <option value="Glendowie" name="Glendowie">Glendowie</option>
        <option value="Ellerslie" name="Ellerslie">Ellerslie</option>
        <option value="St Heliers" name="St Heliers">St Heliers</option>
        <option value="Mt Wellington" name="Mt Wellington">Mt Wellington</option>
        <option value="Grafton" name="Grafton">Grafton</option>
        <option value="Newmarket" name="Newmarket">Newmarket</option>
        <option value="Balmoral" name="Balmoral">Balmoral</option>
        <option value="Mt Eden" name="Mt Eden">Mt Eden</option>
        <option value="Mt Roskill" name="Mt Roskill">Mt Roskill</option>
        <option value="Mission Bay" name="Mission Bay">Mission Bay</option>
        <option value="Panmure" name="Panmure">Panmure</option>
        <option value="Parnell" name="Parnell">Parnell</option>
        <option value="Penrose" name="Penrose">Penrose</option>
        <option value="Mt Albert" name="Mt Albert">Mt Albert</option>
        <option value="Remuera" name="Remuera">Remuera</option>


        <!--<option value="" name=""></option>-->

<!--"Manakau","Epsom","One Tree Hill","Howick","Pakuranga","Henderson","Botany Downs","Glen Innes","Glendowie","Ellerslie","Papakura","St Johns","Grey Lynn","Remuera","Mt Wellington","Meadowbank","St Heliers"-->
    </select>
    </label>
    <br>

    <!-- change to dropdown-->

    <input type="checkbox" name="pets_allowed" value="pets_allowed" checked="checked">
    <label for= "pets_allowed">Pets allowed</label> <br>
    <input type="checkbox" name="garage" value="garage">
    <label for= "garage">Garage(s) available</label> <br>
    <input type="checkbox" name="furnished" value="furnished">
    <label for= "furnished">Fully furnished</label> <br>

    <label for="available">available:</label>
    <select id="available" name="available">
        <option name="yes" value="yes">yes<option>
        <option name="no" value="no">no<option>
    </select>
    <!-- NOT WORKING-->
     <br>
    <input type="submit" value="Save The Property" name="save">

    
</form>
<form action="/owners">
    <input type="submit" value="Back To Admin Page">
</form>
</div>