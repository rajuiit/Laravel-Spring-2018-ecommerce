
@include('layouts.font_header');

@include('include.index')

<div >
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #0F6CB2;color:#EFFFEF; margin-top:14px;">
            <div class='container'>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav" style="text-transform:  uppercase;">
                        <li class="nav-item ">
                            <a class="nav-link" href="{{ url('/') }}">HOME <span class="sr-only">(current)</span></a>
                        </li>
@if ($categorys)
         @foreach ($categorys as $category)
      
    


                        <li class="nav-item">
                          <a class="nav-link" href="{{ url('product/category/'.$category->id) }}">{{$category->category_name}}</a>
                        </li>
          @endforeach             
@endif

                       
                    </ul>
                </div>
            </div>
        </nav>
    </div>





  <script>
   $(document).ready(function() {
    $("#CartMsg").hide();
    //$('#CartTotal').hide();
    @foreach($data as $product)
    $("#upCart{{$product->id}}").on('change keyup', function(){
      var newQty = $("#upCart{{$product->id}}").val();
      var rowID = $("#rowID{{$product->id}}").val();
      $.ajax({
          url:'{{url('/cart/update')}}',
          data:'rowID=' + rowID + '&newQty=' + newQty,
          type:'get',
          success:function(response){
            $("#CartMsg").show();
            console.log(response);
            $("#CartMsg").html(response);
          }
      });
    });
    @endforeach
  $('#coupon_btn').click(function(){
      var coupon_id = $('#coupon_id').val();
      //alert(coupon_id);
      $.ajax({
        url:'{{url('/checkCoupon')}}',
        data: 'code=' + coupon_id,
        success:function(res){
       // alert(res);
       $('#cartTotal').html(res);
        }
      })
  });
   
  });
  </script>










{{-- 
<h2 class="text-center">checkout page</h2> --}}


<div class="cart_page" style="padding-top:100px;">


    <div class="container"style="background-color:#FFFFFF;">

      <div class="row">



        <div class="col-md-6">





{{-- @include('include.index') --}}

<h2>Shepping address </h2>



<div id="tabs">
  <ul>
    <li><a href="#tabs-1">New Address</a></li>
    <li><a href="#tabs-2">Previous Address</a></li>
    
  </ul>
  <div id="tabs-1">
    {!! Form::open(['action'=>'CheckoutController@placeOrder','files'=>true,'method'=>'POST']) !!}

<div class="form-group">
{!! Form::label('name','Name:') !!}
{!! Form::text('name',null,['class'=>'form-control','placeholder'=>'Name', 'required']) !!}
</div>
<div class="form-group">
{!! Form::label('email','Email:') !!}
{!! Form::text('email',null,['class'=>'form-control','placeholder'=>'Email', 'required']) !!}
</div>
<div class="form-group">
{!! Form::label('phone','phone:') !!}
{!! Form::text('phone',null,['class'=>'form-control','placeholder'=>'Phone', 'required']) !!}
</div>
<div class="form-group">
{!! Form::label('city','city:') !!}
{!! Form::text('city',null,['class'=>'form-control','placeholder'=>'City', 'required']) !!}
</div>
<div class="form-group">
{!! Form::label('fullAddress','Full Address:') !!}
{!! Form::textarea('fullAddress',null,['class'=>'form-control','rows'=>'2','placeholder'=>'details of your address', 'required']) !!}
</div>

<div class="form-group">
    {!! Form::submit('Place order',['class'=>'btn btn-primary']) !!}
</div>
{!! Form::close() !!}
  </div>

{{-- shipping  address two  --}}

  <div id="tabs-2">


    @if ($ship_address)
@php
  $i=0;
@endphp
  @foreach ($ship_address as $d_address)
   
 @if ($i<1)
   
 

{!! Form::open(['action'=>'CheckoutController@placeOrder','files'=>true,'method'=>'POST']) !!}

