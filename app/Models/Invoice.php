<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    protected $fillable = [
        'user_id',
        'bill_number',
        'invoice_number',
        'invoice_date',
        'invoice_amount',
        'payed_amount',
        'balance_payable',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}