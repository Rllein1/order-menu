<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class OrderController extends Controller
{
    public function order(Request $request)
    {
        foreach ($request->checkbox as $val ) {
            $product=Product::find($val);
            $orders[]=$product;
        }
        return view('receipt')->with('orders',$orders)->with('total', 0);
    }

}
