<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>  
    <div class="cont">
        <center><div style="margin-top:100px">
        <?php $i=0?>
            @foreach($orders as $order)
                <h4>{{$order->product_name}} ::P{{$order->price}}</h4>
                <?php $i += $order->price ?>
            @endforeach

            <h1 id="total">TOTAL PRICE ={{$i}}</h1>

            <h6>enter coupon code</h6>
            <input type="text" id="code"><br>
            
            <button class='btn btn-primary mt-5' onclick="code({{$i}})">SAVE ORDER</button>

        </div></center>
    </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script>
        function code(x){
            var dis =x*0.1;
            var total=x-dis;
            if($('#code').val()=='GO2018'){
                $('#total').html('TOTAL PRICE = P'+total)
            }
            else{
                alert('INVALID CODE');
                $('#total').html('TOTAL PRICE = P'+x)
            }
        }
        </script>
</body>
</html>