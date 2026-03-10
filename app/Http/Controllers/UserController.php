<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    public function index()
{
    $users = User::where('role', 'user')->get();
    return view('users.index', compact('users'));
}

public function show($id)
{
    $user = User::with('invoices')->findOrFail($id);
    return view('users.show', compact('user'));
}

public function payNow(Request $request, $id)
{
    $request->validate([
        'payment_date' => 'required|date',
        'amount' => 'required|numeric|min:1'
    ]);

    $user = User::with('invoices')->findOrFail($id);
    $amount = $request->amount;


    \App\Models\Payment::create([
        'user_id'      => $user->id,
        'payment_date' => $request->payment_date,
        'amount'       => $request->amount,
    ]);



    $invoices = $user->invoices()->orderBy('invoice_date', 'asc')->get();

    foreach ($invoices as $invoice) {

        if ($amount <= 0) break; // No amount left

        $balance = $invoice->balance_payable;

        if ($balance > 0) {

            if ($amount >= $balance) {
                // Pay full balance
                $invoice->payed_amount += $balance;
                $invoice->balance_payable = 0;
                $amount -= $balance;
            } else {
                // Partial payment
                $invoice->payed_amount += $amount;
                $invoice->balance_payable -= $amount;
                $amount = 0;
            }

            $invoice->save();
        }
    }

    return redirect()->back()->with('success', 'Payment updated successfully!');
}

}