<div class="form-group">
{!! Form::label('name','Name:') !!}
{!! Form::text('name',$d_address->name?$d_address->name:'',['class'=>'form-control','placeholder'=>'Name', 'required']) !!}
</div>
<div class="form-group">
{!! Form::label('email','Email:') !!}
{!! Form::text('email',$d_address->email?$d_address->email:'',['class'=>'form-control','placeholder'=>'Email', 'required']) !!}
</div>
<div class="form-group">
{!! Form::label('phone','phone:') !!}
{!! Form::text('phone',$d_address->phone?$d_address->phone:'',['class'=>'form-control','placeholder'=>'Phone', 'required']) !!}
</div>
<div class="form-group">
{!! Form::label('city','city:') !!}
{!! Form::text('city',$d_address->city?$d_address->city:'',['class'=>'form-control','placeholder'=>'City', 'required']) !!}
</div>
<div class="form-group">
{!! Form::label('fullAddress','Full Address:') !!}
{!! Form::textarea('fullAddress',$d_address->fullAddress?$d_address->fullAddress:'',['class'=>'form-control','rows'=>'2','placeholder'=>'details of your address', 'required']) !!}
</div>

<div class="form-group">
    {!! Form::submit('Place order',['class'=>'btn btn-primary']) !!}
</div>
{!! Form::close() !!}
@php
  $i++;
@endphp
@endif
 @endforeach
@endif
   
  </div>

</div>



          
</div>

{{-- col-md-6 --}}



         <div class="col-md-6">

          <div class="container">

        @if($data)
<div class="table-responsive">
        <table class="table text-center">
            <thead>
            <tr>
                


                <th scope="col">Image</th>
                <th scope="col">products</th>

                <th scope="col">Price</th>

                <th scope="col">Quantity</th>

                <th scope="col">Total</th>


            </tr>


            </thead>


            <tbody>


@foreach($data as $product)

            <tr>




                  <td> 

                   <img width="50" src="{{ url('product_image') }}/{{ $product->options->image}}" alt="product image">

             
               </td>

                <td>{{$product->name}}</td>

                <td>{{$product->price}}</td>

                <td>
                    
 
                     {{$product->qty}}

               
@endforeach
             </td>

                <td>{{Cart::subtotal()}}</td>

            </tr>
            </tbody>


        </table>
      </div>
@endif




        <div class="row">
         {{--    <div class="col-md-6">
                <div  class="text-left" style="padding-top:50px;padding-bottom:50px;">
                  <a href="{{ url('checkout') }}">
                    <button  class="btn btn-primary">place order</button>
                    </a>
                </div>
            </div>
 --}}

            {{-- <div class="col-md-6"> --}}
                <div  class=" text-right" style="padding-top:50px;padding-bottom:50px;">
                  <a href="{{ url('cart') }}">  <button  class="btn btn-primary ">update cart</button></a>
                </div>
            {{-- </div> --}}
        </div>

</div>
      </div>






    </div>
    </div>



</div>




{{-- footer  --}}

<div class="footer">
<div class="container">
    <div class="row " >
        <div class="col-md-3 contact_inf">
            <h1>CONTACT US</h1>
            <div class="contact"><i class="fa fa-map-marker" aria-hidden="true"></i><a href="">Diu</a></div>
            <div class="contact"><i class="fa fa-mobile" aria-hidden="true"></i><a href="">+8801762 +8801762</a></div>
            <div class="contact"><i class="fa fa-envelope-o" aria-hidden="true"></i><a href="">rabbi15-242@diu.edu.bd</a></div>



        </div>
        <div class="col-md-3 contact_inf">
            <h1>CUSTOMER SERVICE</h1>
            <div>
                <ul>
                    <li><a href="">My account</a></li>
                    <li><a href="">Wishlist</a></li>
                    <li><a href="">My cart</a></li>
                    <li><a href="">checkout</a></li>
                    <li><a href="">Login</a></li>
                </ul>
            </div>

        </div>
        <div class="col-md-3 contact_inf" >
            <h1>CORPORATION</h1>
            <div>
                <ul>
                    <li><a href="">My account</a></li>
                    <li><a href="">Wishlist</a></li>
                    <li><a href="">My cart</a></li>
                    <li><a href="">checkout</a></li>
                    <li><a href="">Login</a></li>
                </ul>
            </div>

        </div>
        <div class="col-md-3 contact_inf"  >
            <h1>WHY CHOOSE US</h1>
            <div>
                <ul>
                    <li><a href="">My account</a></li>
                    <li><a href="">Wishlist</a></li>
                    <li><a href="">My cart</a></li>
                    <li><a href="">checkout</a></li>
                    <li><a href="">Login</a></li>
                </ul>
            </div>

        </div>

    </div>


</div>

</div>