<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>select payment method</title>

  </head>
  <body>
    <h1 class="text-center text-capitalize pt-5 pb-3">select any payment method</h1>


<style type="text/css">
  a{
    /*text-decoration: none;*/
    color:black;
    text-decoration: none !important;
  }
.payment_button_style{
  background-color: #E2E7EB; border: 0px solid; border-radius: 5px;transition: 1s;text-transform: capitalize; font-size: 20px;padding: 11px 0px;
}
.payment_button_style:hover{
  background-color: #b3adad;
  color: black;
  transition: 1s;
}

</style>

      <div class="container">
        <div class="row">
          <div class="col-md-6 offset-md-3" style="border: 1px solid #E2E7EB;">
            <div style="padding: 30px;">
             <a href="{{ url('nexus') }}"> <h2 class="text-center payment_button_style">pay with nexus card </h2></a>
               <a href=""> <h2 class="text-center payment_button_style"  >pay with DBBL master card</h2></a>
               <a href=""><h2 class="text-center payment_button_style">pay with visa card</h2></a>
<hr>
               <a href=""> <h2 class="text-center payment_button_style"  >pay with bkash</h2></a>
               <a href=""> <h2 class="text-center payment_button_style">pay with rocket</h2></a>
               <a href=""> <h2 class="text-center payment_button_style"  >pay with surecash</h2></a>

            </div>
          </div>
        </div>
      </div>












    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>