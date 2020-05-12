@include('layouts.font_header')

<div style="padding-bottom: 70px;" >
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







<div class="container" style="padding-top: 70px;" >
	<div class="row">
		
		<div class="col-md-6">
			<h2>User Information</h2>
			@if($users)
			<div class="table-responsive">

			<table class="table">
				  <tr>
				    <td>Name:</td>
				    <td>Email:</td>
				    <td>Phone:</td>
 				 </tr>
  	
			@foreach($users as $user)
			
			<tr>
				<td>{{$user->name}}</td>
				
				<td>{{$user->email}}</td>
				<td>{{$user->phone}}</td>
			</tr>
			
			@endforeach
			</table>
		</div>
			@endif
		</div>

		<div class="col-md-6">
				
			<h2>All Orders</h2>
			<div class="table-responsive">
		<table class="table">
			    <thead>
			      <tr>
			        <th>order Id</th>
			        <th>total</th>
			        <th>status</th>
			        <th>order date</th>
			        <th>action</th>
			      </tr>
			    </thead>
			    <tbody>
			    	@if($orders)
			    	@foreach($orders as $order)

			      <tr>
			        <td>{{$order->id}}</td>
			        <td>{{$order->total}}</td>
			        <td class="{{$order->status=='delivered'?'text-danger':''}}">{{$order->status}}</td>
			         <td>{{$order->status=='delivered'?$order->updated_at->diffForHumans():$order->created_at->diffForHumans()}}</td>
			         <td><a class="btn btn-primary" href="{{ url('orders/details/'.$order->id) }}">details</a></td>
			      </tr>
			     @endforeach
			     @endif
			    </tbody>
		  </table>
</div>

		</div>

	</div>

</div>
    </div>
@include('layouts/font_footer')