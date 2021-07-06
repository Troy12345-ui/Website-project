<!doctype html>
<title>Property Search</title>
<link href="/static/_property.css" rel="stylesheet">
<div class="home">
<form method='get'action='/'><button type='submit'><img src="/images/rpml.png" width="50"></button></form>
</div>
<div class="topstuff">
<h1>Which Property would you Like to Find.</h1>
</div>


<div class="dropdown">
<div class="sub">
<form>
    <label>Suburb
    <select id="suburb" name="suburb">
        <option value="0">Any</option>

        % suburbs = ["Manakau","Epsom","One Tree Hill","Howick","Pakurange","Henderson","Botany Downs","Glen Innes","Glendowie","Ellerslie","Papakura","St Johns","Grey Lynn","Remuera","Mt Wellington","Meadowbank","St Heliers"]
        % for i in range(len(suburbs)):
            <option value="{{i+1}}" name="{{i+2}}">{{suburbs[i]}}</option>
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

<div class="prce">
    <form>
    <label>Price</label>
    <select id="price" name="price">
    <option value="0">Any</option>
            % price = ["$50","$100","$150","Howick","Pakurange","Henderson","Botany Downs","Glen Innes","Glendowie","Ellerslie","Papakura","St Johns","Grey Lynn","Remuera","Mt Wellington","Meadowbank","St Heliers"]
        % for i in range(len(price)):
            <option value="{{i+1}}" name="{{i+2}}">{{price[i]}}±$50</option>
        %end

    </select>
    </label>
</form>
</div>
<!-- probably change this back to 1 selected variable that +_like $50 so to make it easier on me and maybe make more general ones like +_$200-->
<br>

<div class="checks">
<label class="container" for="dumb">Pets Allowed
    <input type="checkbox" class="checkers" checked="checked" id="dumb">
    <span class="checkmark"></span>
  </label>
  <label class="container" for="dumber">Garage
    <input type="checkbox" class="checkers" checked="checked" id="dumber">
    <span class="checkmark"></span>
  </label>
  <label class="container" for="dumbest">Fully Furnished
    <input type="checkbox" checked="checked"class="checkers" id="dumbest">
    <span class="checkmark"></span>
  </label>
  </div>
<br>
      <form class="search">
          <button type='submit'>Search</button>
      </form>


<br>
<div class="index">
Symbol INDEX
    🏠:Garage
    🐶:pets allowed
    🚽:No. of bathrooms
    🛌No. of bedrooms
    🪑:fully furnished
</div>
<div class='proplisting'>
<table>
    <tr>
        <th>Property listings</th>
    </tr>
        %for row in rows:
        <tr>
        %for col in row:
            <td>{{col}}</td>
    %end
</table>
</div>


