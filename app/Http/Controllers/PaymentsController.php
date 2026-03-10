<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Payment;

class PaymentsController extends Controller
{
    public function index()
{
    $payments = Payment::with('user')
        ->orderBy('payment_date', 'desc')
        ->get();

    return view('payments.index', compact('payments'));
}

}
