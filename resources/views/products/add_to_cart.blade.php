@include('layouts.font_header')



<div >
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #0F6CB2;color:#EFFFEF; margin-top:14px;">
            <div class='container'>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav" style="text-transform:  uppercase;">
                        <li class="nav-item " >
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





<div class="add_to_cart" style="background-color:#F3F3F3" >

    <div class="container" style="padding-top:70px; ">

        <div class="row">

            <div class="col-md-3">


                <div>

                    <div class="hot_deals">
                        <h5>HOT DEALS</h5>
                        <hr>
                        <img src="{{asset('frontend/img/g1.jpg')}}" class="d-block w-100" alt="...">

                        <p><a href="index.html">Floral Print Buttoned <br>$400</a> </p>
                        <button type="button" class="btn cut_btn" ><i  class="fa fa-shopping-cart" aria-hidden="true"></i></button><button type="button" class="btn succ" >Add to cart</button>

                    </div>


                </div>


            </div>


@if($products)



            <div class="col-md-9"  >
                <div class="container" style="background-color:#FFFFFF; padding-top:20px;padding-bottom:50px;">



                 


                    <div class="row">
  
                        <div class="col-md-5">

                            <div class="product_image">

                                <img width="300" src="{{ url('') }}/product_image/{{$products->product_photo}}" alt="product_image">
                              



                            </div>

                        </div>

                        <div class="col-md-7">

                            <h1 style="padding-bottom:20px;">{{$products->title}}</h1>

                            <hr>

                            <p style="padding-bottom:20px;">{{$products->description}}</p>


                            <hr>
                            <p style="color: red;"><strong>Discount: <del class="">{{$products->discount_price}}</del> </strong>TK</p>
                            <h3 style="color:#FF7878; padding-bottom:20px;"><strong>price:</strong>{{$products->price}}Tk</h3>

                            <hr>

                            <div class="row" style="padding-bottom:20px;">

                                <div class="col-md-4">

                                   
                                   <a href="{{ url('cart/add')}}/{{$products->id}}"> <button class="btn btn-primary">Add to cart</button></a>


                                </div>

{{-- 
{!! Form::model($products,array(['action'=>['cartController@addItem',$products->id],'files'=>true,'method'=>'PATCH'])) !!} --}}


{{-- <form action="{{ URL::route('createComment', array('id'=>$post->id))}}" method="POST">
                             {{csrf_token()}} --}}
                                <div class="col-md-4">





{{-- 
                           <div class="form-group">
                                {!! Form::label('product_quantity','Is Active:') !!}

                                {!! Form::select('product_quantity',array('1'=>'1','2' =>'2','3' =>'3'),null,['class'=>'form-control']) !!}

                            </div> --}}

                                   {{--  <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                                        <option selected>Choose...</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                    </select> --}}



                                </div>


                                <div class="col-md-4">
{{-- 
                                   <a href="{{ url('cart/add')}}/{{$products->id}}"> <button class="btn btn-primary">Add to cart</button></a>
 --}}

                                </div>


                               {{-- {!! Form::close() !!} --}}

                          {{--  </form> --}}

                            </div>

                            <hr>

                            <h5 style="padding-top:10px;">CATEGORY: <strong style="color:#FF7878">{{$products->product_quality}}</strong></h5>


                        </div>
                    </div>


                    
                </div>


            </div>

            @endif


        </div>


    </div>

</div>
@include('layouts/font_footer')