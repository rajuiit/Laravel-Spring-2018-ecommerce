
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" >
    <link rel="stylesheet" type="text/css" href="{{asset('frontend/css/style.css')}}">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


    <title>E-commerce</title>






<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  {{-- <link rel="stylesheet" href="/resources/demos/style.css"> --}}
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  {{-- <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> --}}
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#tabs" ).tabs();
  } );
  </script>
    
    
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  /*border: 1px solid #dddddd;*/
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>

</head>





<body>





<div class="container-fluid">
    <div class='header_list'>
        <div class='container'>
            <ul>




                @guest
                    @if (Route::has('login'))
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                    </li>
                    
                    {{--   <li class="nav-item">
                        <a class="nav-link" href="{{ url('user/profile') }}">profile</a>
                    </li> --}}

                        @endif
                @else
                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>

                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                        </div>
                    </li>
                @endguest



                <li class="nav-item" ><a class="nav-link" href='{{ url('checkout') }}'>CartCheckout</a></li>
                <li class="nav-item"><a class="nav-link" href='{{ url('cart') }}'>My Cart</a></li>
                <li class="nav-item"><a class="nav-link" href=''>Wishlist</a></li>
                <li class="nav-item"><a class="nav-link" href='{{ url('profile') }}'>My account</a></li>
               {{--  <li class="nav-item"><a class="nav-link" href="">USD,$</a></li> --}}
            </ul>
        </div>
    </div>

 <div class="container">
    <div class='search_and_logo'>
       
            <div class="row ">
                <div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
                    <div><a href="{{ url('/') }}"><img src="{{asset('frontend/img/logo.png')}}"></a></div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-7 top-search-holder">
                    <div class="search-area">
                        <form action="{{ url('search') }}" class="search-form"  >

                            <select   disabled  >
                                {{-- name="category" --}}
                                <option  selected="selected" disabled >Search Product</option>
                                {{-- <option value="0" selected="selected">Product Category</option>
                                <option class="level-0" value="clothing">Clothing</option>
                                <option class="level-0" value="hoodies">Hoodies</option>
                                <option class="level-0" value="music">Music</option>
                                <option class="level-0" value="posters">Posters</option>
                                <option class="level-0" value="t-shirts">T-shirts</option>
                                <option class="level-0" value="albums">Albums</option>
                                <option class="level-0" value="uncategorized">Uncategorized</option> --}}
                            </select>
                            <input type="text" name="searchData" id="yog-search-form" class="search-field ui-autocomplete-input" placeholder="type here.." autocomplete="on">
                            {{-- <input type="hidden" name="post_type" value="products"> --}}
                            <button type="submit" class="search-button"></button>
                        </form>
                    </div>
                </div>
                <div class=" col-md-2">
                    <!-- col-xs-12 col-sm-12 col-md-2 animate-dropdown top-cart-row -->

                    <div class="dropdown">
                        <button class="btn btn-warning dropdown-toggle" type="button" id="about-us" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="float: right;">
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>

                          {{Cart::count()}}
                        </button>
                        @if(Cart::count()!=0)
                        <div class="dropdown-menu" aria-labelledby="about-us">
                            <a class="dropdown-item" href="{{ url('cart') }}">view cart</a>
                            <a class="dropdown-item" href='{{ url('checkout') }}'>Checkout</a>
                            
                        </div>
                        @endif
                    </div>

                </div>
            </div>

        </div>
    </div>

</div>
    {{-- nav bar --}}
    {{-- <div >
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #0F6CB2;color:#EFFFEF; margin-top:14px;">
            <div class='container'>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <li class="nav-item ">
                            <a class="nav-link" href="{{ url('/') }}">HOME <span class="sr-only">(current)</span></a>
                        </li>
@if ($categorys)
         @foreach ($categorys as $category)
      
    


                        <li class="nav-item">
                          <a class="nav-link" href="#">{{$category->category_name}}</a>
                        </li>
          @endforeach             
@endif

                       
                    </ul>
                </div>
            </div>
        </nav>
    </div>

 --}}





