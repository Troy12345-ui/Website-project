<!doctype html>
<title>Property Search</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/static/_property.css" rel="stylesheet" >
<div class="home">
<form method='get'action='/'><button type='submit'><img src="images/logo.png" width="50"></button></form>
</div>
<h1>Which Property would you Like to Find.</h1>



<div class="dropdown">
<div class="sub">
<form>
    <label>Suburb
    <select id="suburb" name="suburb">
        <option value="0">Any</option>

        % suburbs = ["Manakau","Epsom","One Tree Hill","Howick","Pakurange","Henderson","Botany Downs","Glen Innes","Glendowie","Ellerslie","Papakura","St Johns","Grey Lynn","Remuera","Mt Wellington","Meadowbank"]
        % for i in range(len(suburbs)):
            <option value="{{i+1}}">{{suburbs[i]}}</option>
        %end

    </select>
    </label>
</form>
</div>
        <div class="bedroom">
            <form>
                <label>Bedrooms
                <select id="bedroom" name="bedroom">
                    <option value="blank">Any</option>
                    <option value="1">1</option>
                    <option value="2">2+</option>
                    <option value="3">3+</option>
                    <option value="4">4+</option>
                    <option value="5">5+</option>
                    <option value="6">6+</option>
                    <option value="7">7+</option>
                    <option value="8">8+</option>
                    <option value="9">9+</option>
                    <option value="10">10+</option>
                </select>
                </label>
            </form>
            </div>
            <div class="bathroom">
                <form>
                    <label>Bathrooms
                    <select id="bathroom" name="bathroom">
                        <option value="blank">Any</option>
                        <option value="1">1</option>
                        <option value="2">2+</option>
                        <option value="3">3+</option>
                        <option value="4">4+</option>
                        <option value="5">5+</option>
                        <option value="6">6+</option>
                        <option value="7">7+</option>
                        <option value="8">8+</option>
                        <option value="9">9+</option>
                        <option value="10">10+</option>
                    </select>
                    </label>
                </form>
                </div>
                
</div>

<div class="slidecontainer">
    <p>Price per week: $<span id="demo"></span>+_100</p>
    <input type="range" min="100" max="1000" value="550" class="slider" id="myRange">
  </div>



<div class="checks">
<label class="container">Pets Allowed
    <input type="checkbox" checked="checked">
    <span class="checkmark"></span>
  </label>
  <label class="container">Garage
    <input type="checkbox" checked="checked">
    <span class="checkmark"></span>
  </label>
  <label class="container">Fully Furnished
    <input type="checkbox" checked="checked">
    <span class="checkmark"></span>
  </label>
  </div>

  <div class="radio">
    <label class="container">Residential
        <input type="radio" checked="checked" name="radio">
        <span class="checkmark"></span>
      </label>
      <label class="container">Commercial
        <input type="radio" name="radio">
        <span class="checkmark"></span>
      </label>
      </div>
      <form class="search">
          <button type='submit'>Search</button>
      </form>

<div class='proplisting'>
<table>
    <tr>
        <th>Prop 1</th>
        <th>Prop 2</th>
        <th>Prop 3</th>
    </tr>
    <tr>
        <th>Prop 1</th>
        <th>Prop 2</th>
        <th>Prop 3</th>
    </tr>
    <tr>
        <th>Prop 1</th>
        <th>Prop 2</th>
        <th>Prop 3</th>
    </tr>
    <tr>
        <th>Prop 1</th>
        <th>Prop 2</th>
        <th>Prop 3</th>
    </tr>
    <tr>
        <th>Prop 1</th>
        <th>Prop 2</th>
        <th>Prop 3</th>
    </tr>
    <tr>
        <th>Prop 1</th>
        <th>Prop 2</th>
        <th>Prop 3</th>
    </tr>
</table>
</div>


<script>
var slider = document.getElementById("myRange");
var output = document.getElementById("demo");
output.innerHTML = slider.value;

slider.oninput = function() {
  output.innerHTML = this.value;
}
</script>